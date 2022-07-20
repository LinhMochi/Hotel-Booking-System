/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.HotelCategory;
import Model.Service;
import static com.sun.corba.se.impl.util.Utility.printStackTrace;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.User;

/**
 *
 * @author Nhat Anh
 */
public class CustormerBookingDAO {

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;

//    public static void main(String[] args) throws Exception {
////        Room room = new Room(7, "1", "jasl.png", 5, 5, 5, 5, "123", "nam dinh no 1", "vua edit", 2);
////        new Bean().updateRoom(room);
////        Room a = new Bean().getRoomByHotelId(7);
////        Service service = new Bean().getServiceByID("1");
////        service.setName("bean vua edit");
//
////        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");  
////        Date from =  Date.valueOf("2022-06-13") ;
////        Date to =  Date.valueOf("2022-06-13") ;
////        
////        Service service = new Service(3, "bvean vua edit",from, to, 1000, "VND", "2022-06-13 17:15:00", 2, 2);
////        new Bean().updateServices(service);
//
//    }
    //------------------------USER--------------------------------
 

    public ArrayList<User> getAllCustomerByHotelId(int hotelId) {
        ArrayList<User> list = new ArrayList<>();
        query = "with temps as (select userId, count(id) as noBook   from Reservations Where hotelId = ? group by userId )\n"
                + "\n"
                + "select s.id , fullName, gender , dob ,email ,address ,avatar ,phoneNumber ,password , role , status , t.noBook  from users s inner join temps t on s.id = t.userId";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, hotelId);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new User(rs.getInt(1),
                        rs.getString(2),
                        rs.getInt(3),
                        rs.getDate(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getInt(12)
                ));
            }
        } catch (Exception e) {
            System.out.println("Loi");
        }

        return list;
    }

}

class demo {

    public static void main(String[] args) {
        for (User u : new CustormerBookingDAO().getAllCustomerByHotelId(2)) {

            System.out.println(u.toString());
        }
    }
}
