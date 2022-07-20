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
    private String unit;
    private String createAt;
    private int category;
    private int hotelId;

    public Service() {
    }

        public Service(int id, String name, Date from, Date to, int quantity, double price, String unit, String createAt, int category, int hotelId) {
        this.id = id;
        this.name = name;
        this.from = from;
        this.to = to;
        this.quantity = quantity;
        this.price = price;
        this.unit = unit;
        this.createAt = createAt;
        this.category = category;
        this.hotelId = hotelId;
    }

    public Service(int id, String name, Date from, Date to , double price, String unit, String createAt, int category, int hotelId) {
        this.id = id;
        this.name = name;
        this.from = from;
        this.to = to;
        this.price = price;
        this.unit = unit;
        this.createAt = createAt;
        this.category = category;
        this.hotelId = hotelId;
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

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }    

    @Override
    public String toString() {
        return "Service{" + "id=" + id + ", name=" + name + ", from=" + from + ", to=" + to 
                + ", quantity=" + quantity + ", price=" + price + ", unit=" + unit + ", createAt=" 
                + createAt + ", category=" + category + ", hotelId=" + hotelId + '}';
    }
    
    
    
    
}
