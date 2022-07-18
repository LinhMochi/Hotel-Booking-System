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
public class HotelLikeLogList {
    ArrayList<HotelLikeLog> list;

    public HotelLikeLogList() {
        list = new ArrayList<>();
    }

    public HotelLikeLogList(ArrayList<HotelLikeLog> list) {
        this.list = list;
    }
    
    public int getNoLike(int hotelId){
        int total=0;
        boolean flag = false;
        for(HotelLikeLog hl:list){
            if(hl.getHotelId() == hotelId){ 
                total++;
                flag=true;
            }
            if(flag&&hl.getHotelId()!=hotelId) break; 
        }
        return total;
    }
    
    public boolean checkLike(int userId,int hotelId){
        for(HotelLikeLog hl:list){
            if(hl.getHotelId() == hotelId&&hl.getUserId() == userId){ 
                return true;
            }
        }
        return false;
    }
 
}
