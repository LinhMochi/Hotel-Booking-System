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
public class HotelSuggestPlace {
    private int id;
    private String place;
    private Double distance;
    private int hotelId;
    private int category;
    private String placeCategory;
    public HotelSuggestPlace() {
        
    }

    public HotelSuggestPlace(int id, String place, Double distance, int hotelId, int category) {
        this.id = id;
        this.place = place;
        this.distance = distance;
        this.hotelId = hotelId;
        this.category = category;
    }

    public HotelSuggestPlace(int id, String place, Double distance, int hotelId, int category, String placeCategory) {
        this.id = id;
        this.place = place;
        this.distance = distance;
        this.hotelId = hotelId;
        this.category = category;
        this.placeCategory = placeCategory;
    }

    public String getPlaceCategory() {
        return placeCategory;
    }

    public void setPlaceCategory(String placeCategory) {
        this.placeCategory = placeCategory;
    }
    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public Double getDistance() {
        return distance;
    }
    
    public void setDistance(Double distance) {
        this.distance = distance;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public int getCategory() {
        return category;
    }

    public void setCategory(int category) {
        this.category = category;
    }

    @Override
    public String toString() {
        return "HotelSuggestPlace{" + "id=" + id + ", place=" + place + ", distance=" + distance + ", hotelId=" + hotelId + ", category=" + category + ", placeCategory=" + placeCategory + '}';
    }
    
    
}
