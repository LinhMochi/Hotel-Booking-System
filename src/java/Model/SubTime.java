/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.text.ParseException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class SubTime {

    private final String current;
    private final java.text.SimpleDateFormat formater = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public SubTime() {
        current = formater.format(new java.util.Date(System.currentTimeMillis()));
    }

    public String getCurrent() {
        return current;
    }
    
    
    // tach date into array
    public int[] splitDate(String date) {
        String list[] = date.split("[\\s\\-\\:]");
        int[] arr = new int[6];
        for (int i = 0; i < 6; i++) {
            arr[i] = Integer.parseInt(list[i].trim());
        }
        return arr;
    }

    public String subTime(String from) {
        int parseForm[] = splitDate(from);
        int parseCurrent[] = splitDate(current);
        int sub;
        for (int i = 0; i < 6; i++) {
            sub = parseCurrent[i] - parseForm[i];
            if (sub > 0) {
                return sub + getUnit(i);
            }
        }
        return "0 giây trước";
    }

    // return unit depen to index of time in array
    public String getUnit(int i) {
        switch (i) {
            case 0:
                return " năm trước.";
            case 1:
                return " tháng trước.";
            case 2:
                return " ngày trước.";
            case 3:
                return " giờ trước.";
            case 4:
                return " phút trước.";
            case 5:
                return " giây trước.";
        }
        return "lỗi getUnit of SubTime";
    }

 
 
}
//class demo{
//    public static void main(String[] args) {
//        try {
//            java.util.Date d1 = new java.text.SimpleDateFormat("yyyy-MM-dd").parse("2022-07-01");
//            java.util.Date d2 = new java.text.SimpleDateFormat("yyyy-MM-dd").parse("2022-08-03");
//            
//            long diff = d2.getTime() - d1.getTime();
//            
//            System.out.println("Difference between  " + d1 + " and "+ d2+" is "
//                    + (diff / (1000 * 60 * 60 * 24)) + " days.");
//        } catch (ParseException ex) {
//            Logger.getLogger(demo.class.getName()).log(Level.SEVERE, null, ex);
//        }
//    }
//}