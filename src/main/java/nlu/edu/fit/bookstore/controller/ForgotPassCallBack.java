package nlu.edu.fit.bookstore.controller;

import nlu.edu.fit.bookstore.repo.AccountRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/forgotPassCallBack")
public class ForgotPassCallBack extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String token = req.getParameter("token");
        String tokenDB = AccountRepo.getToken(email);
        if (token.equals(tokenDB)){

            req.setAttribute("email",email);
            req.getRequestDispatcher("/renewPass.jsp").forward(req,resp);

        }else req.getRequestDispatcher("loi.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
