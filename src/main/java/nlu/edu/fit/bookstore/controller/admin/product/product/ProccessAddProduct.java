package nlu.edu.fit.bookstore.controller.admin.product.product;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.util.ArrayList;

@WebServlet("/admin/product/ProcessAdd")
public class ProccessAddProduct extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter33");
//        System.out.println(req.getParameter("id"));
//        System.out.println(req.getParameter("name"));
//        System.out.println(req.getParameter("originPrice"));
//        Product p = new Product();
//        int i=Integer.parseInt(req.getParameter("id"));
//        p.setId(i);
//        p.setName(req.getParameter("name"));
//        long originPrice=Long.parseLong(req.getParameter("originPrice"));
//        p.setPrice(originPrice);
//        long price=Long.parseLong(req.getParameter("price"));
//        p.setPriceSale(price);
//        int quantity=Integer.parseInt(req.getParameter("quantity"));
//        p.setQuantity(quantity);
//        p.setNameAuthor(req.getParameter("author"));
//        p.setCategory(req.getParameter("category"));
//        p.setImg(req.getParameter("img"));
//
//        req.getRequestDispatcher("quanlysanpham.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        this.doGet(req, resp);
    }

}
