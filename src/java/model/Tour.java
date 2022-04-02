/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author HP
 */
public class Tour {
    private int id;
    private String name;
    private int destination_id;
    private String destination_name;
    private String description1;
    private String description2;
    private String time;
    private float price;
    private String img1;
    private String img2;

    public Tour() {
    }

    public Tour(int id, String name, int destination_id, String destination_name, String description1, String description2, String time, float price, String img1, String img2) {
        this.id = id;
        this.name = name;
        this.destination_id = destination_id;
        this.destination_name = destination_name;
        this.description1 = description1;
        this.description2 = description2;
        this.time = time;
        this.price = price;
        this.img1 = img1;
        this.img2 = img2;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getDestination_id() {
        return destination_id;
    }

    public void setDestination_id(int destination_id) {
        this.destination_id = destination_id;
    }

    public String getDestination_name() {
        return destination_name;
    }

    public void setDestination_name(String destination_name) {
        this.destination_name = destination_name;
    }

    public String getDescription1() {
        return description1;
    }

    public void setDescription1(String description1) {
        this.description1 = description1;
    }

    public String getDescription2() {
        return description2;
    }

    public void setDescription2(String description2) {
        this.description2 = description2;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getImg1() {
        return img1;
    }

    public void setImg1(String img1) {
        this.img1 = img1;
    }

    public String getImg2() {
        return img2;
    }

    public void setImg2(String img2) {
        this.img2 = img2;
    }

    @Override
    public String toString() {
        return "Tour{" + "id=" + id + ", name=" + name + ", destination_id=" + destination_id + ", destination_name=" + destination_name + ", description1=" + description1 + ", description2=" + description2 + ", time=" + time + ", price=" + price + ", img1=" + img1 + ", img2=" + img2 + '}';
    }
    
    
    
    

}
