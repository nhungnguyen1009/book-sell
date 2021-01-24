package nlu.edu.fit.bookstore.controller;

import nlu.edu.fit.bookstore.model.Cart;
import nlu.edu.fit.bookstore.model.CartItem;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.repo.ProductRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/remove")
public class RemoveCartItem extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            int productId = Integer.parseInt(req.getParameter("id"));

            HttpSession session = req.getSession();

            Cart cart = Cart.getCart(session);

            cart.remove(productId);

            cart.commit(session);
//            req.getRequestDispatcher("cart.jsp").forward(req, resp);
            String currentPath = req.getHeader("referer");
            resp.sendRedirect(currentPath);

        }catch (NumberFormatException e) {
            resp.sendRedirect("/hello");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doGet(req, resp);
    }
}
