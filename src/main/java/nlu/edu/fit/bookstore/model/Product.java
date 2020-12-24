package nlu.edu.fit.bookstore.model;

<<<<<<< HEAD
import java.io.Serializable;

public class Product implements Serializable {
    private String id;
    private String name;
    private String img;
    private long price;
    private long priceSale;
    private int quantity;
    private String nameAuthor;
    private String category;
    public Product() {

    }

    public Product(String id, String name, String img, long price, long priceSale, int quantity, String nameAuthor, String category) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.priceSale = priceSale;
        this.quantity = quantity;
        this.nameAuthor = nameAuthor;
        this.category = category;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getNameAuthor() {
        return nameAuthor;
    }

    public void setNameAuthor(String nameAuthor) {
        this.nameAuthor = nameAuthor;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getId() {
        return id;
    }
    public void setId(String id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public long getPrice() {
        return price;
    }
    public void setPrice(long price) {
        this.price = price;
    }
    public long getPriceSale() {
        return priceSale;
    }
    public void setPriceSale(long priceSale) {
        this.priceSale = priceSale;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
=======

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Product {
    int id;
    String url;
    String name;
    String content;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
>>>>>>> beb6171e031060683c3e3cdf6db133bf9756d9e2
    }
}
