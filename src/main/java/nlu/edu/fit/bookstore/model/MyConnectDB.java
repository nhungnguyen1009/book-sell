package nlu.edu.fit.bookstore.model;

import java.sql.*;

public class MyConnectDB {
    String sql;
    public MyConnectDB(){

    }
    public Connection connect() throws Exception {
        try {
            Connection connect= DriverManager.getConnection(this.sql);
            return connect;

        }catch (SQLException e){
            System.out.println(e.getMessage());

        }

        return null;
    }
    public void thucThiCauLenh(String sql) throws Exception{
        Connection connect=connect();
        Statement statement=connect.createStatement();
        statement.executeUpdate(sql);

    }
    public ResultSet chonDuLieuTuDTB(String sql) throws Exception {
        Connection connect=connect();
        Statement statement=connect.createStatement();
        ResultSet rs=statement.executeQuery(sql);
        return rs;
    }
}
