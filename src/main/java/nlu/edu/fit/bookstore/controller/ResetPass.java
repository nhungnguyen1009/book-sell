package nlu.edu.fit.bookstore.controller;

import nlu.edu.fit.bookstore.loginRepo.UserRepo;
import nlu.edu.fit.bookstore.model.User;
import nlu.edu.fit.bookstore.repo.ProductRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/resetPass")
public class ResetPass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String oldPass=req.getParameter("oldPass");
        String newPass=req.getParameter("newPass");
        String reenterPass=req.getParameter("reenterPass");
        HttpSession session=req.getSession();
        String cpass=(String) session.getAttribute("pass");
        String username=(String) session.getAttribute("username");
        if(oldPass.equals(null)||oldPass==""||newPass.equals("null")||newPass==""||reenterPass.equals("null")||reenterPass==""){
            req.setAttribute("msg","all fields are mendatory");
            getServletContext().getRequestDispatcher("/changePass").forward(req,resp);
        }
        else if(!newPass.equals(reenterPass)){
            req.setAttribute("msg","password does not match");
            getServletContext().getRequestDispatcher("/changePass").forward(req,resp);
        }
        else if(!cpass.equals(oldPass)){
            req.setAttribute("msg","Old password is not connect");
            getServletContext().getRequestDispatcher("/changePass").forward(req,resp);
        }
        else {
            //call model
            User u=new User();
            u.setUsername(username);
            u.setPassword(newPass);
            //call sql

            int i= UserRepo.resetPass(u);
            if (i!=0){
                req.setAttribute("msg","Password update success");
                getServletContext().getRequestDispatcher("/account").forward(req,resp);
            }
            else{
                req.setAttribute("msg","be not updated");
                getServletContext().getRequestDispatcher("/account").forward(req,resp);
            }
        }
    }
}
