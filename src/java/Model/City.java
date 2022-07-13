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
public class City {
    private int id;
    private String name;
    private String image;
    private int noHotel;
    private int rate;

    public City() {
    }

    public City(int id, String name) {
        this.id = id;
        this.name = name;
    }
    
    public City(int id, String name, String image, int noHotel, int rate) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.noHotel = noHotel;
        this.rate = rate;
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

    public int getNoHotel() {
        return noHotel;
    }

    public void setNoHotel(int noHotel) {
        this.noHotel = noHotel;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return id+" "+name+" "+image+" "+noHotel+" "+rate; //To change body of generated methods, choose Tools | Templates.
    }
    
    
}
