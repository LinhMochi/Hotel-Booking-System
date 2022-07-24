/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Service;
import Model.ServiceCategory;
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
 * @author pham quoc an
 */
public class ServiceCategoryDAO {

    private Connection conn = new DBcontext().getConnection();
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;

//    public ArrayList<HotelGallery> getAllGallery(){
//        ArrayList<HotelGallery> list = new ArrayList<>();
//        query = "SELECT * FROM HotelGallery";
//        try{
//            ps = conn.prepareStatement(query);
//            rs = ps.executeQuery();
//            while(rs.next()){
//                list.add(new HotelGallery(rs.getInt("id"),
//                            rs.getString("title"),
//                            rs.getString("image"),
//                            rs.getInt("hotelID")
//                ));
//            }
//        } catch (Exception e) {
//            System.out.println("Error");
//        }
//        return list; 
//    }
//    public ArrayList<HotelGallery> getGalleryByID(int hotelID){
//        ArrayList<HotelGallery> list = new ArrayList<>();
//        query = "SELECT id, title, image, hotelId FROM HotelGallery WHERE hotelId = ?";
//        try{
//            ps = conn.prepareStatement(query);
//            ps.setInt(1, hotelID);
//            rs = ps.executeQuery();
//            while(rs.next()){
//                list.add(new HotelGallery(rs.getInt("id"),
//                            rs.getString("title"),
//                            rs.getString("image"),
//                            rs.getInt("hotelID")
//                ));
//            }
//        } catch (Exception e) {
//            System.out.println("Error");
//        }
//        return list;
//    }
    public void addServiceCategory(ServiceCategory sc) {
        query = "INSERT INTO [ServiceCategories]([ServiceCategory])\n"
                + "                         VALUES(?)";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sc.getCategory());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void updateServiceCategory(int id, ServiceCategory sc) {
        query = "UPDATE ServiceCategories SET ServiceCategory = ?\n"
                + "                WHERE id = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sc.getCategory());
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void removeServiceCategory(int id) {
        query = "DELETE FROM ServiceCategories WHERE id = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    // 
    
    public ArrayList<ServiceCategory> getAllServiceCategories(String search) {
        ArrayList<ServiceCategory> list = new ArrayList<>();
        query = "SELECT * FROM ServiceCategories where ServiceCategory like '%'+?+'%'";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ServiceCategory(rs.getInt("id"),
                        rs.getString("ServiceCategory")
                ));
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return list;
    }

 
    public ArrayList<ServiceCategory> getServiceCategories(String input, String page, int numOfElement) throws SQLException, IOException {
        int currentPage = Integer.parseInt(page);
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<ServiceCategory> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM ServiceCategories \n"
                    + "WHERE ServiceCategory like ?\n"
                    + "ORDER BY id ASC \n"
                    + "OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY  ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + input + "%");
            ps.setInt(2, start);
            ps.setInt(3, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new ServiceCategory(rs.getInt("id"),
                        rs.getString("ServiceCategory")
                ));
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

    public Service getServiceByID(String id) throws Exception {
        String sql = "select * from HotelServices where  id = ?  ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Service(
                        rs.getInt("id"),
                        rs.getString("service"),                        
                        rs.getDouble("price"),
                        rs.getString("unit"),
                        rs.getString("create"),
                        rs.getDate("from"),
                        rs.getDate("to"),
                        rs.getInt("hotelId"),
                        rs.getInt("serviceCategoryId"));
            }
        } catch (SQLException ex) {
        }
        return null;
    }

    public void updateServices(Service s) throws Exception {
        String sql = "update HotelServices set service = ? , price = ?   , unit = ?   , \n"
                + "[create] = ? , [from] = ? , [to] = ? , hotelId = ? , serviceCategoryId = ? \n"
                + "where id  = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, s.getName());
            ps.setDouble(2, s.getPrice());
            ps.setString(3, s.getUnit());
            ps.setString(4, s.getCreateAt());
            ps.setDate(5, s.getFrom());
            ps.setDate(6, s.getTo());
            ps.setInt(7, s.getHotelId());
            ps.setInt(8, s.getCategory());
            ps.setInt(9, s.getId());
            ps.executeUpdate();
        } catch (SQLException ex) {
//            System.out.println();
            ex.printStackTrace();
        }
    }

//    public static void main(String[] args) throws SQLException, IOException {
//        System.out.print(new ServiceCategoryDAO().getServiceCategories("đi", "1", 3));
//    }
}
//    public static void main(String[] args) {
//        ServiceCategoryDAO sv = new ServiceCategoryDAO();
//        try {
//            ArrayList<Service> sr = sv.getServiceByID("2");
//            System.out.println(sr.size());
//        } catch (Exception ex) {
//            Logger.getLogger(demo.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//}
