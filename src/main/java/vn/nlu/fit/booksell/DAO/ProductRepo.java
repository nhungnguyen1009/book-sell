package vn.nlu.fit.booksell.DAO;

import vn.nlu.fit.booksell.connection2.DBconnection2;
import vn.nlu.fit.booksell.connections.DBConnection;
import vn.nlu.fit.booksell.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductRepo {
    public static ArrayList<Product> getProducts(int limit) {
        ArrayList<Product> list = new ArrayList();
        try {
//        SELECT * FROM `products`
//        LIMIT 5
//        OFFSET 10
            Connection connection = DBconnection2.getMySQLConnection();
            String mySQL2 = "SELECT * FROM `products`";

            PreparedStatement pr = connection.prepareStatement(mySQL2);
//            pr.setInt(1, limit);
//            pr.setInt(1, limit);
            ResultSet rss = pr.executeQuery();

            while (rss.next()) {
                int id = rss.getInt(1);
                String url = rss.getString("url");
                String name = rss.getString("name");
                String ct = rss.getString("content");
                Product p = new Product();
                p.setId(id);
                p.setUrl(url);
                p.setName(name);
                p.setContent(ct);

                list.add(p);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

//    public static ArrayList<Product> getProducts() {
//        return null;
//    }
}
