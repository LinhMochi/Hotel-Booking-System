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

    public ArrayList<Reservation> getReservations(String page, String textSearchHotel, String email) throws SQLException, IOException {
        int currentPage = Integer.parseInt(page);
        int numOfElement = 5;
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<Reservation> ar = new ArrayList<>();
        try {
            String sql = "Select r.id, r.noOfAdults, r.noOfChild, r.noOfRoom, r.bookDate, r.arrival, r.department, r.status, u.email, h.name From Reservations r \n"
                    + "inner join Users u on r.userId = u.id \n"
                    + "inner join Hotels h on r.hotelId = h.id \n"
                    + "where h.name LIKE '%?%' and u.email = ? \n"
                    + "ORDER BY id ASC \n"
                    + "OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, textSearchHotel);
            ps.setString(2, email);
            ps.setInt(3, start);
            ps.setInt(4, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getString(9));
                Hotel hotel = new Hotel(rs.getString(10));
                ar.add(new Reservation(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7), rs.getString(8), user, hotel));
            }
        } catch (SQLException e) {
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return ar;
    }
    
    public void deleteReservation(int id) {
        query = "DELETE Reservations WHERE id = ? ";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error");
        }

    }
}
