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
public class HotelCategories {
    private int id;
    private String category;
    private String image;
    private int noHotel;

    public HotelCategories() {
    }

    public HotelCategories(int id, String category, int noHotel) {
        this.id = id;
        this.category = category;
        this.noHotel = noHotel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getNoHotel() {
        return noHotel;
    }

    public void setNoHotel(int noHotel) {
        this.noHotel = noHotel;
    }
}