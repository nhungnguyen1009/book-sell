package nlu.edu.fit.bookstore.controller.admin.product.user;

import nlu.edu.fit.bookstore.loginRepo.StaffRepo;
import nlu.edu.fit.bookstore.loginRepo.UserRepo;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/user/DelUser")
public class DelUser extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");
        int id = Integer.parseInt(req.getParameter("id"));

        UserRepo.deleteUser(id);

        resp.sendRedirect(Utils.fullPathAdmin("user"));
    }


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
