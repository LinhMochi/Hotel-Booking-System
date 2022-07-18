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
public class Search {
    private String search;
    private Date arrival;
    private Date department;
    private int noAdult;
    private int noChild;
    private int noRoom;

    public Search() {
    }

    public Search(String search, Date arrival, Date department, int noAdult, int noChild, int noRoom) {
        this.search = search;
        this.arrival = arrival;
        this.department = department;
        this.noAdult = noAdult;
        this.noChild = noChild;
        this.noRoom = noRoom;
    }

    public String getSearch() {
        return search;
    }

    public void setSearch(String search) {
        this.search = search;
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

    public int getNoAdult() {
        return noAdult;
    }

    public void setNoAdult(int noAdult) {
        this.noAdult = noAdult;
    }

    public int getNoChild() {
        return noChild;
    }

    public void setNoChild(int noChild) {
        this.noChild = noChild;
    }

    public int getNoRoom() {
        return noRoom;
    }

    public void setNoRoom(int noRoom) {
        this.noRoom = noRoom;
    }

    @Override
    public String toString() {
        return "Search{" + "search=" + search + ", arrival=" + arrival + ", department=" + department + ", noAdult=" + noAdult + ", noChild=" + noChild + ", noRoom=" + noRoom + '}';
    }
    
    
}
