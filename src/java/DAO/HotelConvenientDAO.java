package DAO;

import DBcontext.DBcontext;
import Model.Convenients;
import Model.HotelConvenient;
import Model.User;
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
public class HotelConvenientDAO {

    private Connection conn = new DBcontext().getConnection();
    ;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<HotelConvenient> list;

//    public ArrayList<HotelConvenient> getRateConveniences(int hotelId) {
//        list = new ArrayList<>();
//        sql = "SELECT hc.id, hc.convenient,cc.convenientCategory, cr.convenientRate, hc.hotelId, hc.convenientCategoryId "
//                + "FROM HotelConveniences hc inner join ConvenientRate cr ON hc.id = cr.convenientId\n"
//                + "inner join ConvenientCategories cc on hc.convenientCategoryId = cc.id\n"
//                + "WHERE hc.hotelId = ? ORDER BY convenientRate asc";
//        try {
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, hotelId);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new HotelConvenient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6)));
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//
//        return list;
//    }
//    public ArrayList<HotelConvenient> getHotelConveniences(int hotelId) {
//        list = new ArrayList<>();
//        sql = "SELECT hc.id, hc.convenient,cc.convenientCategory,isnull(cr.convenientRate,999) as convenientRate, hc.hotelId, hc.convenientCategoryId FROM HotelConveniences hc left join ConvenientRate cr on hc.id = cr.convenientId\n"
//                + "inner join ConvenientCategories cc on hc.convenientCategoryId = cc.id\n"
//                + "WHERE hc.hotelId = ? ORDER BY hc.convenientCategoryId asc";
//        try {
//            ps = conn.prepareStatement(sql);
//            ps.setInt(1, hotelId);
//            rs = ps.executeQuery();
//            while(rs.next()){
//                list.add(new HotelConvenient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6)));
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return list;
//    }
//    public HotelConvenientList getRatedConvenientByHotels(String hotels) {
//        sql = "WITH Hotel as (SELECT value FROM string_split(?,','))\n"
//                + "SELECT hc.id,hc.convenient,cc.convenientCategory,cr.convenientRate,hc.hotelId,hc.convenientCategoryId \n"
//                + "FROM HotelConveniences hc INNER JOIN ConvenientCategories cc on hc.convenientCategoryId = cc.id\n"
//                + "INNER JOIN ConvenientRate cr on hc.id = cr.convenientId,Hotel\n"
//                + "WHERE hc.hotelId = Hotel.[value]\n"
//                + "ORDER BY cr.convenientRate asc";
//        list = new ArrayList<>();
//        try {
//            ps = conn.prepareStatement(sql);
//            ps.setString(1, hotels);
//            rs = ps.executeQuery();
//            while (rs.next()) {
//                list.add(new HotelConvenient(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6)));
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(HotelConvenientDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return new HotelConvenientList(list);
//    }
    public int create_Convient(HotelConvenient hotel) {
        int idValue =0;
        try {
            String sql = "INSERT INTO HotelConveniences(convenient, hotelId, convenientCategoryId)\n"
                    + " VALUES ( "
                    + " ?,"
                    + " ?,"
                    + " ? );";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, hotel.getConvenient());
            ps.setInt(2, hotel.getHotelId());
            ps.setInt(3, hotel.getCategoryId());

            ps.executeUpdate();

            ResultSet rs = ps.getGeneratedKeys();

            idValue = rs.getInt("id");;

        } catch (SQLException e) {
        }

        return idValue;
    }

    public int create_ConvientRate(HotelConvenient con) {
        try {
            String sql = "INSERT INTO ConvenientRate(convenientId, convenientRate, hotelId)\n"
                    + " VALUES ("
                    + "?,"
                    + "?,"
                    + "?);";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, con.getId());
            ps.setInt(2, con.getRate());
            ps.setInt(3, con.getHotelId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }

        return 0;
    }

    public int create_ConvientCate(HotelConvenient con) {
        try {
            String sql = "INSERT INTO ConvenientCategories(convenientCategory)\n"
                    + " VALUES ("
                    + "?);";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, con.getConvenient());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }

        return 0;
    }

    public User getUserInfoById(int id) throws SQLException, IOException {
        String sql = "select id from HotelConveniences where hotelId = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            User u = new User();
            u.setId(rs.getInt("id"));
            return u;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public User getHotel(int id) throws SQLException, IOException {
        String sql = "SELECT * FROM HotelCategories";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setFullName(rs.getString("fullName"));
                u.setGender(rs.getInt("gender"));
                u.setDob(rs.getDate("dob"));
                u.setEmail(rs.getString("email"));
                u.setAddress(rs.getString("address"));
                u.setAvatar(rs.getString("avatar"));
                u.setPhoneNumber(rs.getString("phoneNumber"));
                u.setRole(rs.getString("role"));
                u.setStatus(rs.getString("status"));
                return u;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public int idConvenient(){
        int conId = 0;
            try {
            String sql = "SELECT Max(id) as LastID FROM HotelConveniences";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                conId = rs.getInt("LastID");
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }

        return conId;
    }

}
