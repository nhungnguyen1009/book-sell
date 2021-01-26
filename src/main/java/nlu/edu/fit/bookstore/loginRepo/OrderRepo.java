package nlu.edu.fit.bookstore.loginRepo;

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.Order;

import java.sql.*;
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
    public static void deleteOrder(int id) {
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "delete from order where id=?";
            PreparedStatement pr = conn.prepareStatement(sql);

            pr.setInt(1, id);

            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    public static void addOrder(Order order){
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql ="insert into order(id, date, price, user_id, staff_id)" +
                    " VALUES (?,?,?,?,?)";

            PreparedStatement pr = conn.prepareStatement(sql);

            pr.setInt(1, order.getId());
            Timestamp now = new Timestamp(new Date().getTime());
            pr.setTimestamp(2, (now));
            pr.setDouble(3, order.getPrice());
            pr.setInt(4, order.getUser_id());
            pr.setInt(5, order.getStaff_id());


            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


}
