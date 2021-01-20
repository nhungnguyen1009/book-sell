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
                Product p = new Product();
                p.setId(id);
                p.setUrl(url);
                p.setName(name);
                p.setDescription(ct);

                list.add(p);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }
//Ban chay

//    public static ArrayList<Product> getP(int limit) {
//        ArrayList<Product> listData = new ArrayList();
//        try {
////        SELECT * FROM `products`
////        LIMIT 5
////        OFFSET 10
//            Connection connection = DBconnection.getMySQLConnection();
//            String mySQL2 = "SELECT * FROM `products` LIMIT 5 OFFSET 10";
//
//            PreparedStatement pr = connection.prepareStatement(mySQL2);
////            pr.setInt(1, limit);
////            pr.setInt(1, limit);
//            ResultSet rss = pr.executeQuery();
//
//            while (rss.next()) {
//                int id = rss.getInt(1);
//                String url = rss.getString("url_picture");
//                String name = rss.getString("name");
//                String ct = rss.getString("description");
//                Product p = new Product();
//                p.setId(id);
//                p.setUrl(url);
//                p.setName(name);
//                p.setContent(ct);
//
//                listData.add(p);
//            }
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//        return listData;
//    }


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
                p.setId(idProduct);
                p.setUrl(url);
                p.setName(name);
                p.setDescription(ct);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return p;
    }


}
