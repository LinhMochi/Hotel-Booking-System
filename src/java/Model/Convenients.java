/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author Duong
 */
public class Convenients {
    private int conCateId;
    private int conId;
    private String convenient;
    private String convenientCategory;

    public Convenients() {
    }

    public Convenients(int conCateId, int conId, String convenient, String convenientCategory) {
        this.conCateId = conCateId;
        this.conId = conId;
        this.convenient = convenient;
        this.convenientCategory = convenientCategory;
    }

    public int getConCateId() {
        return conCateId;
    }

    public void setConCateId(int conCateId) {
        this.conCateId = conCateId;
    }

    public int getConId() {
        return conId;
    }

    public void setConId(int conId) {
        this.conId = conId;
    }

    public String getConvenient() {
        return convenient;
    }

    public void setConvenient(String convenient) {
        this.convenient = convenient;
    }

    public String getConvenientCategory() {
        return convenientCategory;
    }

    public void setConvenientCategory(String convenientCategory) {
        this.convenientCategory = convenientCategory;
    }

    
    
}
