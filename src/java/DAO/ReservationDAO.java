/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.BookedRoom;
import Model.Reservation;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.User;
import Model.Hotel;
import Model.BookedRoom;
import Model.Service;
import Model.ReservationDetail;
import Model.Search;
import Model.Service;
import Model.SubTime;
import java.sql.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Linh
 */
public class ReservationDAO {

    Connection conn = new DBcontext().getConnection();
    PreparedStatement ps = null;
    ResultSet rs = null;

    public ArrayList<Reservation> getReservations(String page, String textSearchHotel, String email) throws SQLException, IOException {
        int currentPage = Integer.parseInt(page);
        int numOfElement = 5;
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<Reservation> ar = new ArrayList<>();
        try {
            String sql = "Select ROW_NUMBER() OVER (ORDER BY r.id) AS [id], r.noOfAdults, r.noOfChild, r.noOfRoom, r.bookDate, r.arrival, r.department, r.status, u.email, h.name, r.userId, r.hotelId From Reservations r \n"
                    + "inner join Users u on r.userId = u.id \n"
                    + "inner join Hotels h on r.hotelId = h.id \n"
                    + "where u.email LIKE '" + email + "%' and h.name LIKE '%" + textSearchHotel + "%' \n"
                    + "ORDER BY id ASC \n"
                    + "OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, start);
            ps.setInt(2, numOfElement);
            rs = ps.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setId(rs.getInt(11));
                user.setEmail(rs.getString(9));
                Hotel hotel = new Hotel();
                hotel.setId(rs.getInt(12));
                hotel.setName(rs.getString(10));
                ar.add(new Reservation(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7), rs.getString(8), user, hotel));
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
            ps.setInt(8, reservation.getUser().getId());
            ps.setInt(9, reservation.getHotel().getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void updateReservationInfoById(int id, Reservation reservation) {
        String sql = "UPDATE r SET r.noOfAdults = ? , r.noOfChild = ? , r.noOfRoom = ? , r.bookDate = ? , r.arrival = ? , r.department = ? , r.status = ? \n"
                + "From ( Select *, ROW_NUMBER() OVER (ORDER BY id) AS [idu] FROM Reservations ) r \n"
                + "Where r.idu = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, reservation.getAdult());
            ps.setInt(2, reservation.getChild());
            ps.setInt(3, reservation.getNoRoom());
            ps.setString(4, reservation.getBookDate());
            ps.setDate(5, reservation.getArrival());
            ps.setDate(6, reservation.getDepartment());
            ps.setString(7, reservation.getStatus());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public void updateReservationInfoByEmail(int id, String email, Reservation reservation) {
        String sql = "UPDATE r SET r.noOfAdults = ? , r.noOfChild = ? , r.noOfRoom = ? , r.bookDate = ? , r.arrival = ? , r.department = ? , r.status = ? from Reservations AS r \n"
                + "From ( Select *, ROW_NUMBER() OVER (ORDER BY id) AS [idu] FROM Reservations ) r \n"
                + "INNER JOIN Users AS u on r.userId = u.id where r.idu = ? and u.email LIKE '" + email + "%' ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, reservation.getAdult());
            ps.setInt(2, reservation.getChild());
            ps.setInt(3, reservation.getNoRoom());
            ps.setString(4, reservation.getBookDate());
            ps.setDate(5, reservation.getArrival());
            ps.setDate(6, reservation.getDepartment());
            ps.setString(7, reservation.getStatus());
            ps.setInt(8, reservation.getId());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public Reservation getReservationInfoById(int id) throws SQLException, IOException {
        String sql = "SELECT ROW_NUMBER() OVER (ORDER BY r.id) AS [idu], r.noOfAdults, r.noOfChild, r.noOfRoom, r.bookDate, r.arrival, r.department, r.status, u.email, h.name, r.userId, r.hotelId FROM Reservations r \n"
                + "inner join Users u on r.userId = u.id \n"
                + "inner join Hotels h on r.hotelId = h.id \n"
                + "where idu = ? ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            if (rs.next()) {
                Reservation r = new Reservation();
                User u = new User();
                Hotel h = new Hotel();
                BookedRoom br = new BookedRoom();
                r.setId(rs.getInt("idu"));
                r.setAdult(rs.getInt("noOfAdults"));
                r.setChild(rs.getInt("noOfChild"));
                r.setNoRoom(rs.getInt("noOfRoom"));
                r.setBookDate(rs.getString("bookDate"));
                r.setArrival(rs.getDate("arrival"));
                r.setDepartment(rs.getDate("department"));
                r.setStatus(rs.getString("status"));
                u.setEmail(rs.getString("email"));
                r.setUser(u);
                h.setName(rs.getString("name"));
                r.setHotel(h);
                return r;
            }
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public ArrayList<BookedRoom> getBookedRoom(int reservationId) throws SQLException, IOException {
        ArrayList<BookedRoom> ar = new ArrayList<>();
        try {
            String sql = " ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

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

    public ArrayList<Service> getBookedServiceList(int reservationId) throws SQLException, IOException {
        ArrayList<Service> ar = new ArrayList<>();
        try {
            String sql = " ";
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {

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

    public void deleteReservation(int id) {
        String sql = "DELETE FROM ( Select *, ROW_NUMBER() OVER (ORDER BY id) AS [idu] FROM Reservations ) r WHERE idu = ? ";
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
        String sql = "select count(*) from Reservations r \n"
                + "inner join Users u on r.userId = u.id \n"
                + "WHERE u.email LIKE '" + email + "%' ";
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

    public void updateStatus(String email, String status) {
        String sql = "UPDATE r SET r.status = ? from Reservations AS r \n"
                + "INNER JOIN Users AS u on r.userId = u.id where u.email LIKE '" + email + "%' ";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1, status);
            ps.setString(2, email);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
    }

    public boolean insertReservation(User user, Search search, int hotelId, ReservationDetail cart, String status) {
        String current = new SubTime().getCurrent();
        String sql;
        int userId = 0;
        int newReserId = getIden("Reservations") + 1;
        try {
            conn.setAutoCommit(false);
            ps = conn.prepareStatement("SELECT * FROM Users where email=?");
            ps.setString(1, user.getEmail());

            rs = ps.executeQuery();
            if (rs.next()) {
                userId = rs.getInt(1);
            } else {

                sql = "INSERT INTO Users (fullName, gender, dob, email, address, avatar, phoneNumber, password, role, status)\n"
                        + " VALUES (" + "?," + "?," + "?," + "?," + "?," + "?," + "?," + "?," + "?," + "?);";
                ps = conn.prepareStatement(sql);
                ps.setString(1, user.getFullName());
                ps.setInt(2, 0);
                ps.setDate(3, null);
                ps.setString(4, user.getEmail());
                ps.setString(5, "Hà Nội");
                ps.setString(6, user.getAvatar());
                ps.setString(7, user.getPhoneNumber());
                ps.setString(8, null);
                ps.setString(9, "Customer");
                ps.setString(10, "Guest");

                ps.executeUpdate();// add user

                ps = conn.prepareStatement("SELECT * FROM Users where email = ?");
                ps.setString(1, user.getEmail());
                rs = ps.executeQuery();

                if (rs.next()) {
                    userId = rs.getInt(1);// get Id of the guest;
                }
            }
            sql = "INSERT INTO Reservations (noOfAdults, noOfChild, noOfRoom, bookDate, arrival, department, status, userId, hotelId) VALUES"
                    + "(?,?,?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, search.getNoAdult());
            ps.setInt(2, search.getNoChild());
            ps.setInt(3, cart.getBookedRoomQuantity());// get no room in reservation detail
            ps.setString(4, current);
            ps.setDate(5, search.getArrival());
            ps.setDate(6, search.getDepartment());
            ps.setString(7, status);
            ps.setInt(8, userId);
            ps.setInt(9, hotelId);

            ps.executeUpdate();

            sql = "INSERT INTO ReservationRoom(quantity,unitprice,roomId,reservationId,discount) VALUES"
                    + "(?,?,?,?,?)";
            for (BookedRoom br : cart.getBookedRooms()) {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, br.getQuantity());
                ps.setDouble(2, br.getPrice() / 1000000);
                ps.setInt(3, br.getId());
                ps.setInt(4, newReserId);
                ps.setDouble(5, br.getDiscount());

                ps.executeUpdate();
            }

            sql = "INSERT INTO ReservationService (unitPrice,quantity,reservationId,serviceId) VALUES"
                    + "(?,?,?,?)";

            for (Service sv : cart.getBookedServices()) {
                ps = conn.prepareStatement(sql);
                ps.setDouble(1, sv.getPrice() / 1000000);
                ps.setInt(2, sv.getQuantity());
                ps.setInt(3, newReserId);
                ps.setInt(4, sv.getId());

                ps.executeUpdate();
            }
            conn.commit();
            conn.setAutoCommit(true);

        } catch (SQLException ex) {
            try {
                conn.rollback();
                conn.setAutoCommit(true);
                return false;
            } catch (SQLException ex1) {
                return false;
            }
        }
        return true;
    }

    public boolean insertReservation(int userId, Search search, int hotelId, ReservationDetail cart, String status) {
        String current = new SubTime().getCurrent();
        String sql = "";
        int newReserId = getIden("Reservations") + 1;
        try {
            conn.setAutoCommit(false);
            if (cart.isEmptyRoom()) {
                throw new SQLException();// room cart empty => error
            }
            sql = "INSERT INTO Reservations (noOfAdults, noOfChild, noOfRoom, bookDate, arrival, department, status, userId, hotelId) VALUES"
                    + "(?,?,?,?,?,?,?,?,?)";
            ps = conn.prepareStatement(sql);
            ps.setInt(1, search.getNoAdult());
            ps.setInt(2, search.getNoChild());
            ps.setInt(3, cart.getBookedRoomQuantity());// get no room in reservation detail
            ps.setString(4, current);
            ps.setDate(5, search.getArrival());
            ps.setDate(6, search.getDepartment());
            ps.setString(7, status);
            ps.setInt(8, userId);
            ps.setInt(9, hotelId);

            ps.executeUpdate();

            sql = "INSERT INTO ReservationRoom(quantity,unitprice,roomId,reservationId,discount) VALUES"
                    + "(?,?,?,?,?)";
            for (BookedRoom br : cart.getBookedRooms()) {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, br.getQuantity());
                ps.setDouble(2, br.getPrice() / 1000000);
                ps.setInt(3, br.getId());
                ps.setInt(4, newReserId);
                ps.setDouble(5, br.getDiscount());

                ps.executeUpdate();
            }

            if (!cart.isEmptyService()) {
                sql = "INSERT INTO ReservationService() VALUES"
                        + "(?,?,?,?)";

                for (Service sv : cart.getBookedServices()) {
                    ps = conn.prepareStatement(sql);
                    ps.setDouble(1, sv.getPrice() / 1000000);
                    ps.setInt(2, sv.getQuantity());
                    ps.setInt(3, newReserId);
                    ps.setInt(4, sv.getId());

                    ps.executeUpdate();
                }
            }
            conn.commit();
            conn.setAutoCommit(true);

        } catch (SQLException ex) {
            try {
                conn.rollback();
                conn.setAutoCommit(true);
                return false;
            } catch (SQLException ex1) {
                return false;
            }
        }
        return true;
    }

    public int getIden(String tb) {
        try {
            ps = conn.prepareStatement("SELECT IDENT_CURRENT(?) as id");
            ps.setString(1, tb);
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    // check is able to access , update reserve
    public boolean checkAuthor(int managerId, int reservationId) {
        String sql = "SELECT m.userId, re.id FROM Manages m inner join Hotels h on m.hotelId = h.id \n"
                + "inner join Reservations r on h.id = r.hotelId WHERE m.userId = ? AND r.id = ?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, managerId);
            ps.setInt(2, reservationId);
            if (ps.executeQuery().next()) {
                return true;
            }
        } catch (SQLException ex) {
//            System.out.println("Error");
        }

        return false;
    }

    public boolean checkOwner(int userId, int reservationId) {
        String sql = "SELECT m.userId, re.id FROM Users m \n"
                + "inner join Reservations r on m.id = r.userId WHERE m.userId = ? AND r.id = ?;";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, userId);
            ps.setInt(2, reservationId);
            if (ps.executeQuery().next()) {
                return true;
            }
        } catch (SQLException ex) {
//            System.out.println("Error");
        }

        return false;
    }

    public int countReservationByHotelId(int hotelId) {
        int count = 0;
        String sql = "WITH relist as (\n"
                + "SELECT * FROM Reservations WHERE hotelId = ?\n"
                + ") \n"
                + "SELECT r.*,u.id,u.fullName,u.email,u.phoneNumber FROM relist r inner join Users u on userId = u.id\n";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);

            rs = ps.executeQuery();
            while (rs.next()) {
                count++;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return count;
    }

    public ArrayList<Reservation> getListReservationByHotelId(int page, int hotelid) {

        int number_record = 5;
        int start = number_record * page - number_record;
        String sql = "WITH relist as (\n"
                + "SELECT * FROM Reservations WHERE hotelId = ?\n"
                + ") \n"
                + "SELECT r.*,u.id,u.fullName,u.email,u.phoneNumber FROM relist r inner join Users u on userId = u.id\n"
                + "ORDER BY bookDate desc OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY \n"
                + ";";
        ArrayList<Reservation> list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelid);
            ps.setInt(2, start);
            ps.setInt(3, number_record);

            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Reservation(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7), rs.getString(8), new User(rs.getInt(11), rs.getString(12), rs.getString(13), rs.getString(14))));
            }
        } catch (SQLException ex) {
            return null;
        }
        return list;
    }

    public int countMyReservation( int userid) {
        int count = 0;

        String sql = "SELECT * FROM Reservations WHERE userId = ? ";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, userid);

            rs = ps.executeQuery();
            while (rs.next()) {
                count++;
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return count;
    }

    public ArrayList<Reservation> getMyReservation(int page, int userid) {
        
        ArrayList<Reservation> list = new ArrayList<Reservation>();
        
        int number_record = 5;
        int start = number_record * page - number_record;
        
        String sql = "WITH myRe as (\n"
                + "SELECT * FROM Reservations WHERE userId = ? \n"
                + ")\n"
                + "SELECT myRe.*,h.id,h.[name],h.[address] FROM myRe inner join Hotels h on myRe.id = h.id\n"
                + "ORDER BY myRe.bookDate desc OFFSET ? ROWS FETCH NEXT ? ROW ONLY";

        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, userid);
            ps.setInt(2, start);
            ps.setInt(3, number_record);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Reservation(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7), rs.getString(8), new Hotel(rs.getInt(10), rs.getString(12), rs.getString(13))));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }
    
    
    public Reservation getReservationInfoByReId(int reId){
        String sql = "SELECT  r.*,u.fullName,u.email,u.phoneNumber,u.avatar,h.image,h.name,h.address,h.email "
                + "FROM Reservations r inner join Users u on r.userId = u.id inner join Hotels h on  r.hotelId = h.id WHERE r.id = ?";
        
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,reId);
            
            rs = ps.executeQuery();
            if(rs.next()){
                return new Reservation(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), rs.getDate(6), rs.getDate(7), rs.getString(8), new User(rs.getInt(9), rs.getString(11), rs.getString(12), rs.getString(13)), new Hotel(rs.getInt(10), rs.getString(16), rs.getString(17)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
      
        return null;
    }
    
    public int countPendingReservationByHotelId(int hotelId){
        String sql = "SELECT hotelId, count(id) as newRe FROM Reservations "
                + "WHERE hotelId = ? AND status = 'Pending' GROUP BY hotelId";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,hotelId);
            rs = ps.executeQuery();
            if(rs.next()) return rs.getInt(2);
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    
}


//    class demo {
//    
//        public static void main(String[] args) {
//            Reservation r  = new ReservationDAO().getReservationInfoByReId(1);
//    
//            
//            System.out.println( new ReservationDAO().countReservationByHotelId(2));
//        }
//    }
