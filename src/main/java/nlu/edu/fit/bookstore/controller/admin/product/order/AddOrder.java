package nlu.edu.fit.bookstore.controller.admin.product.order;

import nlu.edu.fit.bookstore.loginRepo.OrderRepo;
import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.model.Order;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;


@WebServlet("/admin/order/add")
public class AddOrder extends HttpServlet {
    Date date;
    double price;
    int user_id;
    int staff_id;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");

        req.getRequestDispatcher("../themdonhang.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int i = Integer.parseInt(req.getParameter("id"));
        double price = Double.parseDouble(req.getParameter("price"));
        int user_id = Integer.parseInt(req.getParameter("user_id"));
        int staff_id = Integer.parseInt(req.getParameter("staff_id"));

        Order o = new Order();
        o.setId(i);
        o.setPrice(price);
        o.setUser_id(user_id);
        o.setStaff_id(staff_id);

        // dùng class product repo -> insert p xuông db
        OrderRepo.addOrder(o);

        resp.sendRedirect(Utils.fullPathAdmin("order"));

    }
}
