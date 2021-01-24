package nlu.edu.fit.bookstore.loginRepo;

import nlu.edu.fit.bookstore.connection.DBconnection;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.model.Staff;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;

public class StaffRepo {
    public static ArrayList<Staff> getStaffs(int limit) {
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
                Double salary = rss.getDouble("salary");
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

    public static Staff getStaff(int staffId) {
        try {
//        SELECT * FROM `products`
//        LIMIT 5
//        OFFSET 10
            Connection connection = DBconnection.getMySQLConnection();
            String mySQL2 = "SELECT * FROM `staff` where id =?";

            PreparedStatement pr = connection.prepareStatement(mySQL2);
            pr.setInt(1, staffId);
//            pr.setInt(1, limit);
//            pr.setInt(1, limit);
            ResultSet rss = pr.executeQuery();

            while (rss.next()) {
                int id = rss.getInt(1);
                String name = rss.getString("name");
                Date dayToWork = rss.getDate("dayToWork");
                int phone = rss.getInt("phone");
                Double salary = rss.getDouble("salary");
                Staff s = new Staff();
                s.setId(id);
                s.setName(name);
                s.setDayToWork(dayToWork);
                s.setPhone(phone);
                s.setSalary(salary);

                return s;
            }
        } catch (SQLException throwables) {
            return null;
        }
        return null;
    }

    public static void addStaff(Staff s) {
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "insert into staff(id, name, dayToWork, phone, salary)" +
                    " VALUES (?,?,?,?,?)";
            PreparedStatement pr = conn.prepareStatement(sql);

            pr.setInt(1, s.getId());
            pr.setString(2, s.getName());
            Timestamp now = new Timestamp(new Date().getTime());
            pr.setTimestamp(3, (now));
            pr.setInt(4, s.getPhone());
            pr.setDouble(5, s.getSalary());

            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }


    public static void deleteStaff(int id) {
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "delete from staff where id=?";
            PreparedStatement pr = conn.prepareStatement(sql);

            pr.setInt(1, id);

            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public static void editStaff(Staff s) {
        try {
            Connection conn = DBconnection.getMySQLConnection();
            String sql = "update staff set name=?,dayToWork=?, phone=?, salary=? where id=?";
            PreparedStatement pr = conn.prepareStatement(sql);


            pr.setString(1, s.getName());
            Timestamp now = new Timestamp(new Date().getTime());
            pr.setTimestamp(2, (now));
            pr.setInt(3, s.getPhone());
            pr.setDouble(4, s.getSalary());
            pr.setInt(5, s.getId());

//            System.out.println("p.getId()"+ p.getId());
            int rs = pr.executeUpdate();
            System.out.println(rs);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
}

