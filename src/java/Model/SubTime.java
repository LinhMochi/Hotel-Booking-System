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
public class SubTime {

    private final String current;
    private final java.text.SimpleDateFormat formater = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

    public SubTime() {
        current = formater.format(new java.util.Date(System.currentTimeMillis()));
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

    public String getCurrent() {
        return current;
    }
}
