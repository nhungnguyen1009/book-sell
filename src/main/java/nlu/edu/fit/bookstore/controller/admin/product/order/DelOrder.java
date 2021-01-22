package nlu.edu.fit.bookstore.controller.admin.product.order;

import nlu.edu.fit.bookstore.loginRepo.OrderRepo;
import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DelOrder extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");
        int id = Integer.parseInt(req.getParameter("id"));

        OrderRepo.deleteOrder(id);

        resp.sendRedirect(Utils.fullPathAdmin("order"));
    }
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
