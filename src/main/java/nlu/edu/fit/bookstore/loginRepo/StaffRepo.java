package nlu.edu.fit.bookstore.loginRepo;

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.model.Staff;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

public class StaffRepo {
    public static ArrayList<Staff> getStaff(int limit) {
        ArrayList<Staff> list = new ArrayList();
        try {
//        SELECT * FROM `products`
//        LIMIT 5
//        OFFSET 10
            Connection connection = DBconnection.getMySQLConnection();
            String mySQL2 = "SELECT * FROM `staff`";

            PreparedStatement pr = connection.prepareStatement(mySQL2);
//            pr.setInt(1, limit);
//            pr.setInt(1, limit);
            ResultSet rss = pr.executeQuery();

            while (rss.next()) {
                int id = rss.getInt(1);
                String name = rss.getString("name");
                Date dayToWork = rss.getDate("dayToWork");
                int phone = rss.getInt("phone");
                Double salary=rss.getDouble("salary");
                Staff s = new Staff();
                s.setId(id);
                s.setName(name);
                s.setDayToWork(dayToWork);
                s.setPhone(phone);
                s.setSalary(salary);

                list.add(s);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }
    public static void addStaff(Staff s){
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "insert into staff(id, name, dayToWork, phone, salary)" +
                    " VALUES (?,?,?,?,?)";
            PreparedStatement pr = conn.prepareStatement(sql);

            pr.setInt(1, s.getId());
            pr.setString(2, s.getName());
            pr.setDate(3, (java.sql.Date) s.getDayToWork());
            pr.setInt(4, s.getPhone());
            pr.setDouble(5, s.getSalary());

            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


}

