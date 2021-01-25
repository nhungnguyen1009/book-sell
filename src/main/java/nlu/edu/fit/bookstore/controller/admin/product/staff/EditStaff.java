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
import java.util.ArrayList;
import java.util.Date;


@WebServlet("/admin/staff/editStaff")
public class EditStaff extends HttpServlet {
    int id;
    String name;
    Date dayToWork;
    int phone;
    double salary;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");
        int id = Integer.parseInt(req.getParameter("id"));
        //select product by id
        Staff staff = StaffRepo.getStaff(id);
        req.setAttribute("staff",staff);
        req.getRequestDispatcher("../suanhanvien.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id=Integer.parseInt(req.getParameter("id"));
        int phone=Integer.parseInt(req.getParameter("phone"));
        double salary=Double.parseDouble(req.getParameter("salary"));

//        Date date=Date.parse(req.getParameter("dayToWork"));

        Staff s = new Staff();

        s.setId(id);
        s.setName(req.getParameter("name_staff"));
        s.setPhone(phone);
        s.setSalary(salary);

        System.out.println("?");
        // dùng class product repo -> insert p xuông db
        StaffRepo.editStaff(s);

        resp.sendRedirect(Utils.fullPathAdmin("staff"));

    }
}
