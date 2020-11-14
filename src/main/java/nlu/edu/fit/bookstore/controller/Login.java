package nlu.edu.fit.bookstore.controller;

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
        // Lấy được ussername, pass
        // Gọi method của user repo để check
        // user or null
        // if null => uername/ pass k đúng
        // có user ok, lưu session, cần usesr ?
        req.getRequestDispatcher("about.jsq").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
