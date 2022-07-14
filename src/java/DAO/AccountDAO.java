/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Model.User;
import java.sql.Connection;


/**
 *
 * @author pham quoc an
 */
public class AccountDAO extends DBcontext{
    
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
     public User getAccount(String username, String password) {
        try {
            String sql = "select * from account\n"
                    + "where [User_Name] = ? AND [Password] = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User a = new User();
                a.setId(rs.getInt(1));
                a.setEmail(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setRole(rs.getString(4));
                return a;
            }
        }catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
    public User checkUserExist(String username) {
        try {
            String sql = "select * from Account\n"
                    + "where User_Name = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User a = new User();
                a.setId(rs.getInt(1));
                a.setEmail(rs.getString(2));
                a.setPassword(rs.getString(3));
                a.setRole(rs.getString(4));
                return a;
            }
        }catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    
    public void addCustomerAccount(String username, String password) {
        try {
            String sql = "insert into Account\n"
                    + "values (?, ?, '4')";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void manageAccount(String aid, String update, int option) {
        PreparedStatement ps;
        String sql = null;
        try {
            switch (option) {
                case 1:
                    sql = "update Account\n"
                            + "set User_Name = ?\n"
                            + "where ID = ?";
                    break;
                case 2:
                    sql = "update Account\n"
                            + "set Password = ?\n"
                            + "where ID = ?";
                    break;
            }
            ps = conn.prepareStatement(sql);
            ps.setString(1, update);
            ps.setString(2, aid);
            ps.executeUpdate();
        }catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
     public User getAccountById(String id) {
        try {
            String sql = "select ID, [User_Name], [Type]\n"
                    + "from Account\n"
                    + "where ID = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User a = new User();
                a.setId(rs.getInt(1));
                a.setEmail(rs.getString(2));
                a.setRole(rs.getString(3));
                return a;
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
     
     public ArrayList<User> loadAccount_Admin() {
        ArrayList vec = new ArrayList();
        try {
            String sql = "select ID, [User_Name], [Type]\n"
                    + "from Account";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                User a = new User();
                a.setId(rs.getInt(1));
                a.setEmail(rs.getString(2));
                a.setRole(rs.getString(3));
                vec.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return vec;
    }
     
//    public ArrayList<Product> loadProduct_Admin() {
//        ArrayList<Product> vec = new ArrayList();
//        try {
//            String sql = "select pr.ID, pr.[Name], pr.[Image], o.[Name], c.[Name], pr.Price,\n"
//                    + "pa.Measure, pr.[Amount], a.[User_Name], pr.[Description], pr.isActive\n"
//                    + "from Product pr, Origin o, Category c, Packing pa, Account a\n"
//                    + "where pr.Origin_ID = o.ID and pr.Category_ID = c.ID \n"
//                    + "and pr.Packing_ID = pa.ID and pr.Sell_ID = a.ID";
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                Product s = new Product();
//                s.setId(String.valueOf(rs.getInt(1)));
//                s.setName(rs.getString(2));
//                s.setImage(rs.getString(3));
//                s.setOrigin(rs.getString(4));
//                s.setCategory(rs.getString(5));
//                s.setPrice(rs.getInt(6));
//                s.setPacking(rs.getString(7));
//                s.setAmount(rs.getInt(8));
//                s.setSid(rs.getString(9));
//                s.setDescription(rs.getString(10));
//                s.setActive(rs.getBoolean(11));
//                vec.add(s);
//            }
//        }catch (SQLException ex) {
//            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return vec;
//    }
}
