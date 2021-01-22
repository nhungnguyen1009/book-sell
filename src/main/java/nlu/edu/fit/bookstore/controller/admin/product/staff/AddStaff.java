package nlu.edu.fit.bookstore.controller.admin.product.staff;


import nlu.edu.fit.bookstore.loginRepo.StaffRepo;
import nlu.edu.fit.bookstore.model.Staff;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@WebServlet("/admin/staff/add")
public class AddStaff extends HttpServlet {
    int id;
    String name;
//    Date dayToWork;
    int phone;
    double salary;


    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");

        req.getRequestDispatcher("../themnhanvien.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
//        try {
//            Date date=sdf.parse("dateToWork");
//        } catch (ParseException e) {
//            e.printStackTrace();
//        }
        int id=Integer.parseInt(req.getParameter("id"));
        int phone=Integer.parseInt(req.getParameter("phone"));
        double salary=Double.parseDouble("salary");

        Staff s=new Staff();
//
//        // dùng class product repo -> insert p xuông db
        s.setId(id);
        s.setName(req.getParameter("name_staff"));
        s.setPhone(phone);
        s.setSalary(salary);
//        s.setDayToWork(date);
        StaffRepo.addStaff(s);
        resp.sendRedirect(Utils.fullPathAdmin("staff"));

    }
}
