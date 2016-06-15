package com.ucuenca.edu.ec.backaplication.domain;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
// from http://www.vogella.com/articles/REST/
// JAX-RS supports an automatic mapping from JAXB annotated class to XML and JSON
public class State {

    private int id;
    private String description;

    public String getState() {
        return description;
    }

    public void setsState(String firstName) {
        this.description = firstName;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
