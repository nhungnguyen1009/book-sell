package nlu.edu.fit.bookstore.loginRepo;

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LoginRepo {
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
                String password = rss.getString("password");
                user.setId(id);
                user.setUsername(name);
                user.setPassword(password);
            }
            return user;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    // cần user info để lưu session
    public static void main(String[] args) {

        System.out.println(LoginRepo.login("nhung", "123"));
    }
}
