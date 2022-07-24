/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.BookedRoom;
import Model.Room;
import Model.Search;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class BookedRoomDAO {

    private Connection conn = new DBcontext().getConnection();
    ;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<BookedRoom> list;

    // tao table chua hotel id
    // join voi bang RoomType de lay list room cua cac hotel do
    // left join voi bang hp chua cac khuyen mai co san tai thoi diem truy van
    // bang RoomOfHotel chua thong tin id phong, gia sau khi tinh discount, discount va hotelid
    // bang  cheapest tim ra muc gia thap nhat cua tung khach san
    // actual table chua cac record ve muc gia thap nhat cua tung hotel(1 hotel co the co nhieu phong sau cung gia)
    // maxPromotion tim ra mua giam lon nhat cua cac phong cheapest
    // maxPromotionRoom tim ra cac phong co gia thap nhap va muc giam lon nhap 
    // lay ra 1 phong co muc giam cao nhat va gia thuc te thap nhat theo tung hotel
    // dong cuoi la lay thong tin room id,
    public ArrayList<BookedRoom> getMaxPromotion(String hotel) {// lay ra room re nhat tinh vao thoi diem hien tai
        sql = "WITH listHotel AS(\n"
                + "SELECT value from string_split(?,',')\n"
                + "),RoomOfHotel AS(\n"
                + "SELECT rt.id, rt.price*(1-isnull(hp.discount,0)) as price, ISNULL(hp.discount,0) as discount,rt.hotelId\n"
                + "FROM RoomTypes rt\n"
                + "inner join listHotel lh on rt.hotelId = lh.value \n"
                + "left join (SELECT * FROM HotelPromotions WHERE [from]<GETDATE() AND [to]>GETDATE())  hp \n"
                + "on rt.promotionId = hp.id),\n"
                + "cheapest as(SELECT hotelId, MIN(price) as cheapest FROM RoomOfHotel GROUP BY hotelId\n"
                + "),\n"
                + "maxPromotion as(\n"
                + "SELECT hotelId, MAX(discount) as discount FROM (SELECT r.*,c.cheapest FROM RoomOfHotel r \n"
                + "inner join cheapest c on r.hotelId = c.hotelId and price = cheapest) as actual GROUP BY hotelId\n"
                + "),\n"
                + "maxPromotionRoom as (SELECT rh.* FROM RoomOfHotel rh inner join cheapest c on rh.price = c.cheapest AND rh.hotelId = c.hotelId\n"
                + "inner join maxPromotion m on rh.discount = m.discount AND rh.hotelId = m.hotelId)\n"
                + ",roomHotels as (SELECT MIN(mr.id) as roomId,mr.hotelId FROM maxPromotionRoom mr group by hotelId)\n"
                + "SELECT rh.* FROM roomHotels rhs inner join RoomOfHotel rh on rhs.roomId = rh.id";
        list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, hotel);
            rs = ps.executeQuery();
            while (rs.next()) {
                Room r = new Room();
                r.setId(rs.getInt(1));
                r.setHotelId(rs.getInt(4));
                r.setPrice((rs.getDouble(2) / (1 - rs.getDouble(3))) * 1000000);
                list.add(new BookedRoom(r, rs.getDouble(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }

    public ArrayList<BookedRoom> getMaxPromotion(String hotel, Date arrival, Date department) {// lay ra room re nhat tinh vao thoi diem hien tai
        sql = "WITH listHotel AS(\n"
                + "SELECT value from string_split(?,',')\n"
                + "),roomdiscount as (\n"
                + "SELECT rp.roomid,hp.discount FROM RoomPromotion rp \n"
                + "inner join HotelPromotions hp on rp.promotionid = hp.id \n"
                + "WHERE [from]<=? AND [to]>=?\n"
                + ")\n"
                + ",RoomOfHotel AS(\n"
                + "SELECT rt.id, rt.price*(1-isnull(hp.discount,0)) as price, ISNULL(hp.discount,0) as discount,rt.hotelId\n"
                + "FROM RoomTypes rt\n"
                + "inner join listHotel lh on rt.hotelId = lh.value \n"
                + "left join roomdiscount  hp \n"
                + "on rt.id = hp.roomid),\n"
                + "cheapest as(SELECT hotelId, MIN(price) as cheapest FROM RoomOfHotel GROUP BY hotelId\n"
                + "),\n"
                + "maxPromotion as(\n"
                + "SELECT hotelId, MAX(discount) as discount FROM (SELECT r.*,c.cheapest FROM RoomOfHotel r \n"
                + "inner join cheapest c on r.hotelId = c.hotelId and price = cheapest) as actual GROUP BY hotelId\n"
                + "),\n"
                + "maxPromotionRoom as (SELECT rh.* FROM RoomOfHotel rh inner join cheapest c on rh.price = c.cheapest AND rh.hotelId = c.hotelId\n"
                + "inner join maxPromotion m on rh.discount = m.discount AND rh.hotelId = m.hotelId)\n"
                + ",roomHotels as (SELECT MIN(mr.id) as roomId,mr.hotelId FROM maxPromotionRoom mr group by hotelId)\n"
                + "SELECT rh.* FROM roomHotels rhs inner join RoomOfHotel rh on rhs.roomId = rh.id";
        list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, hotel);
            ps.setDate(2, arrival);
            ps.setDate(3, department);
            rs = ps.executeQuery();
            while (rs.next()) {
                Room r = new Room();
                r.setId(rs.getInt(1));
                r.setHotelId(rs.getInt(4));
                r.setPrice((rs.getDouble(2) / (1 - rs.getDouble(3))) * 1000000);
                list.add(new BookedRoom(r, rs.getDouble(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }

    public BookedRoom getBookedRoom(int roomId, int quantity, int hotelId, Date arrival, Date department) {// get picked room 
        sql = "WITH BookedRoomOfHotel AS(SELECT * FROM Reservations WHERE hotelId = ?), \n"
                + "BookedRooms AS(SELECT rr.roomId,SUM(rr.quantity) as booked FROM ReservationRoom rr, BookedRoomOfHotel r\n"
                + "WHERE r.id = rr.reservationId AND r.[status] <> 'Cancel' AND ((arrival > ? AND arrival < ?)\n"
                + "OR(department>? AND department<?)OR (arrival<= ? AND department>= ?))\n"
                + "GROUP BY roomId\n"
                + "),AvailableRooms AS(SELECT id,roomType,[image],(quantity-isnull(booked,0)) as available\n"
                + ",price,maxAdults,maxChild,bed,area,[description],hotelId \n"
                + "FROM RoomTypes rt left join BookedRooms br on rt.id = br.roomId WHERE rt.hotelId = ?),\n"
                + "CurrentPromotion AS (SELECT rp.*,hp.discount FROM HotelPromotions hp \n"
                + "inner join RoomPromotion rp on hp.id = rp.promotionid WHERE hp.hotelId = ? AND hp.[from]<= ? AND hp.[to]>=?)\n"
                + "SELECT ar.* , isnull(cp.promotionid, 0) as promotionId,isnull(discount,0) as discount FROM AvailableRooms ar left join CurrentPromotion cp \n"
                + "on ar.id = cp.roomid WHERE available>=? AND ar.id = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            ps.setDate(2, arrival);
            ps.setDate(3, department);
            ps.setDate(4, arrival);
            ps.setDate(5, department);
            ps.setDate(6, arrival);
            ps.setDate(7, department);
            ps.setInt(8, hotelId);
            ps.setInt(9, hotelId);
            ps.setDate(10, arrival);
            ps.setDate(11, department);

            ps.setInt(12, quantity);
            ps.setInt(13, roomId);

            rs = ps.executeQuery();
            if (rs.next()) {
                return new BookedRoom(new Room(rs.getInt(1), rs.getString(2), rs.getString(3), quantity, rs.getDouble(5) * 1000000, rs.getInt(6), rs.getInt(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getInt(11), rs.getInt(12)), rs.getDouble(13));
            }
        } catch (SQLException ex) {
            return null;
        }
        return null;
    }

    public boolean checkQuanRoom(int roomId, int quantity, int hotelId, Date arrival, Date department) {
        sql = "WITH BookedRoomOfHotel AS(SELECT * FROM Reservations WHERE hotelId = ?), \n"
                + "BookedRooms AS(SELECT rr.roomId,SUM(rr.quantity) as booked FROM ReservationRoom rr, BookedRoomOfHotel r\n"
                + "WHERE r.id = rr.reservationId AND r.[status] <> 'Cancel' AND ((arrival > ? AND arrival < ?)\n"
                + "OR(department>? AND department<?)OR (arrival<= ? AND department>= ?))\n"
                + "GROUP BY roomId\n"
                + "),AvailableRooms AS(SELECT id,roomType,[image],(quantity-isnull(booked,0)) as available\n"
                + ",price,maxAdults,maxChild,bed,area,[description],hotelId \n"
                + "FROM RoomTypes rt left join BookedRooms br on rt.id = br.roomId WHERE rt.hotelId = ?),\n"
                + "CurrentPromotion AS (SELECT rp.*,hp.discount FROM HotelPromotions hp \n"
                + "inner join RoomPromotion rp on hp.id = rp.promotionid WHERE hp.hotelId = ? AND hp.[from]<= ? AND hp.[to]>=?)\n"
                + "SELECT ar.* , isnull(cp.promotionid, 0) as promotionId,isnull(discount,0) as discount FROM AvailableRooms ar left join CurrentPromotion cp \n"
                + "on ar.id = cp.roomid WHERE available>=? AND ar.id = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            ps.setDate(2, arrival);
            ps.setDate(3, department);
            ps.setDate(4, arrival);
            ps.setDate(5, department);
            ps.setDate(6, arrival);
            ps.setDate(7, department);
            ps.setInt(8, hotelId);
            ps.setInt(9, hotelId);
            ps.setDate(10, arrival);
            ps.setDate(11, department);

            ps.setInt(12, quantity);
            ps.setInt(13, roomId);

            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException ex) {
            return false;
        }
    }

    public boolean checkSearchChange(ArrayList<BookedRoom> roomcart, int hotelId, Search search) {
        for (BookedRoom br : roomcart) {
            if (!checkQuanRoom(br.getId(), br.getQuantity(), hotelId, search.getArrival(), search.getDepartment())) {
                return false;
            }
        }
        return true;
    }

    public ArrayList<BookedRoom> getBookedRoomByReId(int reId) {
        list = new ArrayList<BookedRoom>();

        sql = "WITH bookedRoom as (SELECT * FROM ReservationRoom WHERE reservationId = ?)\n"
                + "SELECT br.*,rt.* FROM bookedRoom br inner join RoomTypes rt on br.roomId =rt.id";
        
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, reId);
            rs = ps.executeQuery();
            while(rs.next()){
                    list.add(new BookedRoom(new Room(rs.getInt(7), rs.getString(8), rs.getString(9), rs.getInt(2), rs.getDouble(3)*1000000, rs.getInt(12), rs.getInt(13), rs.getString(14), rs.getString(15), rs.getString(16), rs.getInt(17)), rs.getDouble(6), reId));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return list;
    }
}

//class demo {
//    public static void main(String[] args) {
//        String current = new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date(System.currentTimeMillis()));
////        ArrayList<BookedRoom> list = new BookedRoomDAO().getMaxPromotion("2,3,4",Date.valueOf(current),Date.valueOf(current));
////        
////        for(BookedRoom br: list){
////            System.out.println(br.getId()+" "+ br.getHotelId()+" "+br.getPrice()+" "+br.getDiscount());
////        }
////        System.out.println(new BookedRoomDAO().checkQuanRoom(1, 4, 2, Date.valueOf(current),Date.valueOf(current)));
//     ArrayList<BookedRoom> lis = new BookedRoomDAO().getBookedRoomByReId(1);
//     for(BookedRoom br: lis){
//            System.out.println(br.getId()+" "+ br.getHotelId()+" "+br.getPrice()+" "+br.getDiscount());
//        }
//    }
//}
