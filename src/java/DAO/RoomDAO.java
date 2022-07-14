/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Room;

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
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getInt(12));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
      public ArrayList<Room> GetAllRoom(){
        ArrayList<Room> list = new ArrayList<>();
        sql = "SELECT * FROM RoomTypes";
        try {
            ps = conn.prepareStatement(sql);
            
            rs = ps.executeQuery();
            if(rs.next()){
                Room r = new Room(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getDouble(5),
                        rs.getInt(6),
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getInt(11),
                        rs.getInt(12));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
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
                       rs.getDouble(5),
                       rs.getInt(6),
                       rs.getInt(7),
                       rs.getString(8),
                       rs.getString(9),
                       rs.getString(10),
                       rs.getInt(11),
                       rs.getInt(12));
               list.add(r);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public boolean addRoom(Room r){
        sql ="Insert into RoomTypes Values (?,?,?,?,?,?,?,?,?,?,null)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,r.getName());
            ps.setString(2,r.getImage());
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
}
