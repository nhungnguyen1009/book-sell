package nlu.edu.fit.bookstore.repo;

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.User;
import nlu.edu.fit.bookstore.utils.MD5;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AccountRepo {
    // return true/ false
    public static User login(String username, String pass) {
        User user = new User();
        try {
            Connection connection = new DBconnection().getMySQLConnection();
            String query = "SELECT * FROM `user` " +
                    "WHERE username = ? and password = ?";

            PreparedStatement pr = connection.prepareStatement(query);
            pr.setString(1, username);
            pr.setString(2, pass);
            ResultSet rss = pr.executeQuery();
            // có return về user
            // k có return null
            if (rss.next()) {
                int id = rss.getInt(1);
                String name = rss.getString("username");
                String fullname = rss.getString("fullname");
                String email = rss.getString("email");
                user.setId(id);
                user.setUsername(name);
                user.setFullname(fullname);
                user.setEmail(email);
                return user;
            }
            return null;
        } catch (SQLException throwables) {
            return null;
        }
    }

    public static boolean signin(String fullname, String email, String username, String pass) {
        try {
            Connection connection = new DBconnection().getMySQLConnection();
            String query = "INSERT INTO user(fullname, email, username, password) " +
                    "VALUES(?, ?, ?, ?)";

            PreparedStatement pr = connection.prepareStatement(query);
            pr.setString(1, fullname);
            pr.setString(2, email);
            pr.setString(3, username);
            pr.setString(4, pass);
            int rss = pr.executeUpdate();
            // có return về user
            // k có return null
            System.out.println(rss);
            return true;
        } catch (SQLException throwables) {
            System.out.println(throwables);
            return false;
        }
    }

    public static boolean checkUsername(String username) {
        try {
            Connection connection = new DBconnection().getMySQLConnection();
            String query = "SELECT * FROM `user` " +
                    "WHERE username = ?";

            PreparedStatement pr = connection.prepareStatement(query);
            pr.setString(1, username);
            ResultSet rss = pr.executeQuery();
            // có return về user
            // k có return null
            return rss.next();
        } catch (SQLException throwables) {
            return false;
        }
    }

    public static boolean updateToken(String token, String email) {
        try {
            Connection connection = new DBconnection().getMySQLConnection();
            String query = "UPDATE `user` SET token = ?" +
                    "WHERE email = ?";

            PreparedStatement pr = connection.prepareStatement(query);
            pr.setString(1, token);
            pr.setString(2, email);
            int rss = pr.executeUpdate();
            System.out.println(rss);
            System.out.println("mmmm");
            return true;
        } catch (SQLException throwables) {
            return false;
        }
    }

    public static String getToken(String email) {
        User user = new User();
        try {
            Connection connection = new DBconnection().getMySQLConnection();
            String query = "SELECT * FROM user " +
                    "WHERE email = ?";

            PreparedStatement pr = connection.prepareStatement(query);
            pr.setString(1, email);
            ResultSet rss = pr.executeQuery();
            if (rss.next()) {

                return rss.getString("token");
            }
            return null;
        } catch (SQLException throwables) {
            return null;
        }
    }

    public static boolean updatePass(String pass, String email) {
        try {
            Connection connection = new DBconnection().getMySQLConnection();
            String query = "UPDATE `user` SET password = ?" +
                    "WHERE email = ?";

            PreparedStatement pr = connection.prepareStatement(query);
            pr.setString(1, MD5.encryption(pass));
            pr.setString(2, email);
            int rss = pr.executeUpdate();
            return true;
        } catch (SQLException throwables) {
            return false;
        }
    }

    // cần user info để lưu session
//    public static void main(String[] args) {
//        System.out.println(getToken("quochuynh1305@gmail.com"));
//    }
}
