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

    private Connection conn = new DBcontext().getConnection();
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;

 
    //------------------------USER--------------------------------
 

    public ArrayList<User> getAllCustomerByHotelId(int hotelId) {
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
    
    
    public int countCustByHotelId(int hotelId){
        String sql = "select distinct Count(userId) as countCust  FROM Reservations where hotelId = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,hotelId);
            rs = ps.executeQuery();
            if(rs.next()) return rs.getInt(1);
        } catch (SQLException ex) {
             
        }
    return 0;
    }

}


// class demo {

//     public static void main(String[] args) {
//         for(User u : new CustormerBookingDAO().getCustomerOfHotelWithTimes()) {
            
//             System.out.println(u.toString());
//         }
//     }
// }
