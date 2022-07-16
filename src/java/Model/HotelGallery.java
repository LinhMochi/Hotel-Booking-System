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
public class HotelGallery {
    private int id;
    private String title;
    private String image;
    private int hotelId;
    public HotelGallery() {
    }

    public HotelGallery(int id, String title, String image, int hotelId) {
        this.id = id;
        this.title = title;
        this.image = image;
        this.hotelId = hotelId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getHotelId() {
        return hotelId;
    }

    public void setHotelId(int hotelId) {
        this.hotelId = hotelId;
    }

    @Override
    public String toString() {
        return "HotelGallery{" + "id=" + id + ", title=" + title + ", image=" + image + ", hotelId=" + hotelId + '}';
    }
    
    
}
