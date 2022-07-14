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
    private int id;
    private String convenient;
    private String convenientCategory;

    public Convenients() {
    }

    public Convenients(int id, String convenient, String convenientCategory) {
        this.id = id;
        this.convenient = convenient;
        this.convenientCategory = convenientCategory;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
