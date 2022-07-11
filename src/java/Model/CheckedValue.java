package Model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Admin
 */
public class CheckedValue {
    private String[] checked;

    public CheckedValue() {
    }

    public CheckedValue(String[] checked) {
        this.checked = checked;
    }
    
    public boolean isChecked(String value){
        if(checked.length==0) return false;
        for(String s:checked){
            if(value.equals(s)) return true; 
        }
        return false;
    }
    public boolean isChecked(int value){
        if(checked.length==0) return false;
        for(String s:checked){
            if((value+"").equals(s)) return true; 
        }
        return false;
    }
}
//class demo{
//    public static void main(String[] args) {
//        String [] arr = {"1","2"};
//        CheckedValue c = new CheckedValue(arr);
//        System.out.println(c.isChecked(3));
//    }
//}
