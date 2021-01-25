package nlu.edu.fit.bookstore.loginRepo;

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.Publisher;
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
                String fullname=rss.getString("fullname");
                String address = rss.getString("address");
                String email=rss.getString("email");
                String sex=rss.getString("sex");
                int phone=rss.getInt("phone");
                User u = new User();
                u.setId(id);
                u.setUsername(name);
                u.setFullname(fullname);
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
    public static void deleteUser(int id) {
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "delete from user where id=?";
            PreparedStatement pr = conn.prepareStatement(sql);

            pr.setInt(1, id);

            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    public static void addUser(User u) {

        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "insert into user(id, username,fullname, password,address, email,sex)" +
                    " VALUES (?,?,?,?,?,?,?)";
            PreparedStatement pr = conn.prepareStatement(sql);

            pr.setInt(1, u.getId());
            pr.setString(2, u.getUsername());
            pr.setString(3, u.getFullname());
            pr.setString(4,u.getPassword());
            pr.setString(5,u.getAddress());
            pr.setString(6,u.getEmail());
            pr.setString(7,u.getSex());



            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }
}
