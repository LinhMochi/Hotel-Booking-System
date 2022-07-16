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
                    + "where u.email = ? and h.name LIKE '%" + textSearchHotel +"%' \n"
                    + "ORDER BY id ASC \n"
                    + "OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setInt(2, start);
            ps.setInt(3, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User(rs.getString(9));
                Hotel hotel = new Hotel(rs.getString(10));
                ar.add(new Reservation(rs.getInt(1),rs.getInt(2),rs.getInt(3),rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7), rs.getString(8), user, hotel));
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        } finally {
            if (conn != null) {
                conn.close();
            }
        }
        return ar;
    }

    public void addReservation(Reservation reservation) {
        try {
            String sql = "INSERT INTO Reservations r (noOfAdults, noOfChild, noOfRoom, bookDate, arrival, department, status, userId, hotelId) \n"
                    + " VALUES ("
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
            ps.setInt(1, reservation.getAdult());
            ps.setInt(2, reservation.getChild());
            ps.setInt(3, reservation.getNoRoom());
            ps.setString(4, reservation.getBookDate());
            ps.setDate(5, reservation.getArrival());
            ps.setDate(6, reservation.getDepartment());
            ps.setString(7, "Pending");
            ps.setString(8, "...");
            ps.setString(9, "...");
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }
    
    public void deleteReservation(int id) {
        String sql = "DELETE Reservations WHERE id = ? ";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }

    }
    
    public int countReservation() {
        int count = 0;
        String sql = "select count(*) from Reservations";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return count;
    }
    
    public int countReservationWithId(int id) {
        int count = 0;
        String sql = "select count(*) from Reservations WHERE id = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return count;
    }
    
    public int countReservationWithEmail(String email) {
        int count = 0;
        String sql = "select count(*) from Reservations WHERE email = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, email);
            rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return count;
    }
    
    public void updateStatus(int id, String status) {
        try {
            String sql = "UPDATE Reservations SET status = ? WHERE id = ?";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, status);
            ps.setInt(2, id);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }
}
