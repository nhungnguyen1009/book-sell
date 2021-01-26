package nlu.edu.fit.bookstore.repo;
import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.Product;
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
            Connection connection = DBconnection.getMySQLConnection();
            String mySQL2 = "SELECT * FROM `products`";

            PreparedStatement pr = connection.prepareStatement(mySQL2);
//            pr.setInt(1, limit);
//            pr.setInt(1, limit);
            ResultSet rss = pr.executeQuery();

            while (rss.next()) {
                int id = rss.getInt(1);
                String url = rss.getString("url_picture");
                String name = rss.getString("name");
                String ct = rss.getString("description");
                long price = rss.getLong("price");
                Product p = new Product();
                p.setId(id);
                p.setUrl(url);
                p.setName(name);
                p.setDescription(ct);
                p.setPrice(price);

                list.add(p);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }


    public static Product getProduct(int id) {
        Connection connection = DBconnection.getMySQLConnection();
        String mySQL2 = "SELECT * FROM `products` WHERE ID=?";
        Product p = new Product();
        try {
            PreparedStatement pr = connection.prepareStatement(mySQL2);
    pr.setInt(1, id);
            ResultSet rss = pr.executeQuery();
            while (rss.next()) {
                int idProduct = rss.getInt(1);
                String url = rss.getString("url_picture");
                String name = rss.getString("name");
                String ct = rss.getString("description");
                long price = rss.getLong("price");
                p.setId(idProduct);
                p.setUrl(url);
                p.setName(name);
                p.setDescription(ct);
                p.setPrice(price);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return p;
    }


}
