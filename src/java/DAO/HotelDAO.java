package DAO;

//

import model.Hotel;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

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

    private Connection conn;
    private PreparedStatement ps;
    private ResultSet rs;
    private String query;

      public  ArrayList<Hotel> getAllHotel() {
        ArrayList<Hotel> list = new ArrayList<>();
        query = "SELECT * FROM Hotels";
        try {
            conn = new DBContext().getConnection();
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
            conn = new DBContext().getConnection();
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
            conn = new DBContext().getConnection();
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
            conn = new DBContext().getConnection();
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
            conn = new DBContext().getConnection();
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
            conn = new DBContext().getConnection();
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
            conn = new DBContext().getConnection();
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
            conn = new DBContext().getConnection();
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
}
