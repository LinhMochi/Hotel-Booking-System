/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Admin
 */
public class Room {
    private int id;
    private String name;
    private String image;
    private int quantity;
    private double price;
    private int maxAdult;
    private int maxChild;   
    private String bed;
    private String area;
    private String description;
    private int hotelId;
    private int promotionId;

    public Room() {
    }

    public Room(int id, String name, String image, int quantity, double price, int maxAdult, int maxChild, String bed, String area, String description, int hotelId, int promotionId) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
        this.maxAdult = maxAdult;
        this.maxChild = maxChild;
        this.bed = bed;
        this.area = area;
        this.description = description;
        this.hotelId = hotelId;
        this.promotionId = promotionId;
    }
    
    public Room (Room room){
        this.id = room.id;
        this.name = room.name;
        this.image = room.image;
        this.quantity = room.quantity;
        this.price = room.price;
        this.maxAdult = room.maxAdult;
        this.maxChild = room.maxChild;
        this.bed = room.bed;
        this.area = room.area;
        this.description = room.description;
        this.hotelId = room.hotelId;
        this.promotionId = room.promotionId;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getMaxAdult() {
        return maxAdult;
    }

    public void setMaxAdult(int maxAdult) {
        this.maxAdult = maxAdult;
    }

    public int getMaxChild() {
        return maxChild;
    }

    public void setMaxChild(int maxChild) {
        this.maxChild = maxChild;
    }

    public String getBed() {
        return bed;
    }

    public void setBed(String bed) {
        this.bed = bed;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public int getPromotionId() {
        return promotionId;
    }

    public void setPromotionId(int promotionId) {
        this.promotionId = promotionId;
    }
    
    
    
}
