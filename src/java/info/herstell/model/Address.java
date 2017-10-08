/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package info.herstell.model;

/**
 *
 * author Video-Schulung
 */
public class Address {
    private String city;
    private String zip;

    public Address() {
    }

    public Address(String city, String zip) {
        this.city = city;
        this.zip = zip;
    }

    
    
    
    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }
    
    
    
}
