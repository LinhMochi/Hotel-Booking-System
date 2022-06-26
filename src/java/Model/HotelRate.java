/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class HotelRate {
    private int id;
    private double score;
    private String detail;
    private String rateAt;
    private int hotelId;
    private int reservationId;
    private int userId;

    public HotelRate() {
    }

    public HotelRate(int id, double score, String detail, String rateAt,int hotelId, int reservationId, int userId) {
        this.id = id;
        this.score = score;
        this.detail = detail;
        this.rateAt = rateAt;
        this.hotelId = hotelId;
        this.reservationId = reservationId;
        this.userId = userId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getRateAt() {
        return rateAt;
    }
    
    public String parseTime(){
        return (new Model.SubTime().subTime(rateAt));
    }

    public void setRateAt(String rateAt) {
        this.rateAt = rateAt;
    }
 
    public void setRateAt() {
        java.util.Date current = new java.util.Date(System.currentTimeMillis());
        java.text.SimpleDateFormat formater = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        rateAt = formater.format(current);
    }

    public int getReservationId() {
        return reservationId;
    }

    public void setReservationId(int reservationId) {
        this.reservationId = reservationId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public int getHotelId() {
        return hotelId;
    }     
}
