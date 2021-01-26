package nlu.edu.fit.bookstore.model;

import javax.servlet.http.HttpSession;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

public class Cart implements Serializable {
    Map<Integer, CartItem> data = new HashMap<>();

    public Cart(){

    }
    public void put(CartItem p){
        if(p == null) return;
        if(data.containsKey(p.getP().getId())){
            data.get(p.getP().getId()).add();
            return;
        }
        p.setQuantity(1);
        data.put(p.getP().getId(), p);
    }
    public void update(String id, int quantity){
        if(quantity < 0) return;
        if(data.containsKey(id))
            data.get(id).setQuantity(quantity);
    }
    public void remove(int productId){
        data.remove(productId);
    }

    public long total(){
        long sum =0;
        for(CartItem p :data.values()){
            sum += p.price();
        }
        return sum;
    }
    public int quantity(){
        int sum =0;
        for(CartItem p :data.values()){
            sum += p.getQuantity();
        }
        return sum;
    }
    public static Cart getCart(HttpSession session){
        return session.getAttribute("cart") == null ? new Cart() : (Cart) session.getAttribute("cart");
    }

    public Collection<CartItem> getData(){
        return data.values();
    }
    public void commit(HttpSession session){
        session.setAttribute("cart", this);
    }
}
