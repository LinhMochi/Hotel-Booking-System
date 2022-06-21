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
public class ReservationDetail {
    private int id; // reservationId;
    private ArrayList<BookedRoom> bookedRooms;
    private ArrayList<Service> bookedServices;
    private double total;
    

    public ReservationDetail() {
    }

    public ReservationDetail(int id, ArrayList<BookedRoom> bookedRooms, ArrayList<Service> bookedServices, double total) {
        this.id = id;
        this.bookedRooms = bookedRooms;
        this.bookedServices = bookedServices;
        this.total = total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public ArrayList<BookedRoom> getBookedRooms() {
        return bookedRooms;
    }

    public void setBookedRooms(ArrayList<BookedRoom> bookedRooms) {
        this.bookedRooms = bookedRooms;
    }

    public ArrayList<Service> getBookedServices() {
        return bookedServices;
    }

    public void setBookedServices(ArrayList<Service> bookedServices) {
        this.bookedServices = bookedServices;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }
    
    public double setTotal(){
        double t = 0;
        if(!isEmptyRoom()){
            for(BookedRoom br:bookedRooms){
                t+=br.getPrice()*br.getQuantity()*(1-br.getDiscount());
            }
        }
        if(!isEmptyService()){
            for(Service s:bookedServices){
                t+=s.getQuantity()*s.getPrice();
            }
        }
        return t;
    }
    
    public double getDiscountMoney(){
        double t = 0;
        if(!isEmptyRoom()){
            for(BookedRoom br:bookedRooms){
                t+=br.getPrice()*br.getQuantity()*(br.getDiscount());
            }
        }
        return t;
    }

    // book service
    
    //check empty service
    
    public boolean isEmptyService(){ return bookedServices.isEmpty();}
    
    public void clearService(){ bookedServices.clear();}
    
    public boolean checkService(int id){
        for(Service s:bookedServices){
            if(s.getId()==id) return true;
        }
        return false;
    }
    
    public Service getBookedService(int id){
        for(Service s:bookedServices){
            if(s.getId()==id){
                return s;
            }
        }
        return null;
    }
    
    public boolean removeService(int id){
        if(!checkService(id)) return false;
        else {
            bookedServices.remove(getBookedService(id));
            return true;
        }
    }
    
    public boolean updateServiceQuantity(int id,int quantity){
        for(Service s: bookedServices){
            if(s.getId() == id){
                if(quantity!=0) s.setQuantity(quantity);
                else removeService(id);
                return true;
            }
        }
        return false;
    }
    
    public boolean addService(Service s){// return true if add new, false if reset quantity
        if(checkService(s.getId())){
            updateServiceQuantity(s.getId(), s.getQuantity());
            return false;
        }
        else bookedServices.add(s);
        return true;
    }
    
    public boolean isEmptyRoom(){ return bookedRooms.isEmpty();}
    
    public boolean checkBookedRoom(int id){
        for(BookedRoom br:bookedRooms){
            if(br.getId()==id) return true;
        }
        return false;
    }
    
    public BookedRoom getBookedRoom(int id){
        for(BookedRoom br:bookedRooms){
            if(br.getId()==id) return br;
        }
        return null;
    }
    
    public boolean removeRoom(int id){
        BookedRoom br = getBookedRoom(id);
        if(br==null) return false;
        else {
            bookedRooms.remove(br);
            return true;
        }
    }
    
    public boolean updateBookedRoomQuantity(int id, int quantity){
        BookedRoom br = getBookedRoom(id);
        if(br==null) return false;
        else{
            if(quantity == 0) {
                removeRoom(id);
                if(isEmptyRoom()) clearService();
            }
            else br.setQuantity(quantity);
            return true;
        }
    }
    
    public boolean addBookedRoom(BookedRoom br){
        if(checkBookedRoom(br.getId())){
            updateBookedRoomQuantity(br.getId(), br.getQuantity());
            return false;
        }else{
            bookedRooms.add(br);
            return true;
        }
    }
    
    
}
