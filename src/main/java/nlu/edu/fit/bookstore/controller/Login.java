package nlu.edu.fit.bookstore.controller;

import com.sun.xml.internal.bind.v2.runtime.output.StAXExStreamWriterOutput;
import nlu.edu.fit.bookstore.loginRepo.LoginRepo;
import nlu.edu.fit.bookstore.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // JSP LOGIN => THIS CONTROLLER
        req.getParameter("email");
        req.getParameter("password");
        // Lấy được ussername, pass
        LoginRepo.login("nhung", "123");
        // Gọi method của user repo để check
        // user or null
        // if null => uername/ pass k đúng
        // có user ok, lưu session, cần usesr ?
        System.out.println("n");
        req.getRequestDispatcher("about.jsq").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
