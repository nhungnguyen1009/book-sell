package nlu.edu.fit.bookstore.controller.admin.product;

import nlu.edu.fit.bookstore.loginRepo.StaffRepo;
import nlu.edu.fit.bookstore.model.Staff;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/admin/staff")
public class StaffList extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");


        //  select ds san pham tu DB -> ArrayList<Product> list tạo
        ArrayList<Staff> list = StaffRepo.getStaffs(10);

//         Đính kèm dữ liệu vào request và gửi trang JSP
        req.setAttribute("listStaff", list);




        // GỦi data kèm vs view jsp
        req.getRequestDispatcher("quanlynhanvien.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
