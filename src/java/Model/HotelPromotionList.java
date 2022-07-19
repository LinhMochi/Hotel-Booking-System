/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class HotelPromotionList {
    private ArrayList<HotelPromotion> list;

    public HotelPromotionList() {
        list = new ArrayList<>();
    }
    
    public HotelPromotionList(ArrayList<HotelPromotion> list){
        this.list = list;
    }

    public ArrayList<HotelPromotion> getList() {
        return list;
    }
    
    public boolean isEmpty(){return list.isEmpty();}
    
    public HotelPromotion getPromotion(int promotionId){
        for(HotelPromotion hp : list){
            if(hp.getHpid() == promotionId) return hp;
        }
        return null;
    }
}
