/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.Search;
import Model.SearchingResult;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class SearchingDAO {
    private Connection conn = new DBcontext().getConnection();;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<SearchingResult> list;
    
    public ArrayList<SearchingResult> hotelSearch(Search s){
        list = new ArrayList<SearchingResult>();
        sql =   "WITH BookedRooms AS(\n" +
        "	SELECT rr.roomId,SUM(rr.quantity) as booked,arrival,department FROM ReservationRoom rr, Reservations r\n" +
        "	WHERE r.id = rr.reservationId AND r.[status] <> 'Cancel' AND ((arrival > ? AND arrival < ?)OR(department>? AND department<?))\n" +
        "	GROUP BY roomId,quantity,arrival,department\n" +
        "), ListHotel AS(\n" +
        "	SELECT h.id AS hotelId,CONCAT(h.[name],', ',h.[address],', ',c.city) AS [search] FROM Hotels h, Cities c WHERE h.cityId = c.id\n" +
        "), AvailableRooms AS(\n" +
        "SELECT r.id AS roomId,arrival,department, (r.quantity - br.booked) as available,r.price,isnull(hp.discount,0) AS discount, lh.search,r.maxAdults,r.maxChild, r.hotelId \n" +
        "FROM RoomTypes r left join BookedRooms br ON roomId = br.roomId \n" +
        "inner join ListHotel lh ON r.hotelId = lh.hotelId \n" +
        "left join HotelPromotions hp ON r.promotionId = hp.id AND (hp.[from]>=? AND hp.[to]>=?)\n" +
        "WHERE search like '%'+?+'%' and (r.quantity - br.booked) >= ? and (maxAdults+maxChild)>=?), CheapestRoom AS (SELECT roomId,hotelId,available,discount,MIN(price*(1-discount))AS cheapest FROM AvailableRooms GROUP BY hotelId,roomId,available,discount)\n" +
        "SELECT hotelId,roomId,available,discount,cheapest FROM CheapestRoom;";
        try {
            ps = conn.prepareStatement(sql);
            ps.setDate(1, s.getArrival());
            ps.setDate(2, s.getDepartment());
            ps.setDate(3, s.getArrival());
            ps.setDate(4, s.getDepartment());
            ps.setDate(5, s.getArrival());
            ps.setDate(6, s.getDepartment());
            ps.setString(7, s.getSearch());
            ps.setInt(8, s.getNoRoom());
            ps.setInt(9, (s.getNoAdult()+s.getNoChild())/s.getNoRoom());
            rs = ps.executeQuery();
            while(rs.next()){
                SearchingResult sr = new SearchingResult(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getDouble(4), rs.getDouble(5));
                list.add(sr);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
//class demo{
//    public static void main(String[] args) {
//        for(SearchingResult sr: new SearchingDAO().hotelSearch(new Search("Hà",Date.valueOf("2022-07-30"),Date.valueOf("2022-08-03"),1,1,1))){
//            System.out.println(sr.getHotelId()+" "+sr.getRoomId()+" "+sr.getAvailable()+" "+sr.getDiscount()+" "+sr.getCheapestPrice());
//        }
//    }
//}
