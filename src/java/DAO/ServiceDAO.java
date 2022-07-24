/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Service;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class ServiceDAO {

    private final Connection conn = new DBcontext().getConnection();
    ;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<Service> list;

    public ArrayList<Service> getAvailableService(int hotelId, Date arrival, Date department) {
        list = new ArrayList<>();
        sql = "SELECT  id, [service], [from],[to], price, unit, [create],serviceCategoryId,hotelId "
                + "FROM HotelServices WHERE [from] <= ? AND [to] >= ? AND hotelId = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setDate(1, arrival);
            ps.setDate(2, department);
            ps.setInt(3, hotelId);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Service(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), 0, rs.getDouble(5) * 100000, rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9)));
            }
        } catch (Exception ex) {
            return null;
        }
        return list;
    }

    public Service getService(int id, Date arrival, Date department) {

        sql = "SELECT  id, [service], [from],[to], price, unit, [create],serviceCategoryId,hotelId "
                + "FROM HotelServices WHERE [from] <= ? AND [to] >= ? AND id = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setDate(1, arrival);
            ps.setDate(2, department);
            ps.setInt(3, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                return new Service(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), 0, rs.getDouble(5) * 100000, rs.getString(6), rs.getString(7), rs.getInt(8), rs.getInt(9));
            }
        } catch (Exception ex) {
            return null;
        }
        return null;
    }

    public int countServiceByCategoryId(int id) {
        int count = 0;
        sql = "SELECT  id, [service], [from],[to], price, unit, [create],serviceCategoryId,hotelId\n"
                + "FROM HotelServices WHERE serviceCategoryId = ?";
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

    public ArrayList<Service> getBookedService(int reId) {
        ArrayList<Service> blist = new ArrayList<Service>();

        sql = "WITH bookedService as (SELECT * FROM ReservationService WHERE reservationId = ?)\n"
                + "SELECT rs.*,hs.service,hs.unit FROM bookedService rs inner join [HotelServices] hs on rs.serviceId = hs.id ";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, reId);

            rs = ps.executeQuery();
            while(rs.next()){
                 blist.add(new Service(rs.getInt(5),rs.getString(6),rs.getInt(3),rs.getDouble(2)*1000000, rs.getString(7)));
            }
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }

        return blist;
    }
}

//class demo {
//    public static void main(String[] args) {
//        ArrayList<Service> list = new ServiceDAO().getBookedService(20);
//        for(Service s : list){
//            System.out.println(s.toString());
//        }
////            System.out.println(new ServiceDAO().getService(6, Date.valueOf("2022-07-28"), Date.valueOf("2022-08-04")).toString());
//    }
//}
