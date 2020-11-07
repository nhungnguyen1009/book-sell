package vn.nlu.fit.booksell.connections;

import java.sql.*;

public class DBConnection {
    private static String USER = "root";
    private static String PASS = "";

    private static String hostName = "localhost";
    private static String dbName = "book";
    private static String connectionURL = "jdbc:mysql://" + hostName + ":3306/" + dbName;

    public static Connection getMySQLConnection() {
        Connection conn = null;
        try {
            // Khai báo thư viện
            Class.forName("com.mysql.jdbc.Driver");
            try {
                // tạo kết nối
                conn = DriverManager.getConnection(connectionURL, USER, PASS);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        return conn;
    }

//    public static void main(String[] args) {
//        Connection connection = DBConnection.getMySQLConnection();
//        String sql = "SELECT * FROM `user`";
//        try {
//            PreparedStatement pr = connection.prepareStatement(sql);
//            ResultSet rs = pr.executeQuery();
//            while (rs.next()) {
//                int id = rs.getInt(1);
//                String name = rs.getString("name");
//                System.out.println("id: " + id + "\tname: " + name);
//            }
//        } catch (SQLException throwables) {
//            throwables.printStackTrace();
//        }
//    }
}
