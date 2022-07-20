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
    public ArrayList<User> getCustomerOfHotelWithTimes() {
        // lay all customer
        ArrayList<User> listAllCustomer = new CustormerBookingDAO().getAllCustomer();
        // list ket qua 
        ArrayList<User> list = new ArrayList<>();
        // list temp  (bang tam )
        ArrayList<User> temp = new ArrayList<>();
        int count = 0;

        for (User user : listAllCustomer) {
            // rong thi
            if (list.isEmpty()) {
                //add luon user va times = 1 
                list.add(new User(user, 1));
            } else {
                // copy data tu list ket qua sang list tam
                for (User copyUser : list) {
                    temp.add(copyUser);
                }
// ông chia cho tôi cái nào là sever cái nào là Dao cái chứ tôi nhịn loạn quá
//ABC ông code cái j thế
// Bean nữa
                // Muc dich tao bang tam : vi trong qua trinh duyet cac phan tu cua mang se khong the thay doi mang do (Add them data vao mang )
                // duyet cac phan tu trong bang tap 
                for (int i = 0; i < temp.size(); i++) {
                    // check ton tai 
                    if (user.getId() == temp.get(i).getId() && user.getHotelId() == temp.get(i).getHotelId()) {
                        // vi bang ket qua va bang tam co cung thong tin va index nen chinh sua thang vao bang ket qua 
                        list.get(i).setTimes(temp.get(i).getTimes() + 1);
                    } else {
                        count++;
                        // dem nham muc dich duyet qua tat cac phan tu va no khong ton tai trong list
                        if (count == temp.size()) {
                            list.add(new User(user, 1));
                            count = 0;
                        }
                    }

                }
            }
        }
        return list;
    }

    public ArrayList<User> getAllCustomer() {
        ArrayList<User> list = new ArrayList<>();
        query = "with temps as (select userId, hotelId from Reservations )\n"
                + "\n"
                + "select s.id , fullName, gender , dob ,\n"
                + "email ,address ,avatar ,phoneNumber ,password ,\n"
                + "role , status , t.hotelId  from users s join temps t on s.id = t.userId\n"
                + "where s.role = 'customer'";
        try {
            conn = new DBcontext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new User(rs.getInt("id"),
                        rs.getString("fullName"),
                        rs.getInt("gender"),
                        rs.getDate("dob"),
                        rs.getString("email"),
                        rs.getString("address"),
                        rs.getString("avatar"),
                        rs.getString("phoneNumber"),
                        rs.getString("password"),
                        rs.getString("role"),
                        rs.getString("status"),
                        rs.getInt("hotelId")
                ));
            }
        } catch (Exception e) {
            System.out.println("Loi");
        }

        return list;
    }



}


