/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.HotelPromotion;
import Model.HotelPromotionList;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class HotelPromotionDAO {

    private final Connection conn = new DBcontext().getConnection();

    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    ArrayList<HotelPromotion> list;

    public HotelPromotionList getHPList(int hotelId, Date arrival, Date department) {
        list = new ArrayList<>();
        sql = "WITH promotionOfHotel AS(\n"
                + "SELECT id as hpid,discount,[create] as createAt,[from] as[start], [to] as[end],hotelId,promotionId \n"
                + "FROM HotelPromotions WHERE hotelId = ? AND [from]<= ? AND [to] >= ?)\n"
                + "SELECT ph.hpid,p.promotion,ph.discount FROM promotionOfHotel ph inner join Promotion p on ph.promotionId = p.id";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1, hotelId);
            ps.setDate(2, arrival);
            ps.setDate(3, department);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new HotelPromotion(rs.getInt(1), rs.getString(2), rs.getDouble(3)));
            }
        } catch (Exception ex) {
            System.out.println("Error");
        }
        return new HotelPromotionList(list);
    }
}

//class demo{
//    public static void main(String[] args) {
//        HotelPromotionList hpl = new HotelPromotionDAO().getHPList(2,  Date.valueOf("2022-07-30"), Date.valueOf("2022-08-04"));
//        for(HotelPromotion hp : hpl.getList()){
//            System.out.println(hp.toString());
//        }
//        System.out.println(hpl.getPromotion(1).getPromotion());
//    }
//}