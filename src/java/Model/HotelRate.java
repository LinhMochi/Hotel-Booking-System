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
public class HotelRate extends Reservation {
    private int rateid;
    private double score;
    private String detail;
    private String rateAt;
    private int reservationId;
    private int userId;
    private String name;
    private String image;

    public HotelRate() {
    }

    public HotelRate(int id, double score, String detail, String rateAt, int reservationId, int userId) {
        this.rateid = id;
        this.score = score;
        this.detail = detail;
        this.rateAt = rateAt;
        this.reservationId = reservationId;
        this.userId = userId;
    }

    public HotelRate(int rateid, double score, String detail,  int reservationId, String rateAt, int userId, 
            String name, String image,int noAdult, int noChild, int noRoom) {
        super(noAdult,noChild,noRoom);
        this.rateid = rateid;
        this.score = score;
        this.detail = detail;
        this.rateAt = rateAt;
        this.reservationId = reservationId;
        this.userId = userId;
        this.name = name;
        this.image = image;
    }    
    
    

    public int getRateId() {
        return rateid;
    }

    public void setRateId(int id) {
        this.rateid = id;
    }

    public double getScore() {
        return score;
    }

    public void setScore(double score) {
        this.score = score;
    }

    public String getrate(){
        if(score>9) return "Tuyệt vời";
        if(score>7.5) return "Rất tốt";
        if(score>5) return "Tạm được";
        if(score>0) return "Kém";
        if(score == 0) return "Mới";
        return "";
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

    public int getRateid() {
        return rateid;
    }

    public void setRateid(int rateid) {
        this.rateid = rateid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
    
    

    @Override
    public String toString() {
        return "HotelRate{" + "rateid=" + rateid + ", score=" + score + ", detail=" + detail + ", rateAt=" + rateAt + ", reservationId=" + reservationId + ", userId=" 
                + userId + ", name=" + name + ", image=" + image + ", adult=" + this.getAdult()  +", nochild=" + this.getChild() +", noRoom=" + this.getNoRoom() +", rate ate=" + parseTime()+'}';
    }
    
    
 
}