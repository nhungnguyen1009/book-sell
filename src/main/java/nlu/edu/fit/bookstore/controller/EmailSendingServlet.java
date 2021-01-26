package nlu.edu.fit.bookstore.controller;

import nlu.edu.fit.bookstore.repo.AccountRepo;
import nlu.edu.fit.bookstore.utils.EmailUtility;
import nlu.edu.fit.bookstore.utils.Utils;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import static nlu.edu.fit.bookstore.utils.Utils.*;

/**
 * A servlet that takes message details from user and send it as a new e-mail
 * through an SMTP server.
 *
 * @author www.codejava.net
 *
 */
@WebServlet("/EmailSendingServlet")
public class EmailSendingServlet extends HttpServlet {
    private String host;
    private String port;
    private String user;
    private String pass;

    public void init() {
        // reads SMTP server setting from web.xml file
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response) throws ServletException, IOException {
        // reads form fields
        String recipient = request.getParameter("recipient");
        String subject = "Yêu cầu lấy lại mật khẩu";

        String linkCallBack = "http://localhost:8080/BookStore_war_exploded/forgotPassCallBack?email="+recipient+"&token=";
        String token = hashToken(Math.random() + "");
        String content = "Vui lòng nhập <a href="+linkCallBack +token+">link</a> này ";
        AccountRepo.updateToken(token,recipient);
        String resultMessage = "";

        try {
            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
                    content);
            resultMessage = "The e-mail was sent successfully";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "There were an error: " + ex.getMessage();
        } finally {
            request.setAttribute("Message", resultMessage);
            getServletContext().getRequestDispatcher("/checkMail.jsp").forward(
                    request, response);
        }
    }
}