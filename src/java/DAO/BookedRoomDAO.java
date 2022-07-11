/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.BookedRoom;
import Model.Room;
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
}
//class demo {
//    public static void main(String[] args) {
//        String current = new SimpleDateFormat("yyyy-MM-dd").format(new java.util.Date(System.currentTimeMillis()));
//        ArrayList<BookedRoom> list = new BookedRoomDAO().getMaxPromotion("2,3,4",Date.valueOf(current),Date.valueOf(current));
//        
//        for(BookedRoom br: list){
//            System.out.println(br.getId()+" "+ br.getHotelId()+" "+br.getPrice()+" "+br.getDiscount());
//        }
//    }
//}
