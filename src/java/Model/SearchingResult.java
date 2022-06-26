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
public class SearchingResult {
    private int hotelId;
    private int roomId;
    private int available;
    private double discount;
    private double cheapestPrice;

    public SearchingResult() {
    }

    public SearchingResult(int hotelId, int roomId, int available, double discount, double cheapestPrice) {
        this.hotelId = hotelId;
        this.roomId = roomId;
        this.available = available;
        this.discount = discount;
        this.cheapestPrice = cheapestPrice;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public int getAvailable() {
        return available;
    }

    public void setAvailable(int available) {
        this.available = available;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getCheapestPrice() {
        return cheapestPrice;
    }

    public void setCheapestPrice(double cheapestPrice) {
        this.cheapestPrice = cheapestPrice;
    }
    
    
    

}
