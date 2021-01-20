package nlu.edu.fit.bookstore.loginRepo;

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.Order;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class OrderRepo {
    public static ArrayList<Order>getOrder(int limit){
    ArrayList<Order>list=new ArrayList<>();
    try {
        Connection connection= DBconnection.getMySQLConnection();
        String mySQL="SELECT * FROM 'order'";
        PreparedStatement pr=connection.prepareStatement(mySQL);
        ResultSet rss=pr.executeQuery();
        while(rss.next()){
            int id=rss.getInt(1);
            Date date=rss.getDate("date");
            double price=rss.getDouble("price");
            int user_id=rss.getInt("user_id");
            int staff_id=rss.getInt("staff_id");
            Order o=new Order();
            o.setId(id);
            o.setDate(date);
            o.setPrice(price);
            o.setUser_id(user_id);
            o.setStaff_id(staff_id);
            list.add(o);
        }
    }
   catch (SQLException throwables) {
        throwables.printStackTrace();
    }

        return list;
    }
}
