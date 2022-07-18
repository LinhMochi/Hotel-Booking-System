/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.SuggestPlaceCategory;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author pham quoc an
 */
public class SuggestPlaceCategoryDAO {

    private Connection conn = new DBcontext().getConnection();
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;

    public void addSuggestPlaceCategory(SuggestPlaceCategory spc) {
        query = "INSERT INTO [SuggestPlaceCategories]([suggestPlaceCategory])\n"
                + "                                       VALUES(?)";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, spc.getCategory());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void updateSuggestPlaceCategory(int id, SuggestPlaceCategory spc) {
        query = "UPDATE SuggestPlaceCategories SET suggestPlaceCategory = ?\n"
                + "             WHERE id = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, spc.getCategory());
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void removeSuggestPlaceCategory(int id) {
        query = "DELETE FROM SuggestPlaceCategories WHERE id = ?";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public ArrayList<SuggestPlaceCategory> getAllSuggestPlaceCategories() {
        ArrayList<SuggestPlaceCategory> list = new ArrayList<>();
        query = "SELECT * FROM SuggestPlaceCategories";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new SuggestPlaceCategory(rs.getInt("id"),
                        rs.getString("suggestPlaceCategory")
                ));
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return list;
    }

    public ArrayList<SuggestPlaceCategory> getSuggestPlaceCategories(String page, int numOfElement) throws SQLException, IOException {
        int currentPage = Integer.parseInt(page);
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<SuggestPlaceCategory> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM SuggestPlaceCategories ORDER BY id ASC\n"
                    + "       OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY  ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, start);
            ps.setInt(2, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new SuggestPlaceCategory(rs.getInt("id"),
                        rs.getString("suggestPlaceCategory")
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
}
