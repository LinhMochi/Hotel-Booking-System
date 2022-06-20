/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Alexa
 */
public class HotelPromotion {
    private int id;
    float discount;
    private String create;
    private Date from;
    private Date to;
    private int hotelId;
    private int promotionId;

    public HotelPromotion() {
    }

    public HotelPromotion(int id, float discount, String create, Date from, Date to, int hotelId, int promotionId) {
        this.id = id;
        this.discount = discount;
        this.create = create;
        this.from = from;
        this.to = to;
        this.hotelId = hotelId;
        this.promotionId = promotionId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getDiscount() {
        return discount;
    }

    public void setDiscount(float discount) {
        this.discount = discount;
    }

    public String getCreate() {
        return create;
    }

    public void setCreate(String create) {
        this.create = create;
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
