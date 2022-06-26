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
public class HotelRateList {
    ArrayList<HotelRate> list;

    public HotelRateList(){
        list = new ArrayList<>();
    }
    
    public HotelRateList(ArrayList<HotelRate> list){
        this.list = list;
    }
    
    public int getNoRate(int hotelId){
        int no = 0;
        for(HotelRate hr: list){
            if(hr.getHotelId() == hotelId) no++;
        }
        return no;
    }
    public double getAvenrageScore(int hotelId){
        double total = 0;
        int no = 0;
        for(HotelRate hr:list){
            if(hr.getHotelId() == hotelId){
                no++;
                total+=hr.getScore();
            }
        }
        return total/no;
    } 
    
    
    
}
