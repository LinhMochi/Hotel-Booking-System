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
    private String city ; 
    private String category ; 
    private String image;
    private int cityId;
    private int categoryId;
    private int manageId;
    private String manageBy;
    private String hotelCategory;
    private int noLike;
    private int noRate;
    private double avgScore;

    public Hotel() {
    }

    public Hotel(String name) {
        this.name = name;
    }
    public Hotel(int id, String name, int noOfStar, String description, String hotelAdvance, String policies, String map, String email, String phoneNumber, String status, String address, String city, String category) {
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
        this.city = city;
        this.category = category;
    }
    

    public Hotel(int id, String name, int noOfStar, String description,
            String hotelAdvance, String policies, String map, String email, String phoneNumber,
            String status, String address, int cityId, int categoryId, String image) {
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
        this.image = image;
    }

    public Hotel(int id, String name, String address, int noStar, String description,
            String policies, String map, String hotelAdvance, String email, String phoneNumber,
            String hotelCategory, String manageBy, String status, int noLike, int noRate, double avgScore, String image) {
        this.id = id;
        this.image = image;
        this.name = name;
        this.address = address;
        this.noOfStar = noStar;
        this.description = description;
        this.policies = policies;
        this.map = map;
        this.hotelAdvance = hotelAdvance;
        this.email = email;
        this.phoneNumber = phoneNumber;
        this.hotelCategory = hotelCategory;
        this.manageBy = manageBy;
        this.status = status;
        this.noLike = noLike;
        this.noRate = noRate;
        this.avgScore = avgScore;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getManageId() {
        return manageId;
    }

    public void setManageId(int manageId) {
        this.manageId = manageId;
    }

    public String getManageBy() {
        return manageBy;
    }

    public void setManageBy(String manageBy) {
        this.manageBy = manageBy;
    }

    public String getHotelCategory() {
        return hotelCategory;
    }

    public void setHotelCategory(String hotelCategory) {
        this.hotelCategory = hotelCategory;
    }

    public int getNoLike() {
        return noLike;
    }

    public void setNoLike(int noLike) {
        this.noLike = noLike;
    }

    public int getNoRate() {
        return noRate;
    }

    public void setNoRate(int noRate) {
        this.noRate = noRate;
    }

    public double getAvgScore() {
        return avgScore;
    }

    public void setAvgScore(double avgScore) {
        this.avgScore = avgScore;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
    public String getrate() {
        if (avgScore > 9) {
            return "Tuyệt vời";
        }
        if (avgScore > 7.5) {
            return "Rất tốt";
        }
        if (avgScore > 5) {
            return "Tạm được";
        }
        if (avgScore > 0) {
            return "Kém";
        }
        if (avgScore == 0) {
            return "Mới";
        }
        return "";
    }

    @Override
    public String toString() {
        return "Hotel{" + "id=" + id + ", name=" + name + ", noOfStar=" + noOfStar + ", description=" + description + ", hotelAdvance=" + hotelAdvance + ", policies=" + policies + ", map=" + map + ", email=" + email + ", phoneNumber=" + phoneNumber + ", status=" + status + ", address=" + address + ", image=" + image + ", cityId=" + cityId + ", categoryId=" + categoryId + ", manageId=" + manageId + ", manageBy=" + manageBy + ", hotelCategory=" + hotelCategory + ", noLike=" + noLike + ", noRate=" + noRate + ", avgScore=" + avgScore + '}';
    }

}
