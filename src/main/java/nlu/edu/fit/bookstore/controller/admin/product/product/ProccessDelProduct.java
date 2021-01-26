package nlu.edu.fit.bookstore.controller.admin.product.product;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.model.MyConnectDB;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/admin/product/ProccessDelProduct")
public class ProccessDelProduct extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");
        int id = Integer.parseInt(req.getParameter("id"));

        ProductRepo.deleteProduct(id);

        resp.sendRedirect(Utils.fullPathAdmin("product"));
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
