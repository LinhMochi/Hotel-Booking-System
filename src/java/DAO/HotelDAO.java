package DAO;

//

import DBcontext.DBcontext;
import Model.Hotel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Dell
 */
public class HotelDAO {

    private Connection conn= new DBcontext().getConnection() ;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;

      public  ArrayList<Hotel> getAllHotel() {
        ArrayList<Hotel> list = new ArrayList<>();
        query = "SELECT * FROM Hotels";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Hotel(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("noOfStar"),
                        rs.getString("description"),
                        rs.getString("hotelAdvance"),
                        rs.getString("policies"),
                        rs.getString("map"),
                        rs.getString("email"),
                        rs.getString("phoneNumber"),
                        rs.getString("status"),
                        rs.getString("address"),
                        rs.getInt("cityId"),
                        rs.getInt("categoryId")
                ));
            }
        } catch (Exception e) {
            System.out.println("Loi");
        }
        return list;
    }

    public ArrayList<Hotel> getHotelByPage(String page) {
        int currentPage = Integer.parseInt(page);
        int numOfElement = 5;
        int start = numOfElement * currentPage - numOfElement;
        ArrayList<Hotel> list = new ArrayList<>();
        query = "SELECT * FROM Hotels\n"
                + "ORDER BY id ASC \n"
                + "OFFSET ? ROWS FETCH  NEXT ?  ROW ONLY";

        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, start);
            ps.setInt(2, numOfElement);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Hotel(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("noOfStar"),
                        rs.getString("description"),
                        rs.getString("hotelAdvance"),
                        rs.getString("policies"),
                        rs.getString("map"),
                        rs.getString("email"),
                        rs.getString("phoneNumber"),
                        rs.getString("status"),
                        rs.getString("address"),
                        rs.getInt("cityId"),
                        rs.getInt("categoryId")
                ));
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return list;
    }

    public void addHotel(String name, int noOfStar, String description, String hotelAdvance, String policies, String map, String email, String phoneNumber, String status, String address, int cityId, int categoryId) {
        query = "INSERT INTO Hotels VALUES ( ? , ? ,  ? ,  ? , ? , ? , ? , ? , ? , ?,  ? , ?)";
        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, noOfStar);
            ps.setString(3, description);
            ps.setString(4, hotelAdvance);
            ps.setString(5, policies);
            ps.setString(6, map);
            ps.setString(7, email);
            ps.setString(8, phoneNumber);
            ps.setString(9, status);
            ps.setString(10, address);
            ps.setInt(11, cityId);
            ps.setInt(12, categoryId);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error");
        }
    }

    public void deleteHotel(int id) {
        query = "DELETE Hotels WHERE id = ? ";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error");
        }

    }

    public void editHotel(int id, String name, int noOfStar, String description, String hotelAdvance, String policies, String map, String email, String phoneNumber, String status, String address, int cityId, int categoryId) {
        query = "UPDATE Hotels SET name = ?  , noOfStar = ?  , [description] = ?  , [hotelAdvance]= ? , [policies]= ?  , [map] = ? , [email]= ? , [phoneNumber] = ? ,[status] = ? ,[address] = ? ,[cityId] = ? ,[categoryId] = ? \n"
                + " WHERE Id = ? ";

        try {
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setInt(2, noOfStar);
            ps.setString(3, description);
            ps.setString(4, hotelAdvance);
            ps.setString(5, policies);
            ps.setString(6, map);
            ps.setString(7, email);
            ps.setString(8, phoneNumber);
            ps.setString(9, status);
            ps.setString(10, address);
            ps.setInt(11, cityId);
            ps.setInt(12, categoryId);
            ps.setInt(13, id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Error");
        }
    }

    public Hotel getHotelByID(int hotelID) {
        query = "SELECT * FROM Hotels where id = ? ";
        try {
            ps = conn.prepareStatement(query);
            ps.setInt(1, hotelID);
            rs = ps.executeQuery();

            while (rs.next()) {
                return new Hotel(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("noOfStar"),
                        rs.getString("description"),
                        rs.getString("hotelAdvance"),
                        rs.getString("policies"),
                        rs.getString("map"),
                        rs.getString("email"),
                        rs.getString("phoneNumber"),
                        rs.getString("status"),
                        rs.getString("address"),
                        rs.getInt("cityId"),
                        rs.getInt("categoryId")
                );
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return null;
    }

    public ArrayList<Hotel> getHotelBySearch(String textSearch) {
        ArrayList<Hotel> list = new ArrayList<>();
        query = "SELECT * FROM hotels WHERE name LIKE '%" + textSearch + "%' OR address LIKE '%" + textSearch + "%'";
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Hotel(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("noOfStar"),
                        rs.getString("description"),
                        rs.getString("hotelAdvance"),
                        rs.getString("policies"),
                        rs.getString("map"),
                        rs.getString("email"),
                        rs.getString("phoneNumber"),
                        rs.getString("status"),
                        rs.getString("address"),
                        rs.getInt("cityId"),
                        rs.getInt("categoryId")
                ));
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return list;

    }

    public ArrayList<Hotel> getHotelByFilter(String filter) {
        query = getQueryFilter(filter);
        ArrayList<Hotel> list = new ArrayList<>();
        try {
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Hotel(rs.getInt("id"),
                        rs.getString("name"),
                        rs.getInt("noOfStar"),
                        rs.getString("description"),
                        rs.getString("hotelAdvance"),
                        rs.getString("policies"),
                        rs.getString("map"),
                        rs.getString("email"),
                        rs.getString("phoneNumber"),
                        rs.getString("status"),
                        rs.getString("address"),
                        rs.getInt("cityId"),
                        rs.getInt("categoryId")
                ));
            }
        } catch (Exception e) {
            System.out.println("Error");
        }
        return list;
    }

    public String getQueryFilter(String filter) {
        String sql = "";
        switch (filter) {
            case "name":
                sql = "SELECT * FROM hotels \n"
                        + "ORDER BY name asc";
                break;
            case "star":
                sql = "SELECT * FROM hotels \n"
                        + "ORDER BY  noOfStar";
                break;
            case "address":
                sql = "SELECT * FROM hotels \n"
                        + "ORDER BY  address";
                break;
            case "hotelAdvance":
                sql = "SELECT * FROM hotels \n"
                        + "ORDER BY  hotelAdvance";
                break;
            case "policies":
                sql = "SELECT * FROM hotels \n"
                        + "ORDER BY  policies";
                break;

        }
        return sql;
    }
    
        public ArrayList<Hotel> getSuggestHotel(){
         ArrayList<Hotel> list = new ArrayList<>();
        String sql = "WITH AvenrageScore AS(\n" +
"	SELECT h.id as hotelId, AVG(ISNULL(hr.score,0)) AS avgScore, COUNT(hr.score) as noRate FROM Reservations r right join Hotels h on r.hotelId = h.id\n" +
"	left join HotelRating hr on r.id = hr.reservationId GROUP BY h.id\n" +
"       ),CountLike AS(\n" +
"	SELECT h.id as hotelId , COUNT(hl.id) as nolike FROM Hotels h LEFT JOIN HotelLikeLog hl ON h.id = hl.hotelId GROUP BY h.id\n" +
"       ),managerList AS(\n" +
"	SELECT Users.fullName, Manages.hotelId FROM Users inner join Manages on Users.id = Manages.userId\n" +
"       ),HotelList AS(\n" +
"	SELECT h.id as hotelId,h.[name],CONCAT(h.[address],', ',c.city) as [address], h.noOfStar , h.[description],\n" +
"	h.policies,h.map, h.hotelAdvance,h.email,h.phoneNumber,\n" +
"	hc.category,ml.fullName as manageBy,nolike ,noRate, av.avgScore,h.[image]\n" +
"	FROM Hotels h inner join Cities c ON h.cityId = c.id \n" +
"	inner join HotelCategories hc on h.categoryId = hc.id \n" +
"	inner join managerList ml on h.id = ml.hotelId \n" +
"	inner join AvenrageScore av on av.hotelId = h.id\n" +
"	inner join CountLike on CountLike.hotelId = h.id\n" +
"	WHERE h.[status] = 'Active'\n" +
"       ) SELECT TOP 5 * FROM HotelList ORDER BY avgScore, nolike DESC";
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                list.add(new Hotel(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), 
                        rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), 
                        rs.getString(10), rs.getString(11), rs.getString(12), "Active", rs.getInt(13), rs.getInt(14), rs.getDouble(15),rs.getString(16)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    return list;
    }
        

        
}

//class demo{
//    public static void main(String[] args) {
//        ArrayList<Hotel> list = new HotelDAO().getSuggestHotel();
//        if(list.isEmpty()) System.out.println("Null ne");
//        else 
//        for(Hotel h:list){
//            System.out.println(h.toString());
//        }
//    }
//}