/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package info.herstell.ctrl;

import info.herstell.model.Person;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

/**
 *
 * @author Video-Schulung
 */
public class ListPersonen {

    private List<Person> pelist;

    public ListPersonen() {
        pelist = new ArrayList();

    }

    public List<Person> getPeList() {
        return pelist;
    }

    public void setList(List<Person> list) {
        this.pelist = list;
    }

    public void removeElement(int id) {
        pelist.remove(id);

    }

    public void addElement(Person p) {
        p.setId(pelist.size());
        pelist.add(p);
    }

    public String giveRandom() {
        Random rnd = new Random();
        if (pelist.size() > 0) {
            Person p = pelist.get(rnd.nextInt(pelist.size()));
            String fullname = p.fullname();
            return fullname;
        }
        return "";
    }
}
