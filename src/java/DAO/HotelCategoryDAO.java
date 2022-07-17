/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.HotelCategory;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class HotelCategoryDAO {
    private Connection conn = new DBcontext().getConnection();;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<HotelCategory> list;
    public HotelCategoryDAO() {
    }
    
    // get list hotel category
    
    public ArrayList<HotelCategory> getListHotelCategory(){
        list = new ArrayList<>();
        sql = "SELECT id, category FROM HotelCategories";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                HotelCategory hc = new HotelCategory();
                hc.setId(rs.getInt(1));
                hc.setCategory(rs.getString(2));
                list.add(hc);
            }
        } catch (SQLException ex) {
            
        }
        return list;
    }
    
    // get list completely hotel category 
    
    public ArrayList<HotelCategory> getListCompleteHotelCategory(){
        list = new ArrayList<>();
        sql =   "WITH countHotel AS(\n" +
                "SELECT hc.id, count(h.id) as noHotel FROM HotelCategories hc LEFT JOIN \n" +
                "(SELECT * FROM Hotels WHERE Hotels.[status]='Active') as h ON hc.id = h.categoryId\n" +
                "GROUP BY hc.id)\n" +
                "SELECT TOP 5 hc.id,hc.category,hc.[image],c.noHotel FROM HotelCategories hc, CountHotel c WHERE hc.id = c.id\n" +
                "Order by noHotel DESC";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                HotelCategory hc = new HotelCategory();
                hc.setId(rs.getInt(1));
                hc.setCategory(rs.getString(2));
                hc.setImage(rs.getString(3));
                hc.setNoHotel(rs.getByte(4));
                list.add(hc);
            }
        } catch (SQLException ex) {
            
        }
        return list;
    }
    
}

//    class demo{
//        public static void main(String[] args) {
//            ArrayList<HotelCategory> list = new HotelCategoryDAO().getListCompleteHotelCategory();
//            for(HotelCategory hc : list){
//                System.out.println(hc.toString());
//            }
//        }
//    }  