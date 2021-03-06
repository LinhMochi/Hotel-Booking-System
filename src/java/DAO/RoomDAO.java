/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Room;
import Model.Search;
import java.io.IOException;

import java.sql.Connection;
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
    private Connection conn = new DBcontext().getConnection();;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    private String query;
    ArrayList<Room> list;
    
    public Room getRoomById(int id){
        sql = "SELECT * FROM RoomTypes where id = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if(rs.next()){
                Room r = new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getDouble(5)*1000000,
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11)
                        );
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public ArrayList<Room> GetAllRoom(){
        sql = "SELECT * FROM RoomTypes";
        list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
               Room r = new Room(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getInt(4),
                       rs.getDouble(5)*1000000,
                       rs.getInt(6),
                       rs.getInt(7),
                       rs.getString(8),
                       rs.getString(9),
                       rs.getString(10),
                       rs.getInt(11));
               list.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    

    
    
    public ArrayList<Room> getRoomByHotelId(int hotelId){
        sql = "SELECT * FROM RoomTypes where hotelId = ?";
        list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            rs = ps.executeQuery();
            while(rs.next()){
               Room r = new Room(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getInt(4),
                       rs.getDouble(5)*1000000,
                       rs.getInt(6),
                       rs.getInt(7),
                       rs.getString(8),
                       rs.getString(9),
                       rs.getString(10),
                       rs.getInt(11));
               list.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public boolean addRoom(Room r){
        sql ="Insert into RoomTypes Values (?,?,?,?,?,?,?,?,?,?)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,r.getName());
            ps.setString(2,r.getImage());
            ps.setInt(3, r.getQuantity());
            ps.setDouble(4, r.getPrice()/1000000);
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
    
    
    public void removeRoom(int id) {
        query = "DELETE FROM RoomTypes WHERE id = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }
    
    
    
    
    public boolean updateRoomQuantity(int id,int quantity){
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
    
    public boolean updateRoom(Room r){
        sql = "UPDATE Roomtypes SET roomType = ?, image = ?, quantity = ?, price = ?, maxAdults = ?, maxChild=?, bed = ?, area = ?, description = ?,hotelId = ?\n"
         +"WHERE id = ?";       
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, r.getName());
            ps.setString(2, r.getImage());
            ps.setInt(3, r.getQuantity());
            ps.setDouble(4, r.getPrice()/1000000);
            ps.setInt(5, r.getMaxAdult());
            ps.setInt(6, r.getMaxChild());
            ps.setString(7, r.getBed());
            ps.setString(8, r.getArea());
            ps.setString(9, r.getDescription());
            ps.setInt(10, r.getHotelId());
            ps.setInt(11, r.getId());
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
                list.add(new Room(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),rs.getDouble(5)*1000000, rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getInt(12)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }



public ArrayList<Room> getRoom(int hotelId,String input,String page, int numOfElement) throws SQLException, IOException {
        int currentPage = Integer.parseInt(page);
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<Room> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM RoomTypes WHERE hotelId = ? and roomType like ? ORDER BY id ASC \n" +
"                                     OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY    ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            ps.setString(2, "%" + input + "%");
            ps.setInt(3, start);
            ps.setInt(4, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getInt(4),
                       rs.getDouble(5)*1000000,
                       rs.getInt(6),
                       rs.getInt(7),
                       rs.getString(8),
                       rs.getString(9),
                       rs.getString(10),
                       rs.getInt(11)));
                
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

public ArrayList<Room> searchAllRoomByName(String input,String page, int numOfElement) throws SQLException, IOException {
        int currentPage = Integer.parseInt(page);
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<Room> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM RoomTypes WHERE \n"
                    + "roomType like ? ORDER BY id ASC \n" +
"                                     OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY    ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            
            ps.setString(1, "%" + input + "%");
            ps.setInt(2, start);
            ps.setInt(3, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getInt(4),
                       rs.getDouble(5)*1000000,
                       rs.getInt(6),
                       rs.getInt(7),
                       rs.getString(8),
                       rs.getString(9),
                       rs.getString(10),
                       rs.getInt(11)));
                
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

public ArrayList<Room> searchAllRoomByHotelId(int htID,String page, int numOfElement) throws SQLException, IOException {
        int currentPage = Integer.parseInt(page);
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<Room> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM RoomTypes WHERE \n"
                    + "hotelId = ? ORDER BY id ASC \n" +
"                                     OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY    ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            
            ps.setInt(1, htID);
            ps.setInt(2, start);
            ps.setInt(3, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getInt(4),
                       rs.getDouble(5)*1000000,
                       rs.getInt(6),
                       rs.getInt(7),
                       rs.getString(8),
                       rs.getString(9),
                       rs.getString(10),
                       rs.getInt(11)));
                
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }






public ArrayList<Room> getAllRoomAllHotel(String page, int numOfElement) throws SQLException, IOException {
        int currentPage = Integer.parseInt(page);
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<Room> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM RoomTypes  ORDER BY id ASC \n" +
"                                     OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY    ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
//            ps.setInt(1, hotelId);
            ps.setInt(1, start);
            ps.setInt(2, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Room(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getInt(4),
                       rs.getDouble(5)*1000000,
                       rs.getInt(6),
                       rs.getInt(7),
                       rs.getString(8),
                       rs.getString(9),
                       rs.getString(10),
                       rs.getInt(11)));
                
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return list;
    }

      public ArrayList<Room> GetAllSearchRoom(String input){
        sql = "SELECT * FROM RoomTypes WHERE roomType like ?";
        list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
             ps.setString(1, "%" + input + "%");
            rs = ps.executeQuery();
           
            while(rs.next()){
               Room r = new Room(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getInt(4),
                       rs.getDouble(5)*1000000,
                       rs.getInt(6),
                       rs.getInt(7),
                       rs.getString(8),
                       rs.getString(9),
                       rs.getString(10),
                       rs.getInt(11));
               list.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
      
      
      
        public ArrayList<Room> GetAllSearchRoomByHotelId(String input){
        sql = "SELECT * FROM RoomTypes WHERE hotelId like ?";
        list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
             ps.setString(1, "%" + input + "%");
            rs = ps.executeQuery();
           
            while(rs.next()){
               Room r = new Room(rs.getInt(1),
                       rs.getString(2),
                       rs.getString(3),
                       rs.getInt(4),
                       rs.getDouble(5)*1000000,
                       rs.getInt(6),
                       rs.getInt(7),
                       rs.getString(8),
                       rs.getString(9),
                       rs.getString(10),
                       rs.getInt(11));
               list.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    
        
    public int countRoomByHotelId(int hotelId) {
        sql = "WITH Hotel as (SELECT * FROM Hotels where id = ?) \n"
                + "SELECT h.id, sum(rt.quantity) as countQuan FROM Hotel h left join RoomTypes rt on h.id = rt.hotelId group by h.id";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            rs = ps.executeQuery();
            if(rs.next()) return rs.getInt(2);
            
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
    

    
//    public static void main(String [] args) throws SQLException, IOException{
//     new RoomDAO().searchAllRoomByName("","1", 8).size()
//    }


}
