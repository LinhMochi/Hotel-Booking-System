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
public class ConvenientCategory {
    private int id;
    private String category;

    public ConvenientCategory() {
    }

    public ConvenientCategory(int id, String category) {
        this.id = id;
        this.category = category;
    }
    
    public int getId() {
        return id;
    }

    public String getCategory() {
        return category;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    
}
