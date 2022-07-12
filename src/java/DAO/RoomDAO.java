/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Room;
import Model.Search;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class RoomDAO {

    private Connection conn = new DBcontext().getConnection();
    ;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<Room> list;

    public Room getRoomById(int id) {
        sql = "SELECT * FROM RoomTypes where id = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                Room r = new Room(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getInt(12));
            }

        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<Room> getRoomByHotelId(int hotelId) {
        sql = "SELECT * FROM RoomTypes where hotelId = ?";
        list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            rs = ps.executeQuery();
            while (rs.next()) {
                Room r = new Room(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getDouble(5), rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getInt(12));
                list.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public boolean addRoom(Room r) {
        sql = "Insert into RoomTypes Values (?,?,?,?,?,?,?,?,?,?,null)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, r.getName());
            ps.setString(2, r.getImage());
            ps.setInt(3, r.getQuantity());
            ps.setDouble(4, r.getPrice());
            ps.setInt(5, r.getMaxAdult());
            ps.setInt(6, r.getMaxChild());
            ps.setString(7, r.getBed());
            ps.setString(8, r.getArea());
            ps.setString(9, r.getDescription());
            ps.setInt(10, r.getHotelId());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return false;// false where hotelId not exist.
    }

    public boolean updateRoomQuantity(int id, int quantity) {
        sql = "UPDATE Roomtypes SET quantity = ? where id = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, quantity);
            ps.setInt(2, id);
            rs = ps.executeQuery();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    public boolean updateRoom(Room r) {
        sql = "UPDATE Roomtypes SET roomType = ?, image = ?, quantity = ?, price = ?, maxAdults = ?, maxChild=?, bed = ?, area = ?, desciption=?,hotelId=?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, r.getName());
            ps.setString(2, r.getImage());
            ps.setInt(3, r.getQuantity());
            ps.setDouble(4, r.getPrice());
            ps.setInt(5, r.getMaxAdult());
            ps.setInt(6, r.getMaxChild());
            ps.setString(7, r.getBed());
            ps.setString(8, r.getArea());
            ps.setString(9, r.getDescription());
            ps.setInt(10, r.getHotelId());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

//    public boolean deleteRoom(int id){
//        
//    }
//    public ArrayList<Room> getCheapestRoom(ArrayList<Integer> hotelId){
//        sql = "";
//        list = new ArrayList<>();
//        for(int id: hotelId){
//            
//        }
//        
//    }
    // get available room hotelId, arrival, department
    public ArrayList<Room> getAvailableRoom(int hotelId, Search s) {
        list = new ArrayList<>();
        sql = "WITH BookedRoomOfHotel AS(SELECT * FROM Reservations WHERE hotelId = ?), \n"
                + "BookedRooms AS(SELECT rr.roomId,SUM(rr.quantity) as booked FROM ReservationRoom rr, BookedRoomOfHotel r\n"
                + "WHERE r.id = rr.reservationId AND r.[status] <> 'Cancel' AND ((arrival > ? AND arrival < ?)\n"
                + "OR(department>? AND department<?)OR (arrival>= ? AND department<= ?))\n"
                + "GROUP BY roomId\n"
                + "),AvailableRooms AS(SELECT id,roomType,[image],(quantity-isnull(booked,0)) as available\n"
                + ",price,maxAdults,maxChild,bed,area,[description],hotelId \n"
                + "FROM RoomTypes rt left join BookedRooms br on rt.id = br.roomId WHERE rt.hotelId = ?),\n"
                + "CurrentPromotion AS (SELECT rp.* FROM HotelPromotions hp \n"
                + "inner join RoomPromotion rp on hp.id = rp.promotionid WHERE hp.hotelId = ? AND hp.[from]<= ? AND hp.[to]>=?)\n"
                + "SELECT ar.* , isnull(cp.promotionid, 0) as promotionId FROM AvailableRooms ar left join CurrentPromotion cp \n"
                + "on ar.id = cp.roomid WHERE available>=0 AND (maxAdults+maxChild)>=? \n"
                + "ORDER BY price asc,(maxAdults+maxChild) asc";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            ps.setDate(2, s.getArrival());
            ps.setDate(3, s.getDepartment());
            ps.setDate(4, s.getArrival());
            ps.setDate(5, s.getDepartment());
            ps.setDate(6, s.getArrival());
            ps.setDate(7, s.getDepartment());
            ps.setInt(8, hotelId);
            ps.setInt(9, hotelId);
            ps.setDate(10, s.getArrival());
            ps.setDate(11, s.getDepartment());
            ps.setInt(12, (s.getNoAdult() + s.getNoChild()) / s.getNoRoom());
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),rs.getDouble(5), rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getInt(12)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }
}

//class demo {
//    public static void main(String[] args) {
//        ArrayList<Room> list = new RoomDAO().getAvailableRoom(2, new Search("", Date.valueOf("2022-07-30"), Date.valueOf("2022-08-04"), 2, 1, 1));
//        for(Room r : list){
//            System.out.println(r.toString());
//        }
//    }
//}
