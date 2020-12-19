package nlu.edu.fit.bookstore.filter;

import java.util.HashMap;
import java.util.Map;

import nlu.edu.fit.bookstore.model.Product;

public class Data {
    public static Map<String, Product>data=new HashMap<>();
    static {
        data.put("01",new Product("01", "s", "a", 1500, 25666));
        data.put("02",new Product("01", "s", "a", 1500, 25666));
        data.put("03",new Product("01", "s", "a", 1500, 25666));
        data.put("04",new Product("01", "s", "a", 1500, 25666));
        data.put("05",new Product("01", "s", "a", 1500, 25666));
        data.put("06",new Product("01", "s", "a", 1500, 25666));
        data.put("07",new Product("01", "s", "a", 1500, 25666));
    }

}
