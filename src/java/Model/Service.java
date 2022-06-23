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
    private int quantity;
    private double price;
    private String createAt;
    private int category;

    public Service() {
    }

    public Service(int id, String name, Date from, Date to, int quantity, double price, String createAt, int category) {
        this.id = id;
        this.name = name;
        this.from = from;
        this.to = to;
        this.quantity = quantity;
        this.price = price;
        this.createAt = createAt;
        this.category = category;
    }

    

    

    Service(Service service) {
        this.id = service.getId();
        this.name = service.getName();
        this.from = service.getFrom();
        this.to = service.getTo();
        this.createAt = service.createAt;
        this.quantity = service.getQuantity();
        this.price = service.getPrice();
        this.category = service.category;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
}
