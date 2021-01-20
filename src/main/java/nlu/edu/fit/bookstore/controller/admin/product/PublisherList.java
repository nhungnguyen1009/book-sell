package nlu.edu.fit.bookstore.controller.admin.product;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.loginRepo.PublisherRepo;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.model.Publisher;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/admin/publisher")
public class PublisherList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");


        //  select ds san pham tu DB -> ArrayList<Product> list tạo
        ArrayList<Publisher> list = PublisherRepo.getPublisher(10);

//         Đính kèm dữ liệu vào request và gửi trang JSP
        req.setAttribute("listPublisher", list);


        req.getRequestDispatcher("quanlynhasanxuat.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
