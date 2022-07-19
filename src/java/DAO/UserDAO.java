/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.User;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Linh
 */
public class UserDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public User getUserByMail(String email) {
        try {
            String sql = "SELECT * FROM Users where email =?";// select * de lay het data 
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));

            }

        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public User checkLogin(String email, String password) {
        try {
            String sql = "SELECT * FROM Users where email =? and password =?";// select * de lay het data 
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11));

            }

        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public User checkStatusAndRole(String email) {
        User user = null;
        try {
            String sql = "SELECT role, status FROM Users where email =? ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new User(
                        rs.getString(1),
                        rs.getString(2));

            }

        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return user;
    }

    public ArrayList<User> getUsers() {
        ArrayList<User> ar = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Users ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setFullName(rs.getString("fullName"));
                u.setGender(rs.getInt("gender"));
                u.setDob(rs.getDate("dob"));
                u.setEmail(rs.getString("email"));
                u.setAddress(rs.getString("address"));
                u.setAvatar(rs.getString("avatar"));
                u.setPhoneNumber(rs.getString("phoneNumber"));
                u.setPassword(rs.getString("password"));
                u.setRole(rs.getString("role"));
                u.setStatus(rs.getString("status"));
                ar.add(u);
            }
        } catch (SQLException e) {
        }
        return ar;
    }
    
    public void updateUserInfo(String email, User user) {
        String sql = "UPDATE Users SET fullName = ? , gender = ? , dob = ? , address = ? , phoneNumber = ? where email = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, user.getFullName());
            ps.setInt(2, user.getGender());
            ps.setDate(3, user.getDob());
            ps.setString(4, user.getAddress());
            ps.setString(5, user.getPhoneNumber());
            ps.setString(6, email);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public boolean checkEmail(String email) {
        ArrayList<User> array = getUsers();
        int check = 0;
        for (User u : array) {
            if (u.getEmail().equals(email)) {
                check = 1;
                break;
            }
        }
        return check == 0;
    }

    public void createUser(User user) {
        ArrayList<User> array = getUsers();
        int check = 0;
        for (User u : array) {
            if (u.getEmail().equals(user.getEmail())) {
                check = 1;
                break;
            }
        }
        if (check == 0) {
            try {
                String sql = "INSERT INTO Users (fullName, gender, dob, email, address, avatar, phoneNumber, password, role, status)\n"
                        + " VALUES ("
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?);";
                conn = new DBcontext().getConnection();
                ps = conn.prepareStatement(sql);
                ps.setString(1, user.getFullName());
                ps.setInt(2, user.getGender());
                ps.setDate(3, user.getDob());
                ps.setString(4, user.getEmail());
                ps.setString(5, user.getAddress());
                ps.setString(6, user.getAvatar());
                ps.setString(7, user.getPhoneNumber());
                ps.setString(8, user.getPassword());
                ps.setString(9, "Customer");
                ps.setString(10, "Active");
                ps.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace(System.out);
            }
        } else {
            System.out.println("This email has already existed!");
        }
    }

    public int create_User(User user) {
        if (!checkEmail(user.getEmail())) {
            return 1;
        } else {
            try {
                String sql = "INSERT INTO Users (fullName, gender, dob, email, address, avatar, phoneNumber, password, role, status)\n"
                        + " VALUES ("
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?,"
                        + "?);";
                conn = new DBcontext().getConnection();
                ps = conn.prepareStatement(sql);
                ps.setString(1, user.getFullName());
                ps.setInt(2, user.getGender());
                ps.setDate(3, user.getDob());
                ps.setString(4, user.getEmail());
                ps.setString(5, user.getAddress());
                ps.setString(6, user.getAvatar());
                ps.setString(7, user.getPhoneNumber());
                ps.setString(8, user.getPassword());
                ps.setString(9, user.getRole());
                ps.setString(10, user.getStatus());
                ps.executeUpdate();
            } catch (SQLException e) {
                e.printStackTrace(System.out);
            }
        }
        return 0;
    }

    public User getUserInfoById(int id) throws SQLException, IOException {
        String sql = "SELECT * FROM Users where id = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
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

    public List<User> getUserFullNameAndId() throws SQLException, IOException {
        List<User> list = new ArrayList<>();
        String sql = "select id, fullName from Users";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setFullName(rs.getString("fullName"));
                list.add(u);
            }
        } catch (SQLException e) {
        }
        return list;
    }

     public User checkUserExist(String Email) {
        try {
            String sql = "select * from Users\n"
                    + "where Email = ?";
           conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            if (rs.next()) {
                User a = new User();
                a.setId(rs.getInt(1));
                a.setEmail(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setRole(rs.getString(4));
                return a;
            }
        }catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
     
         public void manageAccount(int aid, String update, int option) {
        PreparedStatement ps;
        String sql = null;
        try {
            switch (option) {
                case 1:
                    sql = "update Users\n"
                            + "set Email = ?\n"
                            + "where ID = ?";
                    break;
                case 2:
                    sql = "update Users\n"
                            + "set Password = ?\n"
                            + "where ID = ?";
                    break;
            }
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            
            ps.setString(1, update);
            ps.setInt(2, aid);
            ps.executeUpdate();
        }catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
     
     
    
    public int countUser() {
        int count = 0;
        String sql = "select count(*) from Users";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return count;
    }

    public void updateUserPassword(String email, String newpass) {
        String query = "Update Users set password = ? where email = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, newpass);
            ps.setString(2, email);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateUserStatus(int id, String status) {
        String query = "Update Users set status = ? where id = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, status);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateUserRole(int id, String role) {
        String query = "Update Users set role = ? where email = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, role);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteUser(String id) {
        try {
            String sql = "Delete FROM Users where id = ?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();

        } catch (SQLException e) {
        }
    }

    public ArrayList<User> getUserFromTo(int index, int numberMovieEachPage) {
        // range of orders will get
        int stopIndexMovie = index * numberMovieEachPage;
        int startIndexMovie = stopIndexMovie - (numberMovieEachPage - 1);

        ArrayList<User> list = new ArrayList<>();
        String sql = "select * from (select ROW_NUMBER() over (order by id asc) as r, * from Users) as x where r between ? and ?";

        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, startIndexMovie);
            ps.setInt(2, stopIndexMovie);

            rs = ps.executeQuery();
            while (rs.next()) {
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
                list.add(u);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public ArrayList<User> getUserByName(String search) throws SQLException, IOException {
        ArrayList<User> ar = new ArrayList<>();
        try {
            String sql = "select * from Users where fullName like ?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, "%" + search + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setFullName(rs.getString("fullName"));
                u.setGender(rs.getInt("gender"));
                u.setDob(rs.getDate("dob"));
                u.setEmail(rs.getString("email"));
                u.setAddress(rs.getString("address"));
                u.setAvatar(rs.getString("avatar"));
                u.setPhoneNumber(rs.getString("phoneNumber"));
                u.setPassword(rs.getString("password"));
                u.setRole(rs.getString("role"));
                u.setStatus(rs.getString("status"));
                ar.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return ar;
    }


    public ArrayList<User> getUserById(int id) throws SQLException, IOException {
        ArrayList<User> ar = new ArrayList<>();
        try {
            String sql = "select * from Users where id = ? ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                User u = new User();
                u.setId(rs.getInt("id"));
                u.setFullName(rs.getString("fullName"));
                u.setGender(rs.getInt("gender"));
                u.setDob(rs.getDate("dob"));
                u.setEmail(rs.getString("email"));
                u.setAddress(rs.getString("address"));
                u.setAvatar(rs.getString("avatar"));
                u.setPhoneNumber(rs.getString("phoneNumber"));
                u.setPassword(rs.getString("password"));
                u.setRole(rs.getString("role"));
                u.setStatus(rs.getString("status"));
                ar.add(u);
            }
        } catch (SQLException e) {
            throw e;
        }
        return ar;
    }

    public void banUser(int id, String status) {
        try {
            String sql = "UPDATE Users SET status = ? WHERE id = ?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public void updateUserByAdmin(int id, String fullName, int gender, String dob, int role, String address, String phoneNumber) {
        String query = "Update Users set fullName = ?, gender = ? ,role = ?, dob = ?, address = ?, phoneNumber = ? where id = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullName);
            ps.setInt(2, gender);
            ps.setInt(3, role);
            ps.setString(4, dob);
            ps.setString(5, address);
            ps.setString(6, phoneNumber);
            ps.setInt(7, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public ArrayList<HotelConvenient> getConvenient(int id) {
        ArrayList<HotelConvenient> ar = new ArrayList<>();
        String sql = "select c1.id as conCateId,h.id as conId, h.convenient,c1.convenientCategory"
                + " from HotelConveniences as h  Full JOIN ConvenientCategories as c1 \n"
                + "                 on c1.id = h.convenientCategoryId "
                + "where c1.id = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                HotelConvenient c = new HotelConvenient();
                c.setCategoryId(rs.getInt("conCateId"));
                c.setId(rs.getInt("conId"));
                c.setConvenient(rs.getString("convenient"));
                c.setCategory(rs.getString("convenientCategory"));
                ar.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return ar;
    }

    public ArrayList<HotelConvenient> getConvenient() {
        ArrayList<HotelConvenient> ar = new ArrayList<>();
        String sql = "select c1.id as conCateId,h.id as conId, h.convenient,c1.convenientCategory"
                + " from HotelConveniences as h  Full JOIN ConvenientCategories as c1 \n"
                + "                 on c1.id = h.convenientCategoryId";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                HotelConvenient c = new HotelConvenient();
                c.setCategoryId(rs.getInt("conCateId"));
                c.setId(rs.getInt("conId"));
                c.setConvenient(rs.getString("convenient"));
                c.setCategory(rs.getString("convenientCategory"));
                ar.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return ar;
    }

    public ArrayList<HotelConvenient> ConvenientCategories() {
        ArrayList<HotelConvenient> ar = new ArrayList<>();
        try {
            String sql = "select *  from ConvenientCategories";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                HotelConvenient c = new HotelConvenient();
                c.setCategoryId(rs.getInt("id"));
                c.setCategory(rs.getString("convenientCategory"));
                ar.add(c);
            }
        } catch (SQLException e) {
        }
        return ar;
    }

    public void updateConvenByAdmin(int conId, int convenientCategoryId, String convenient) {
        String query = "UPDATE HotelConveniences \n"
                + "				SET convenient = ?, convenientCategoryId = ?\n"
                + "				where id = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, convenient);
            ps.setInt(2, convenientCategoryId);
            ps.setInt(3, conId);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
