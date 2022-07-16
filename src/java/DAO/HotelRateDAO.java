/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.HotelRate;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class HotelRateDAO {

    private final Connection conn = new DBcontext().getConnection();
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<HotelRate> list;

    public ArrayList<HotelRate> getHotelRate(int hotelId, int page) {
        list = new ArrayList<>();
        int numOfElement = 5;
        int start = numOfElement * page - numOfElement;
        sql = "SELECT hr.*, Users.id as userId, Users.fullName, Users.avatar,r.noOfAdults,r.noOfChild,r.noOfRoom "
                + "FROM Reservations r inner join HotelRating hr on r.id = hr.reservationId \n"
                + "inner join Users on r.userId = Users.id WHERE r.hotelId = ? "
                + "ORDER BY rateAt desc OFFSET ? ROWS FETCH NEXT ? ROW ONLY";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            ps.setInt(2, start);
            ps.setInt(3, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new HotelRate(rs.getInt(1), rs.getDouble(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getInt(6), rs.getString(7), rs.getString(8), rs.getInt(9), rs.getInt(10), rs.getInt(11)));
            }
        } catch (Exception ex) {
            System.out.println("Errorr");
        }
        return list;
    }
}

//class demo {
//
//    public static void main(String[] args) {
//        ArrayList<HotelRate> list = new HotelRateDAO().getHotelRate(2, 1);
//        for (HotelRate hr : list) {
//            System.out.println(hr.toString());
//        }
//    }
//}
