package nlu.edu.fit.bookstore.controller.admin.product.user;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.loginRepo.UserRepo;
import nlu.edu.fit.bookstore.model.Product;
import nlu.edu.fit.bookstore.model.User;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/user/add")
public class AddUser extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");

        req.getRequestDispatcher("../themkhachhang.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int i = Integer.parseInt(req.getParameter("id"));


        User u = new User();
        u.setId(i);
        u.setUsername(req.getParameter("username"));
        u.setFullname(req.getParameter("fullname"));
        u.setPassword(req.getParameter("pass"));
        u.setEmail(req.getParameter("email"));
        u.setAddress(req.getParameter("address"));
        u.setSex(req.getParameter("sex"));


        // dùng class product repo -> insert p xuông db
        UserRepo.addUser(u);

        resp.sendRedirect(Utils.fullPathAdmin("user"));

    }
}
