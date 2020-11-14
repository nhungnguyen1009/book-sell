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
    public static boolean login(String username, String pass) {
        ArrayList<User> list = new ArrayList<>();
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
            return rss.next();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return false;
    }

    // cần user info để lưu session
    public static void main(String[] args) {
        LoginRepo.login("nhun3g", "123");
    }
}
