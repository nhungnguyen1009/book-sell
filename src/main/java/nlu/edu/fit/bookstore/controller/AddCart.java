package nlu.edu.fit.bookstore.controller;

import nlu.edu.fit.bookstore.model.Cart;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.repo.ProductRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "addCart", urlPatterns = "/cart/add")
public class AddCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            //select product by id
            Product product = ProductRepo.getProduct(id);
            HttpSession session = req.getSession();

            Cart cart = Cart.getCart(session);
            System.out.println("before: " + cart.quantity());
            cart.put(product);

            cart.commit(session);

            System.out.println("after: " + cart.quantity());
        } catch (NumberFormatException e) {
            resp.sendRedirect("/hello");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
