/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.HotelConvenient;
import Model.HotelConvenientList;
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
public class HotelConvenientDAO {
    private Connection conn = new DBcontext().getConnection();;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<HotelConvenient> list;
    
    
    
    
    public HotelConvenientList getRatedConvenientByHotels(String hotels){
        sql = "WITH Hotel as (SELECT value FROM string_split(?,','))\n" +
        "SELECT hc.id,hc.convenient,cc.convenientCategory,cr.convenientRate,hc.hotelId,hc.convenientCategoryId \n" +
        "FROM HotelConveniences hc INNER JOIN ConvenientCategories cc on hc.convenientCategoryId = cc.id\n" +
        "INNER JOIN ConvenientRate cr on hc.id = cr.convenientId,Hotel\n" +
        "WHERE hc.hotelId = Hotel.[value]\n" +
        "ORDER BY cr.convenientRate";
        list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, hotels);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new HotelConvenient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(HotelConvenientDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return new HotelConvenientList(list);
    }
}

//class demo{
//    public static void main(String[] args) {
//        HotelConvenientList hcl = new HotelConvenientDAO().getRatedConvenientByHotels("2, ");
//        ArrayList<HotelConvenient> list = hcl.getHotelConvenient(2);
//        System.out.println(new HotelConvenientDAO().getRatedConvenientByHotels("2,").getSize(2));
//        if(list.isEmpty()) return;
//        for(HotelConvenient hc:list){
//            System.out.println(hc.toString());
//        }
//    }
//}