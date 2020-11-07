package vn.nlu.fit.booksell.connection2;

import vn.nlu.fit.booksell.model.Product;

import java.sql.*;
import java.util.ArrayList;

public class DBconnection2 {
    private static  String USER ="root";
    private static String password = "";
    private static String hostname = "localhost";
    private static String dbname = "book";
    private static String connectionURL = "jdbc:mysql://" + hostname + ":3306/" + dbname;


    public static Connection getMySQLConnection(){
        Connection cnt = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            try {
                cnt = DriverManager.getConnection(connectionURL, USER, password);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return cnt;
    }
//
    public static void main(String[] args) {
        Connection connection = DBconnection2.getMySQLConnection();
        String mySQL2 = "SELECT * FROM `products`";
        ArrayList<Product> list = new ArrayList();

        try {
            PreparedStatement pr = connection.prepareStatement(mySQL2);
            ResultSet rss = pr.executeQuery();

            while (rss.next()){
                int id = rss.getInt(1);
                String url = rss.getString("url");
                String name = rss.getString("name");
//                Product products = new Product(id, url, name);
//                list.add(products);
                System.out.println(id +"\t" + url + "\t" + name);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

//        return list;

    }
}
