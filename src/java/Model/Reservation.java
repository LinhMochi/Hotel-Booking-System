/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Linh
 */
public class Reservation {
    private int id;
    private int adult;
    private int child;
    private int noRoom;
    private String bookDate;
    private Date arrival;
    private Date department;
    private String status;
    private User user;
    private Hotel hotel;

    public Reservation() {
    }

    public Reservation(int adult, int child, int noRoom) {
        this.adult = adult;
        this.child = child;
        this.noRoom = noRoom;
    }

    public Reservation(int id, int adult, int child, int noRoom, String bookDate, Date arrival, Date department, String status, User user, Hotel hotel) {
        this.id = id;
        this.adult = adult;
        this.child = child;
        this.noRoom = noRoom;
        this.bookDate = bookDate;
        this.arrival = arrival;
        this.department = department;
        this.status = status;
        this.user = user;
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

    public void setBookDate(String bookDate) {
        this.bookDate = bookDate;
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

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Hotel getHotel() {
        return hotel;
    }

    public void setHotel(Hotel hotel) {
        this.hotel = hotel;
    }

    
    
    
    
}
