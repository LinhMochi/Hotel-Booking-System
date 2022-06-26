/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Hotel;
import Model.HotelLikeLog;
import Model.HotelLikeLogList;
import Model.Search;
import Model.SearchingResult;
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
public class HotelLikeLogDAO {
    private Connection conn = new DBcontext().getConnection();;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<HotelLikeLog> loglist;

    public HotelLikeLogDAO() {
        
    }
    
    public int getNoLikeHotel(int id){// get no like of hotel
        sql = "SELECT hotelId, count(id) as noLike FROM HotelLikeLog group by hotelId";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()) return rs.getInt(2);
        } catch (SQLException ex) {
            
        }
        return 0;
    }
    
    public HotelLikeLogList getHotelLikeLogByHotelId(int hotelId){// lay list hotel like log by hotel id 
        loglist = new ArrayList<>();
        sql ="SELECT id, status, userId, hotelId FROM HotelLikeLog WHERE hotelId = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            rs = ps.executeQuery();
            while(rs.next()){
                loglist.add(new HotelLikeLog(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4)));
            }
            
        } catch (SQLException ex) {
            
        }
        return new HotelLikeLogList(loglist);
    }
    
    public HotelLikeLogList getHotelLikeLogByListHotelId(ArrayList<Integer> listHotel){// get list like log of hotels
        loglist = new ArrayList<>();
        for(int hotelId:listHotel){
            try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            rs = ps.executeQuery();
            while(rs.next()){
                loglist.add(new HotelLikeLog(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4)));
            }            
            } catch (SQLException ex) {

            }
        }
        return new HotelLikeLogList(loglist);
    }
    
    
    public int getNoHotelLike(int id){ // get no like hotel of user
        sql = "SELECT userId, count(id) as noLike FROM HotelLikeLog group by userId";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if(rs.next()) return rs.getInt(2);
        } catch (SQLException ex) {
            
        }
        return 0;
    }
    
    public ArrayList<Hotel> getLikeHotelList(int id){// get list hotel like of an customer
        ArrayList<Hotel> list = new ArrayList<Hotel>();
        sql = "WITH HotelLike AS(\n" +
        "SELECT hotelId FROM HotelLikeLog WHERE userId = ? AND [status] =1\n" +
        ")\n" +
        "SELECT Hotels.id as hotelId, Hotels.[name],Hotels.noOfStar,Hotels.[description],\n" +
        "Hotels.hotelAdvance,CONCAT(Hotels.[address],', ', Cities.city) as [address],\n" +
        "hc.category, phoneNumber, email,map FROM Hotels, HotelLike,Cities,HotelCategories hc \n" +
        "where hotels.id = HotelLike.hotelId AND Cities.id = Hotels.cityId AND Hotels.categoryId = hc.id;";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
//                list.add(new Hotel(rs.getInt(1), sql, sql, id, id, sql, sql, sql, sql, sql, id, id, sql))
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
}
