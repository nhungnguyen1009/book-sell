package nlu.edu.fit.bookstore.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
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
}
