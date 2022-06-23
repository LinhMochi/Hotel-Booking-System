/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DBcontext.DBcontext;
import Model.City;
import java.sql.Connection;
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
public class CityDAO {
    private Connection conn = new DBcontext().getConnection();;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
        
    public ArrayList<City> getListCityComplete(){// get list city to rend into home page and list city of admin feature
        ArrayList<City> list = new ArrayList<City>();
        sql =   "WITH noHotel\n" +
                "AS(\n" +
                "SELECT c.id as cityId, COUNT(h.id) as noHotel \n" +
                "FROM Cities c LEFT JOIN Hotels h ON c.id = h.cityId Group by c.id)\n" +
                "\n" +
                "SELECT Cities.id, Cities.city,Cities.[image], ISNULL(CityRate.cityrate,999) AS rate,noHotel FROM Cities \n" +
                "LEFT JOIN CityRate on Cities.id = CityRate.cityid \n" +
                "INNER JOIN noHotel ON Cities.id = noHotel.cityId\n" +
                "ORDER BY rate";// select * de lay het data 
        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                City city = new City();
                city.setId(rs.getInt("id"));
                city.setName(rs.getString("city"));
                city.setImage(rs.getString(3));
                city.setNoHotel(rs.getInt(5));
                city.setRate(rs.getInt(4));
                list.add(city);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
            
        return list;
    }
    
    public boolean checkCityByName(String name){// check city exist by id
        sql = "SELECT * FROM Cities WHERE city = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, name);
            rs = ps.executeQuery();
            return rs.next();
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    // add new city with name an image call by cityList request.
    public int addCity(City city){
        sql = "insert into Cities Values (?,?)";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, city.getName());
            ps.setString(2, city.getImage());
            return ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
    }
    
    public int updateCity(City city){// update name an img of city 
        sql = "UPDATE Cities SET city = ?, image = ? WHERE id = ?";
        try {
            ps = conn.prepareStatement(sql);
            ps.setString(1, city.getName());
            ps.setString(2, city.getImage());
            ps.setInt(3, city.getId());
            return ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
            return -1;
        }
    }
    
    // detelte city is lack
        
}