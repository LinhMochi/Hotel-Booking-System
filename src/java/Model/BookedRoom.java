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
public class BookedRoom extends Room{
    int reservationId;  
    double discount;

    public BookedRoom() {
        discount = 0;
    }
    
    public BookedRoom(Room room, double discount) {
        super(room);
        this.discount = discount;
    }

    
    public BookedRoom( Room room, double discount,int reservationId) {
        super(room);
        this.reservationId = reservationId;
        this.discount = discount;
    }

    public int getReservationId() {
        return reservationId;
    }

    public void setReservationId(int reservationId) {
        this.reservationId = reservationId;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }
}
