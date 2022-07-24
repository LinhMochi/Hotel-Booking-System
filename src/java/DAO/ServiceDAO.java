/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Service;
import Model.ServiceCategory;
import Model.SubTime;
import java.sql.Connection;
import java.sql.Date;
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

    public ArrayList<Service> getServiceByID(String id) {
//        String sql = "select * from HotelServices where  hotelId = ?  ";

        ArrayList<Service> list = new ArrayList<>();
        String sql = " Select hs.*, sc.ServiceCategory from HotelServices hs inner join ServiceCategories sc on hs.serviceCategoryId = sc.id where [hotelId] =?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                //int id, String name, double price, String unit, String createAt, Date from, Date to, int category, int hotelId, String servicrCategory
                list.add(new Service(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getDate(6),
                        rs.getDate(7),
                        rs.getInt(8),
                        rs.getInt(9),
                        rs.getString(10)
                ));
//                int id, String name, double price, String unit, String createAt, Date from, Date to, int hotelId, int category
            }
        } catch (SQLException ex) {
        }
        return list;
    }

    public ArrayList<ServiceCategory> getAllServiceCategory() {
        ArrayList<ServiceCategory> list = new ArrayList<ServiceCategory>();
        sql = "Select *from ServiceCategories";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new ServiceCategory(rs.getInt(1),
                        rs.getString(2)
                ));
            }
        } catch (Exception e) {
            System.out.println("Loi");
        }
        return list;
    }

    public void AddHotelService(Service service, int HotelId) {
        try {
            sql = "INSERT INTO HotelServices VALUES(?,?,?,?,?,?,?,?)";

            ps = conn.prepareStatement(sql);
            ps.setString(1, service.getName());
            ps.setDouble(2, service.getPrice() / 1000000);
            ps.setString(3, service.getUnit());
            //from model Subtime 
            ps.setString(4, new SubTime().getCurrent());
            ps.setDate(5, service.getFrom());
            ps.setDate(6, service.getTo());
            ps.setInt(7, HotelId);
            ps.setInt(8, service.getCategory());

            //String name, double price, String unit, String createAt, Date from, Date to, int category, int hotelId, String servicrCategory
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void updateServices(Service s, int HotelId) {
        String sql = "update HotelServices set service = ? , price = ?   , unit = ? , \n"
                + "[from] = ? , [to] = ? ,serviceCategoryId = ? \n"
                + "where id  = ? ";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, s.getName());
            ps.setDouble(2, s.getPrice());
            ps.setString(3, s.getUnit());
            ps.setDate(4, s.getFrom());
            ps.setDate(5, s.getTo());
            ps.setInt(6, HotelId);
            ps.setInt(7, s.getCategory());
            ps.setInt(8, s.getId());
            ps.executeUpdate();
        } catch (SQLException ex) {
//            System.out.println();
            ex.printStackTrace();
        }
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
