package nlu.edu.fit.bookstore.controller;

import com.google.gson.Gson;
import nlu.edu.fit.bookstore.repo.AccountRepo;
import nlu.edu.fit.bookstore.utils.MD5;
import nlu.edu.fit.bookstore.utils.Utils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/signin")
public class SignIn extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // JSP LOGIN => THIS CONTROLLER
        resp.setCharacterEncoding("UTF-8");
        Gson gson = new Gson();
        HashMap<String, String> errMap = new HashMap<>();

        String fullname = req.getParameter("fullname");
        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmPass = req.getParameter("confirmpass");



        //check xem khach hang nhap du thong tin chua
        if ("".equals(fullname) || fullname == null || "".equals(email) || email == null || !Utils.isEmail(email) || "".equals(username) || username == null || "".equals(password) || password == null || "".equals(confirmPass) || confirmPass == null || !confirmPass.equals(password)) {
            if ("".equals(fullname) || fullname == null) errMap.put("fullname", "Bạn chưa nhập họ tên");
            if ("".equals(email) || email == null) errMap.put("email", "Bạn chưa nhập email");
            else if (!Utils.isEmail(email)) errMap.put("email", "Email không đúng định dạng");
            if ("".equals(username) || username == null) errMap.put("username", "Bạn chưa nhập tên đăng nhập");
            if ("".equals(password) || password == null) errMap.put("password", "Bạn chưa nhập mật khẩu");
            if ("".equals(confirmPass) || confirmPass == null) errMap.put("confirmpass", "Bạn chưa nhập lại mật khẩu");
            else if (!confirmPass.equals(password)) errMap.put("confirmpass", "Mật khẩu nhập lại không khớp");
            resp.setStatus(HttpServletResponse.SC_PRECONDITION_FAILED);
            resp.getWriter().print(gson.toJson(errMap));
        } else {
            //neu sai tra ve loi
            //check username có hay chưa
            if (AccountRepo.checkUsername(username)) {
                errMap.put("username", "Tên đăng nhập đã tồn tại");
                resp.setStatus(HttpServletResponse.SC_PRECONDITION_FAILED);
                resp.getWriter().print(gson.toJson(errMap));
            } else {
                boolean result = AccountRepo.signin(fullname, email, username, MD5.encryption(password));
                // Gọi method của user repo
                // để check
                // có user ok, lưu session, tra ve text đúng để ajax reload lại  ?
                if (result) {
                    // response code 200
                    resp.setStatus(HttpServletResponse.SC_OK);
                }
            }

        }
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

}
