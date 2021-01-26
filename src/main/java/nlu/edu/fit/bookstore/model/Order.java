package nlu.edu.fit.bookstore.model;

import java.util.Date;

public class Order {
    private int id;
    private Date date;
    private double price;
    private int user_id;
    private int staff_id;
    private String payments;
    private int quantity;

    public Order() {
    }

    public Order(int id, Date date, double price, int user_id, int staff_id,String payments,int quantity) {
        this.id = id;
        this.date = date;
        this.price = price;
        this.user_id = user_id;
        this.staff_id = staff_id;
        this.payments = payments;
        this.quantity=quantity;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(int staff_id) {
        this.staff_id = staff_id;
    }

    public String getPayments() {
        return payments;
    }

    public void setPayments(String payments) {
        this.payments = payments;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}
