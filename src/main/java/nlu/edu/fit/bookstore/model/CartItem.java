package nlu.edu.fit.bookstore.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

public class CartItem extends Product implements Serializable {
   private Product p;
   private int quantity;

    public CartItem(Product p, int quantity) {
        this.p = p;
        this.quantity = quantity;
    }



    public Product getP() {
        return p;
    }

    public void setP(Product p) {
        this.p = p;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public long price(){
        long sum=0;
         sum += p.getPrice() * getQuantity();
        return sum;
    }


    public void add() {
    }
}
