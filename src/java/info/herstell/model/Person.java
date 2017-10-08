/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package info.herstell.model;

/**
 * Plain
 * Object
 * JAVA
 * Object
 * 
 *  @author Video-Schulung
 */
public class Person {
    private Integer id;
    private String firstname;
    private String lastname;
    private String e_mail;

    
    public Person() {
    }

    public Person(String firstname, String lastname) {
        this.firstname = firstname;
        this.lastname = lastname;
    }

    
    
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getE_mail() {
        return e_mail;
    }

    public void setE_mail(String e_mail) {
        this.e_mail = e_mail;
    }
    
    public String fullname(){
        return this.firstname + " " + lastname;
    }
    
}
