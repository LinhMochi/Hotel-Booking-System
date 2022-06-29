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
public class HotelConvenient {
    private int id;
    private String convenient;
    private String category;
    private int rate;
    private int hotelId;
    private int categoryId;

    public HotelConvenient() {
    }
    
    

    public HotelConvenient(int id, String convenient, String category, int hotelId, int categoryId) {
        this.id = id;
        this.convenient = convenient;
        this.category = category;
        this.hotelId = hotelId;
        this.categoryId = categoryId;
    }
    
    public HotelConvenient(int id, String convenient, String category,int rate, int hotelId, int categoryId) {
        this.id = id;
        this.convenient = convenient;
        this.category = category;
        this.rate = rate;
        this.hotelId = hotelId;
        this.categoryId = categoryId;
    }
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getConvenient() {
        return convenient;
    }

    public void setConvenient(String convenient) {
        this.convenient = convenient;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
    
    

    @Override
    public String toString() {
        return "HotelConvenient{" + "id=" + id + ", convenient=" + convenient + ", category=" + category + ", hotelId=" + hotelId + ", categoryId=" + categoryId + '}';
    }
    
    
    
}
