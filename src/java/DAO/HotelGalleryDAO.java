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
import java.util.ArrayList;

/**
 *
 * @author pham quoc an
 */
public class HotelGalleryDAO {
    private Connection conn = new DBcontext().getConnection();
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;
    
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
}
