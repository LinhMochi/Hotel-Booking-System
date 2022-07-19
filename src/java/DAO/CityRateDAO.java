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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class CityRateDAO {
    private final Connection conn = new DBcontext().getConnection();;
    private PreparedStatement ps = null;
    private ResultSet rs = null;
    String sql = null;
    
    public void rateNewCity(int cityId,int rate){
        sql = "INSERT INTO CityRate VALUES(?,?)";
            try {
                ps = conn.prepareStatement(sql);
                ps.setInt(1, cityId);
                ps.setInt(2, rate);
                rs = ps.executeQuery();
            } catch (SQLException ex) {
                Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
            }
    }
    // update city in CityRate table 
    public void updateCityRate(int oldcityId, int newcityId){
        sql = "Update CityRate SET cityId = ? WHERE cityId = ?";
        try {
            ps = conn.prepareStatement(sql);
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void changeRate(City city1,City city2){
        sql = "UPDATE CityRate set cityrate = CASE cityid \n" +
              "WHEN ? THEN ?\n" +
              "WHEN ? THEN ?\n" +
              "ELSE cityrate\n" +
              "END";
        try {
            ps = conn.prepareStatement(sql);
            ps.setInt(1,city1.getId());
            ps.setInt(2,city2.getRate());
            ps.setInt(3,city2.getRate());
            ps.setInt(4,city1.getRate());
            rs = ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(CityDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
