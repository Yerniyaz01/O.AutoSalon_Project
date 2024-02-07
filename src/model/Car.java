package model;

import java.sql.Date;

public class Car {
    private int id;
    private String brand;
    private String model;
    private int price;
    private double volume;
    private Date date;
    private City city;

    public Car() {
    }

    public Car(int id, String brand, String model, int price, double volume, Date date, City city) {
        this.id = id;
        this.brand = brand;
        this.model = model;
        this.price = price;
        this.volume = volume;
        this.date = date;
        this.city = city;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public double getVolume() {
        return volume;
    }

    public void setVolume(double volume) {
        this.volume = volume;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }
}
