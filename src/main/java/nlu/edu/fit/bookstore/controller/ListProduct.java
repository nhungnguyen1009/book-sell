package nlu.edu.fit.bookstore.controller;

import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.filter.Data;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collection;

@WebServlet(name = "ListProduct", urlPatterns = "/ListProduct")
public class ListProduct {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Collection<Product> values = Data.data.values();
        request.setAttribute("list",values);
        request.getRequestDispatcher("product-list.jsp").forward(request,response);


    }
}
