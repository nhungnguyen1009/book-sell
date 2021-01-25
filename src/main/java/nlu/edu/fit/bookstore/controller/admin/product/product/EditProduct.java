package nlu.edu.fit.bookstore.controller.admin.product.product;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/admin/product/edit")
public class EditProduct extends HttpServlet {
    String name;
    String img;
    long price;
    long priceSale;
    int quantity;
    String nameAuthor;
    String category;
    String url;
    String description;
    int idAuthor;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");
        int id = Integer.parseInt(req.getParameter("id"));
        //select product by id
        Product product = nlu.edu.fit.bookstore.repo.ProductRepo.getProduct(id);
        req.setAttribute("product",product);
        req.getRequestDispatcher("../suaSanPham.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("productID"+req.getParameter("productID"));
        System.out.println(req.getParameter("originPrice"));
        System.out.println(req.getParameter("price"));
        int id=Integer.parseInt(req.getParameter("id"));

        long originPrice = Long.parseLong(req.getParameter("originPrice"));
        long price = Long.parseLong(req.getParameter("price"));
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        int idAuthor=Integer.parseInt(req.getParameter("idAuthor"));
        Product p = new Product();

        p.setId(id);
        p.setName(req.getParameter("name"));
        p.setPrice(originPrice);
        p.setPriceSale(price);
        p.setQuantity(quantity);
        p.setNameAuthor(req.getParameter("author"));
        p.setCategory(req.getParameter("category"));
        p.setImg(req.getParameter("img"));
        p.setDescription(req.getParameter("desciption"));
        p.setIdAuthor(idAuthor);
        System.out.println("?");
        // dùng class product repo -> insert p xuông db
        ProductRepo.editProduct(p);

        resp.sendRedirect(Utils.fullPathAdmin("product"));

    }
}
