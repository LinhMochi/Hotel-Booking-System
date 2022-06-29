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
public class HotelConvenientList {
    ArrayList<HotelConvenient> list;

    public HotelConvenientList() {
        list = new ArrayList<>();
    }

    public HotelConvenientList(ArrayList<HotelConvenient> list) {
        this.list = list;
    }
    public boolean isEmpty(){return list.isEmpty();}
    
    public int getSize(int hotelId){
        int count = 0;
        boolean flag = false;
        
        for(HotelConvenient hc: list){
            if(hc.getHotelId() == hotelId){
                flag=true;//doi bit mean bat dau dem
                count ++;
            }
            if(flag&&hc.getHotelId()!=hotelId) break;// dem het tien ich cua khach san --> thoat
        }
        return count;
    }
    
    public ArrayList<HotelConvenient> getHotelConvenient(int hotelId){
        ArrayList<HotelConvenient> hcs = new ArrayList<>();
        for(HotelConvenient hc: list){
            if(hc.getHotelId()==hotelId) hcs.add(hc);
        }
        return hcs;
    }
    
}
