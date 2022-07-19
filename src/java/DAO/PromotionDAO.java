/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Promotion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Alexa
 */
public class PromotionDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    public ArrayList<Promotion> getPromotions() {
        ArrayList<Promotion> ar = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Promotion ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Promotion p = new Promotion();
                p.setId(rs.getInt("id"));
                p.setPromotion(rs.getString("promotion"));
                p.setCreate(rs.getString("create"));
                p.setFrom(rs.getDate("from"));
                p.setTo(rs.getDate("to"));
                ar.add(p);
            }
        } catch (SQLException e) {
        }
        return ar;
    }
}
