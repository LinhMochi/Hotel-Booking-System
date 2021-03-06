/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.HotelCategory;
import static com.sun.corba.se.impl.util.Utility.printStackTrace;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 * GIO CAN FIX O DAU
 * TÔI CẦN FIX THANG ADD HOTEL VÀ UPDATE
 */
public class HotelCategoryDAO {
    private Connection conn = new DBcontext().getConnection();;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<HotelCategory> list;
   
    
//    public static void main(String[] args) {
//        new HotelCategoryDAO().deleteHotelCategory(1);
//    }
    // get list hotel category
       public ArrayList<HotelCategory> getAllHotelCategories() {
        ArrayList<HotelCategory> list = new ArrayList<>();
        sql = "SELECT * FROM HotelCategories";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new HotelCategory(rs.getInt("id"), rs.getString("category"), rs.getString("image")
                ));
            }
        } catch (Exception e) {
            System.out.println("Loi");
        }
        return list;
    }

    public ArrayList<HotelCategory> getHotelCategoriesByPage(String page) {
        int start = Integer.parseInt(page) * 5 - 5;
        ArrayList<HotelCategory> list = new ArrayList<>();
        sql = "SELECT * FROM HotelCategories\n"
                + "                ORDER BY ID ASC\n"
                + "                OFFSET ? ROWS FETCH NEXT 5 ROW ONLY";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, start);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new HotelCategory(rs.getInt("id"), rs.getString("category"), rs.getString("image")
                ));
            }
        } catch (Exception e) {
            printStackTrace();
        }
        return list;
    }

    public void addHotelCategory(String cateogry, String image) {
        sql = "insert into HotelCategories values (  ? , ? )  ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, cateogry);
            ps.setString(2, image);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Loi");
        }

    }

    public void editHotelCategory(String cateogry, String image, int id) {
        sql = "update HotelCategories set category = ?  , image = ? where  id = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, cateogry);
            ps.setString(2, image);
            ps.setInt(3, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Loi");
        }

    }
    
     public void deleteHotelCategory( int id) {
        sql = "delete from HotelCategories  where  id = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Loi");
        }

    }

    public HotelCategory getHotelCategoryByID(int id) {
        sql = "SELECT * FROM HotelCategories where id = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new HotelCategory(rs.getInt("id"), rs.getString("category"), rs.getString("image"));

            }
        } catch (Exception e) {
            System.out.println("Loi");
        }
        return null;
    }

    
    
    
    
    
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