package nlu.edu.fit.bookstore.controller.admin.product;

import nlu.edu.fit.bookstore.loginRepo.ProductRepo;
import nlu.edu.fit.bookstore.loginRepo.UserRepo;
import nlu.edu.fit.bookstore.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/admin/user")
public class UserList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("enter");


        //  select ds san pham tu DB -> ArrayList<Product> list tạo
        ArrayList<User> list = UserRepo.getUsers(10);

//         Đính kèm dữ liệu vào request và gửi trang JSP
        req.setAttribute("listUser", list);


//        // JSP LOGIN => THIS CONTROLLER
//        req.getParameter("email");
//        req.getParameter("password");
//        // Lấy được ussername, pass
//        LoginRepo.login("nhung", "123");
//        // Gọi method của user repo để check
//        // user or null
//        // if null => uername/ pass k đúng
//        // có user ok, lưu session, cần usesr ?
//        System.out.println("enter");

        // GỦi data kèm vs view jsp
        req.getRequestDispatcher("quanlykhachhang.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }
}

