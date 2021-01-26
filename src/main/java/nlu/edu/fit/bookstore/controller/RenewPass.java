package nlu.edu.fit.bookstore.controller;

import nlu.edu.fit.bookstore.repo.AccountRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/renewPass")
public class RenewPass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String mail = req.getParameter("email");
        String pass = req.getParameter("pass");
        System.out.println(mail + " " + pass);
        AccountRepo.updatePass(pass,mail);
        req.getRequestDispatcher("/").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
