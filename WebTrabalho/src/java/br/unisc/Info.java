/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.unisc;

import java.sql.Blob;

/**
 *
 * @author m91223
 */
public class Info {
    private String id;
    private String latitude;
    private String longitude;
    private Blob photo; 

    public Info() {
    }

    public Info(String id, String latitude, String longitude, Blob photo) {
        this.id = id;
        this.latitude = latitude;
        this.longitude = longitude;
        this.photo = photo;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLatitude() {
        return latitude;
    }

    public void setLatitude(String latitude) {
        this.latitude = latitude;
    }

    public String getLongitude() {
        return longitude;
    }

    public void setLongitude(String longitude) {
        this.longitude = longitude;
    }

    public Blob getPhoto() {
        return photo;
    }

    public void setPhoto(Blob photo) {
        this.photo = photo;
    }
    
    
    
}
