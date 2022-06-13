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
public class GenerateRandom {
    private final  String otp_src = "0123456789";
    private final String alpha_src = "abcdefjhigklmnopqrstuvwzxy";

    public GenerateRandom() {
    }
    
    
    public String getOtp(){
        StringBuilder str = new StringBuilder("");
        int length = otp_src.length();
        // 
        for(int i =0; i<5;i++){
            str.append(otp_src.charAt((int)Math.round((length-1)*Math.random())));
        }
        return str.toString();
    }
}
