/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Date;

/**
 *
 * @author Linh
 */
public class User {

        private int id;
        private String fullName;
        private int gender;
        private Date dob;
        private String email;
        private String address;
        private String avatar;
        private String phoneNumber;
        private String password;
        private String role;
        private String status;
        
        
        private int times;
        public User() {
        }

        public User(String email) {
            if (email != null) {
                this.email = email;
            }
        }

        public User(int id, String fullName, int gender, Date dob, String email, String address, String avatar, String phoneNumber, String password, String role, String status, int times) {
            this.id = id;
            this.fullName = fullName;
            this.gender = gender;
            this.dob = dob;
            this.email = email;
            this.address = address;
            this.avatar = avatar;
            this.phoneNumber = phoneNumber;
            this.password = password;
            this.role = role;
            this.status = status;
            this.times = times;

        }



        public User(int id, String fullName, int gender, Date dob, String email, String address, String avatar, String phoneNumber, String password, String role, String status) {
            this.id = id;
            this.fullName = fullName;
            this.gender = gender;
            this.dob = dob;
            this.email = email;
            this.address = address;
            this.avatar = avatar;
            this.phoneNumber = phoneNumber;
            this.password = password;
            this.role = role;
            this.status = status;
        }

        public User(String fullName, int gender, Date dob, String email, String address, String avatar, String phoneNumber, String password) {
            this.fullName = fullName;
            this.gender = gender;
            this.dob = dob;
            this.email = email;
            this.address = address;
            this.avatar = avatar;
            this.phoneNumber = phoneNumber;
            this.password = password;
        }

        public User(String role, String status) {
            this.role = role;
            this.status = status;
        }

        public int getId() {
            return id;
        }

        public void setId(int id) {
            this.id = id;
        }

        public String getFullName() {
            return fullName;
        }

        public void setFullName(String fullName) {
            this.fullName = fullName;
        }

        public int getGender() {
            return gender;
        }

        public void setGender(int gender) {
            this.gender = gender;
        }

        public Date getDob() {
            return dob;
        }

        public void setDob(Date dob) {
            this.dob = dob;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }


    public int getTimes() {
        return times;
    }

    public void setTimes(int times) {
        this.times = times;
    }


//    public User(int id, String fullName, int gender, Date dob, String email, String address, String avatar, String phoneNumber, String password, String role, String status) {
//        this.id = id;
//        this.fullName = fullName;
//        this.gender = gender;
//        this.dob = dob;
//        this.email = email;
//        this.address = address;
//        this.avatar = avatar;
//        this.phoneNumber = phoneNumber;
//        this.password = password;
//        this.role = role;
//        this.status = status;
//    }

//    public User(String fullName, int gender, Date dob, String email, String address, String avatar, String phoneNumber, String password) {
//        this.fullName = fullName;
//        this.gender = gender;
//        this.dob = dob;
//        this.email = email;
//        this.address = address;
//        this.avatar = avatar;
//        this.phoneNumber = phoneNumber;
//        this.password = password;
//    }
//
//    public User(String role, String status) {
//        this.role = role;
//        this.status = status;
//    }
//
//    public int getId() {
//        return id;
//    }
//
//    public void setId(int id) {
//        this.id = id;
//    }
//
//    public String getFullName() {
//        return fullName;
//    }
//
//    public void setFullName(String fullName) {
//        this.fullName = fullName;
//    }
//
//    public int getGender() {
//        return gender;
//    }
//
//    public void setGender(int gender) {
//        this.gender = gender;
//    }
    
    public String getgen(){
        switch(gender){
            case 0: return "Bí mật";
            case 1: return "Nam";
            case 2: return "Nữ";
            case 3: return "Khác";
            default: return "Lỗi";
        }
    }

//    public Date getDob() {
//        return dob;
//    }
//    
    public String getdob(){
        String[] s = new java.text.SimpleDateFormat("yyyy-M-dd").format(new java.util.Date(dob.getTime())).split("-");
        
        return "Ngày "+s[2]+",tháng "+s[1]+" năm "+s[0];
    }

//    public void setDob(Date dob) {
//        this.dob = dob;
//    }
//
//    public String getEmail() {
//        return email;
//    }
//
//    public void setEmail(String email) {
//        this.email = email;
//    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    public boolean isManager(){
        return role.equals("Manager");
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", fullName=" + fullName + ", gender=" + gender + ", dob=" + dob + ", email=" + email + ", address=" + address + ", avatar=" + avatar + ", phoneNumber=" + phoneNumber + ", password=" + password + ", role=" + role + ", status=" + status + ", times=" + times + '}';
    }

    
    
}
