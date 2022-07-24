/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.HotelSuggestPlace;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class HotelSuggestPlaceDAO {
    private Connection conn = new DBcontext().getConnection();;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    
    ArrayList<HotelSuggestPlace> list;
    
    public ArrayList<HotelSuggestPlace> getHotelSuggestPlaceList(int hotelId){
        list = new ArrayList<>();
        sql = "SELECT hsp.*,spc.suggestPlaceCategory FROM HotelSuggestPlaces hsp \n" +
"inner join SuggestPlaceCategories spc ON hsp.categoryId = spc.id WHERE hsp.hotelId = ? ORDER BY categoryId";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new HotelSuggestPlace(rs.getInt(1),rs.getString(2),rs.getDouble(3),rs.getInt(4),rs.getInt(5),rs.getString(6)));
            }
        } catch (Exception ex) {
            System.out.println("Eror get hotel suggest place list");
        }
        return list;
    }
    
    
    public int countSuggestPlaceByCategoryId(int id) {
        int count = 0;
        sql = "SELECT * FROM HotelSuggestPlaces WHERE categoryId = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                count++;
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return count;
    }
            
}
//class demo{
//    public static void main(String[] args) {
//        for(HotelSuggestPlace sp : new HotelSuggestPlaceDAO().getHotelSuggestPlaceList(2)){
//            System.out.println(sp.toString());
//        }
//    }
//}
