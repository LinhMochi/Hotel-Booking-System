/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.HotelGallery;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author pham quoc an
 */
public class HotelGalleryDAO {
    private Connection conn = new DBcontext().getConnection();
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    
    public ArrayList<HotelGallery> getAllGallery(){
        ArrayList<HotelGallery> list = new ArrayList<>();
        query = "SELECT * FROM HotelGallery";
        try{
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new HotelGallery(rs.getInt("id"),
                            rs.getString("title"),
                            rs.getString("image"),
                            rs.getInt("hotelID")
                ));
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return list; 
    }
    
    
    public ArrayList<HotelGallery> getGalleryByID(int hotelID){
        ArrayList<HotelGallery> list = new ArrayList<>();
        query = "SELECT id, title, image, hotelId FROM HotelGallery WHERE hotelId = ?";
        try{
            ps = conn.prepareStatement(query);
            ps.setInt(1, hotelID);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new HotelGallery(rs.getInt("id"),
                            rs.getString("title"),
                            rs.getString("image"),
                            rs.getInt("hotelID")
                ));
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return list;
    }
    
    public void addImage(HotelGallery h){
        query = "INSERT INTO [HotelGallery]\n" +
                    "           ([title]\n" +
                    "           ,[image]\n" +
                    "           ,[hotelId])\n" +
                    "     VALUES\n" +
                    "           (?\n" +
                    "           ,?\n" +
                    "           ,?)";
         try{
           
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, h.getTitle());
            ps.setString(2, h.getImage());
            ps.setInt(3, h.getHotelId());
            ps.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace(System.out);
            }
    }
    
    public void updateImage(int id,HotelGallery h){
        query = "UPDATE HotelGallery SET title = ?  , image = ?  , hotelId = ?\n"
                + " WHERE Id = ? ";
         try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
        
            ps.setString(1, h.getTitle());
            ps.setString(2, h.getImage());
            ps.setInt(3, h.getHotelId());
            ps.setInt(4, id);
            ps.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace(System.out);
            }
    }
    
    public void removeImage(int id){
        query = "DELETE FROM HotelGallery WHERE id = ?";
         try{
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);         
            ps.setInt(1, id);
            ps.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace(System.out);
            }
    }
    
    
    
    
}

//class demo{
//    public static void main(String[] args) {
//         for(HotelGallery hg: new HotelGalleryDAO().getGalleryByID(2)){
//             System.out.println(hg.toString());
//         }
//    }
//}
