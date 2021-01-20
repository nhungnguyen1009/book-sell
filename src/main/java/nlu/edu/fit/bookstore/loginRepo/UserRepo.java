package nlu.edu.fit.bookstore.loginRepo;

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class UserRepo {
    public static ArrayList<User> getUsers(int limit) {
        ArrayList<User> list = new ArrayList();
        try {
//        SELECT * FROM `products`
//        LIMIT 5
//        OFFSET 10
            Connection connection = DBconnection.getMySQLConnection();
            String mySQL2 = "SELECT * FROM `user`";

            PreparedStatement pr = connection.prepareStatement(mySQL2);
//            pr.setInt(1, limit);
//            pr.setInt(1, limit);
            ResultSet rss = pr.executeQuery();

            while (rss.next()) {
                int id = rss.getInt(1);
                String name = rss.getString("username");
                String pass = rss.getString("password");
                String address = rss.getString("address");
                String email=rss.getString("email");
                String sex=rss.getString("sex");
                int phone=rss.getInt("phone");
                User u = new User();
                u.setId(id);
                u.setUsername(name);
                u.setEmail(email);
                u.setPassword(pass);
                u.setAddress(address);
                u.setPhone(phone);
                u.setSex(sex);

                list.add(u);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }
}
