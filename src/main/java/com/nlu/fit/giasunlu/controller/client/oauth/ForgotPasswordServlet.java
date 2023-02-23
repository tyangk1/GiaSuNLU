package com.nlu.fit.giasunlu.controller.client.oauth;



import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.utils.SecurityUtils;
import com.nlu.fit.giasunlu.utils.SendMail;
import org.jdbi.v3.core.Jdbi;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Base64;

@WebServlet(name = "ForgotPasswordController", value = "/forgot-password")
public class ForgotPasswordServlet extends HttpServlet {
    UserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/client/forgot-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        User user;
        Jdbi jdbi= JDBIConnection.get();
        user = jdbi.withExtension(NewUserDao.class, dao -> dao.getUserByEmail(email));
        String alertMsg;
        if (user != null) {
            alertMsg = "Mật khẩu đã được gửi vào email của bạn";
            request.setAttribute("alert", alertMsg);
            SendMail.sendMail(email, "GIASUNLU of forgot password", "Welcome to GIASUNLU. Here is your password: " + SecurityUtils.decodePassword(user.getPassword()) + ".Thanks!");

        } else {
            alertMsg = "Không tìm thấy tài khoản với email đã nhập!";
            request.setAttribute("alert", alertMsg);
        }
        response.sendRedirect(request.getContextPath() + "/login");
    }
}
