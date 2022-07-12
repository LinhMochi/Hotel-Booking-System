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
public class HotelPromotion extends Promotion {
    private int hpid;
    private double discount;
    private String createAt;
    private Date start;
    private Date end;
    private int hotelId;
    private int promotionId;

    public HotelPromotion() {
    }

    public HotelPromotion(int hpid, String promotion, double discount) {
        super(promotion);
        this.hpid = hpid;
        this.discount = discount;
    }

    public HotelPromotion(int hpid, double discount, String createAt, Date start, Date end, int hotelId, int promotionId) {
        this.hpid = hpid;
        this.discount = discount;
        this.createAt = createAt;
        this.start = start;
        this.end = end;
        this.hotelId = hotelId;
        this.promotionId = promotionId;
    }

    public int getHpid() {
        return hpid;
    }

    public void setHpid(int hpid) {
        this.hpid = hpid;
    }

    public double getDiscount() {
        return discount;
    }
    

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public String getCreateAt() {
        return createAt;
    }

    public void setCreateAt(String createAt) {
        this.createAt = createAt;
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
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

    @Override
    public String toString() {
        return "HotelPromotion{" + "hpid=" + hpid + ", discount=" + discount + ", createAt=" + createAt + ", start=" + start + ", end=" + end + ", hotelId=" + hotelId + ", promotionId=" + promotionId + '}';
    }
    
}
