package nlu.edu.fit.bookstore.loginRepo;

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.MyConnectDB;
import nlu.edu.fit.bookstore.model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProductRepo {

    public static void addProduct(Product product) {
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "insert into products(id, name, url_picture, description, price, quantity, review, publisher_id)" +
                    " VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement pr = conn.prepareStatement(sql);

            pr.setInt(1, product.getId());
            pr.setString(2, product.getName());
            pr.setString(3, product.getImg());
            pr.setString(4, product.getDescription());
            pr.setDouble(5, product.getPrice());
            pr.setInt(6, product.getQuantity());
            pr.setString(7, product.getCategory());
            pr.setString(8, null);

            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }

    public static void deleteProduct(int id) {
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "delete from products where id=?";
            PreparedStatement pr = conn.prepareStatement(sql);

            pr.setInt(1, id);

            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void editProduct(Product p) {
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "update products set name=?,url_picture=?, description=?, price=? ,quantity=?, review=?, publisher_id=? where id=?";
            PreparedStatement pr = conn.prepareStatement(sql);


            pr.setString(1, p.getName());
            pr.setString(2, p.getImg());
            pr.setString(3, p.getDescription());
            pr.setDouble(4, p.getPrice());
            pr.setInt(5, p.getQuantity());
            pr.setString(6, p.getCategory());
            pr.setInt(7, p.getIdAuthor());
            pr.setInt(8, p.getId());
//            System.out.println("p.getId()"+ p.getId());
            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }




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
}
