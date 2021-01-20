package nlu.edu.fit.bookstore.controller.admin.product.product;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.model.MyConnectDB;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;


@WebServlet("/admin/product/add")
public class AddProduct extends HttpServlet {
    String name;
    String img;
    long price;
    long priceSale;
    int quantity;
    String nameAuthor;
    String category;
    String url;
    String description;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");

        req.getRequestDispatcher("../themsanpham.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int i = Integer.parseInt(req.getParameter("id"));
        long originPrice = Long.parseLong(req.getParameter("originPrice"));
        long price = Long.parseLong(req.getParameter("price"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));

        Product p = new Product();
        p.setId(i);
        p.setName(req.getParameter("name"));
        p.setPrice(originPrice);
        p.setPriceSale(price);
        p.setQuantity(quantity);
        p.setNameAuthor(req.getParameter("author"));
        p.setCategory(req.getParameter("category"));
        p.setImg(req.getParameter("img"));
        p.setDescription(req.getParameter("desciption"));

        // dùng class product repo -> insert p xuông db
        ProductRepo.addProduct(p);

        resp.sendRedirect(Utils.fullPathAdmin("product"));

    }
}
