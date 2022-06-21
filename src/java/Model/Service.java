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
public class Service {
    private int id;
    private String name;
    private Date from;
    private Date to;
    private String createAt;
    private int category;

    public Service() {
    }

    public Service(int id, String name, Date from, Date to, String createAt) {
        this.id = id;
        this.name = name;
        this.from = from;
        this.to = to;
        this.createAt = createAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getFrom() {
        return from;
    }

    public void setFrom(Date from) {
        this.from = from;
    }

    public Date getTo() {
        return to;
    }

    public void setTo(Date to) {
        this.to = to;
    }

    public String getCreateAt() {
        return createAt;
    }
    
    public String parseTime(){
        return (new Model.SubTime().subTime(createAt));
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }
    
    public void setCreateTime(String createAt){
        this.createAt  = createAt;
    }
    
    public void setCreateTime(){
        java.util.Date current = new java.util.Date(System.currentTimeMillis());
        java.text.SimpleDateFormat formater = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        createAt = formater.format(current);
    }
}
