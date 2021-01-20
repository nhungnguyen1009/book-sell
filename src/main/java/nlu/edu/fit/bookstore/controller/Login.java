package nlu.edu.fit.bookstore.controller;

import com.google.gson.Gson;
import nlu.edu.fit.bookstore.repo.AccountRepo;
import nlu.edu.fit.bookstore.model.User;
import nlu.edu.fit.bookstore.utils.MD5;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/login")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // JSP LOGIN => THIS CONTROLLER
        resp.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        HashMap<String, String> errMap = new HashMap<>();

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        System.out.println("username" + username);
        System.out.println("password" + password);
        //check xem khach hang nhap du thong tin chua
        if ("".equals(username) || "".equals(password) || username == null || password == null) {
            if ("".equals(username) || username == null) errMap.put("username", "Bạn chưa nhập username");
            if ("".equals(password) || password == null) errMap.put("password", "Bạn chưa nhập password");
            resp.setStatus(HttpServletResponse.SC_PRECONDITION_FAILED);
            resp.getWriter().print(gson.toJson(errMap));
        } else {
            //neu sai tra ve loi
            // Lấy được username, pass
            User user = AccountRepo.login(username, MD5.encryption(password));
            // Gọi method của user repo để check

            // có user ok, lưu session, tra ve text đúng để ajax reload lại  ?
            if (user != null) {
                // Lưu user vô session
                HttpSession httpSession = req.getSession();
                httpSession.setAttribute("user", user);
                // response code 200
                resp.setStatus(HttpServletResponse.SC_OK);
            } else {
                // if null => username/ pass k đúng
                // Trả về nội dung sai
                errMap.put("username", "Username hoặc password không đúng");

                resp.setStatus(HttpServletResponse.SC_PRECONDITION_FAILED);
                resp.getWriter().print(gson.toJson(errMap));
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}
