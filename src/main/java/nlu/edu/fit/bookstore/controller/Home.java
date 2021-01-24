package nlu.edu.fit.bookstore.controller;

import nlu.edu.fit.bookstore.repo.ProductRepo;
import nlu.edu.fit.bookstore.model.Product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("")
public class Home extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");

        ArrayList<Product> list = ProductRepo.getProducts(5);
        req.setAttribute("listdata", list);
        System.out.println(list.size());
        req.getRequestDispatcher("index.jsp").forward(req, resp);
//        ArrayList<Product> listData = ProductRepo.getP(5);
//        req.setAttribute("list", listData);
//        System.out.println(list.size());
//        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }
}
