/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.HotelSuggestPlace;
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
public class HotelSuggestPlaceDAO {

    private Connection conn = new DBcontext().getConnection();
    ;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    
    ArrayList<HotelSuggestPlace> list;
    
    public ArrayList<HotelSuggestPlace> getHotelSuggestPlaceList() {
        list = new ArrayList<>();
        sql = "SELECT hsp.*,spc.suggestPlaceCategory FROM HotelSuggestPlaces hsp \n"
                + "inner join SuggestPlaceCategories spc ON hsp.categoryId = spc.id  ORDER BY categoryId";
        try {
            ps = conn.prepareStatement(sql);
//            ps.setInt(1, hotelId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new HotelSuggestPlace(rs.getInt(1), rs.getString(2), rs.getDouble(3), rs.getInt(4), rs.getInt(5), rs.getString(6)));
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
    
    public ArrayList<HotelSuggestPlace> getSuggestPlace(String input, String page, int numOfElement) throws SQLException, IOException {
        int currentPage = Integer.parseInt(page);
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<HotelSuggestPlace> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM HotelSuggestPlaces WHERE place like ? \n"
                    + "ORDER BY id ASC\n"
                    + "OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY  ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + input + "%");
            ps.setInt(2, start);
            ps.setInt(3, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                
                list.add(new HotelSuggestPlace(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getInt(5)
                )
            
         );
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
    
    
     public ArrayList<HotelSuggestPlace> getAllSuggestPlace(String input) {
        ArrayList<HotelSuggestPlace> list = new ArrayList<>();
        sql = "SELECT * FROM HotelSuggestPlaces WHERE place like ? ";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + input + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                
                list.add(new HotelSuggestPlace(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getInt(4),
                        rs.getInt(5)
                )
            
         );
            }
        } catch (SQLException e) {
            System.out.println("Error");
        }
        return list;
    }
     
     public void removeSuggestPlace(int id) {
        sql = "DELETE FROM HotelSuggestPlaces WHERE id = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }
     
      public boolean addSuggestPlace(HotelSuggestPlace r){
        sql ="Insert into HotelSuggestPlaces Values (?,?,?,?)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,r.getPlace());
           
            ps.setDouble(2, r.getDistance());
            
            
           ps.setInt(3, r.getHotelId());
           ps.setInt(4, r.getCategory());
           
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;// false where hotelId not exist.
    }
     
        public boolean upDateSuggestPlace(HotelSuggestPlace r){
        sql ="Update  HotelSuggestPlaces Set place = ?, distance = ?, hotelId = ?, categoryId = ? WHERE id = ? ";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1,r.getPlace());
           
            ps.setDouble(2, r.getDistance());
            
            
           ps.setInt(3, r.getHotelId());
           ps.setInt(4, r.getCategory());
           ps.setInt(5,r.getId() );
           
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return false;// false where hotelId not exist.
    }
     
     
        
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
        
     
//    public static void main(String[] args) throws SQLException, IOException {
//
////                System.out.println(new HotelSuggestPlaceDAO().getSuggestPlace("", "1", 5));
//                System.out.println(new HotelSuggestPlaceDAO().getAllSuggestPlace(""));
//    }
}
//class demo{
    
//}
