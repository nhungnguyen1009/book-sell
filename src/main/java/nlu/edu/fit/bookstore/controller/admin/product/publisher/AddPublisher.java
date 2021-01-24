package nlu.edu.fit.bookstore.controller.admin.product.publisher;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.loginRepo.PublisherRepo;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.model.Publisher;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/publisher/add")
public class AddPublisher extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");

        req.getRequestDispatcher("../themnhasanxuat.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int i = Integer.parseInt(req.getParameter("id"));

        Publisher p = new Publisher();
        p.setId(i);
        p.setName(req.getParameter("name"));

        // dùng class product repo -> insert p xuông db
        PublisherRepo.addPublisher(p);

        resp.sendRedirect(Utils.fullPathAdmin("publisher"));

    }
}
