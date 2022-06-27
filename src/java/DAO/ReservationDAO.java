/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Reservation;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.User;
import Model.Hotel;

/**
 *
 * @author Linh
 */
public class ReservationDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Reservation> getReservationList() throws SQLException, IOException {
        ArrayList<Reservation> ar = new ArrayList<>();
        try {
            String sql = "";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getString(8));
                Hotel hotel = new Hotel(rs.getString(9));
                ar.add(new Reservation(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7), user, hotel));
            }
        } catch (SQLException e) {
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return ar;
    }
    
    
}
