/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author HP
 */
public class Cart {
    private int id;
    private String username;
    private int tourId;
    private String tourImg;
    private Date dateFrom;
    private float tourPrice;
    private int quantity;

    public Cart() {
    }

    public Cart(int id, String username, int tourId, String tourImg, Date dateFrom, float tourPrice, int quantity) {
        this.id = id;
        this.username = username;
        this.tourId = tourId;
        this.tourImg = tourImg;
        this.dateFrom = dateFrom;
        this.tourPrice = tourPrice;
        this.quantity = quantity;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public int getTourId() {
        return tourId;
    }

    public void setTourId(int tourId) {
        this.tourId = tourId;
    }

    public String getTourImg() {
        return tourImg;
    }

    public void setTourImg(String tourImg) {
        this.tourImg = tourImg;
    }

    public Date getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(Date dateFrom) {
        this.dateFrom = dateFrom;
    }

    public float getTourPrice() {
        return tourPrice;
    }

    public void setTourPrice(float tourPrice) {
        this.tourPrice = tourPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    
    
}
