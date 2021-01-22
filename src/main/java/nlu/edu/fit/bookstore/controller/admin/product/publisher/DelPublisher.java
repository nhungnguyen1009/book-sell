package nlu.edu.fit.bookstore.controller.admin.product.publisher;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.loginRepo.PublisherRepo;
import nlu.edu.fit.bookstore.model.Publisher;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/publisher/DelPublisher")
public class DelPublisher extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");
        int id = Integer.parseInt(req.getParameter("id"));

        PublisherRepo.deletePublisher(id);

        resp.sendRedirect(Utils.fullPathAdmin("publisher"));
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
