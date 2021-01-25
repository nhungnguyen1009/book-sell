package nlu.edu.fit.bookstore.controller.admin.product.publisher;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.loginRepo.PublisherRepo;
import nlu.edu.fit.bookstore.loginRepo.StaffRepo;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.model.Publisher;
import nlu.edu.fit.bookstore.model.Staff;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/publisher/editPublisher")
public class EditPublisher extends HttpServlet {
    String name;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");
        int id = Integer.parseInt(req.getParameter("id"));
        //select product by id
        Publisher publisher = PublisherRepo.getPublisherr(id);
        req.setAttribute("publisher",publisher);
        req.getRequestDispatcher("../suanhasanxuat.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int id=Integer.parseInt(req.getParameter("id"));


        Publisher p = new Publisher();

        p.setId(id);
        p.setName(req.getParameter("name"));


        System.out.println("?");
        // dùng class product repo -> insert p xuông db
        PublisherRepo.editPublisher(p);

        resp.sendRedirect(Utils.fullPathAdmin("publisher"));

    }
}
