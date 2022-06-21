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
public class Reservation {
    private int id;
    private int adult;
    private int child;
    private int noRoom;
    private String bookDate;
    private Date arrival;
    private Date department;
    private int userId;
    private int hotel;

    public Reservation() {
    }

    public Reservation(int id, int adult, int child, int noRoom, String bookDate, Date arrival, Date department, int userId, int hotel) {
        this.id = id;
        this.adult = adult;
        this.child = child;
        this.noRoom = noRoom;
        this.bookDate = bookDate;
        this.arrival = arrival;
        this.department = department;
        this.userId = userId;
        this.hotel = hotel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getAdult() {
        return adult;
    }

    public void setAdult(int adult) {
        this.adult = adult;
    }

    public int getChild() {
        return child;
    }

    public void setChild(int child) {
        this.child = child;
    }

    public int getNoRoom() {
        return noRoom;
    }

    public void setNoRoom(int noRoom) {
        this.noRoom = noRoom;
    }

    public String getBookDate() {
        return bookDate;
    }

   
    public String parseTime(){
        return (new Model.SubTime().subTime(bookDate));
    }
    
     public void setBookDate(String bookDate) {
        this.bookDate = bookDate;
    }
    
    public void setBookDate(){
        java.util.Date current = new java.util.Date(System.currentTimeMillis());
        java.text.SimpleDateFormat formater = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        bookDate = formater.format(current);
    }

    public Date getArrival() {
        return arrival;
    }

    public void setArrival(Date arrival) {
        this.arrival = arrival;
    }

    public Date getDepartment() {
        return department;
    }

    public void setDepartment(Date department) {
        this.department = department;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getHotel() {
        return hotel;
    }

    public void setHotel(int hotel) {
        this.hotel = hotel;
    }
    
    
}
