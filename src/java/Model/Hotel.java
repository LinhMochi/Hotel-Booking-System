package Model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Dell
 */
public class Hotel {
    private int id ; 
    private String name; 
    private int noOfStar ; 
    private String description; 
    private String hotelAdvance; 
    private String policies; 
    private String map; 
    private String email; 
    private String phoneNumber; 
    private String status; 
    private String address; 
    private int cityId ; 
    private int categoryId ; 

    public Hotel() {
    }

    public Hotel(String name) {
        this.name = name;
    }

    public Hotel(int id, String name, int noOfStar, String description, String hotelAdvance, String policies, String map, String email, String phoneNumber, String status, String address, int cityId, int categoryId) {
        this.id = id;
        this.name = name;
        this.noOfStar = noOfStar;
        this.description = description;
        this.hotelAdvance = hotelAdvance;
        this.policies = policies;
        this.map = map;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.status = status;
        this.address = address;
        this.cityId = cityId;
        this.categoryId = categoryId;
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

    public int getNoOfStar() {
        return noOfStar;
    }

    public void setNoOfStar(int noOfStar) {
        this.noOfStar = noOfStar;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getHotelAdvance() {
        return hotelAdvance;
    }

    public void setHotelAdvance(String hotelAdvance) {
        this.hotelAdvance = hotelAdvance;
    }

    public String getPolicies() {
        return policies;
    }

    public void setPolicies(String policies) {
        this.policies = policies;
    }

    public String getMap() {
        return map;
    }

    public void setMap(String map) {
        this.map = map;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
    
    
    
     
    
}
