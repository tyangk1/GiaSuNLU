package com.nlu.fit.giasunlu.controller.client.oauth;

import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.UserServiceImpl;
import com.nlu.fit.giasunlu.utils.Constant;
import com.nlu.fit.giasunlu.utils.SecurityUtils;
import com.nlu.fit.giasunlu.utils.SendMail;
import org.jdbi.v3.core.Jdbi;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Base64;

@WebServlet(name = "VerifyController", value = "/verify")
public class VerifyController extends HttpServlet {
    UserService userService = new UserServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("authcode");
        user.setPhoneNumber("123456789");
        user.setRoleId(2);
        Jdbi jdbi= JDBIConnection.get();
        String code = request.getParameter("code");
        User existsUser = jdbi.withExtension(NewUserDao.class, dao -> dao.checkExistEmail(user.getEmail()));
        if (code.equals(user.getVerifyCode())) {
            if ( existsUser == null) {
                user.setPassword(SecurityUtils.encodePassword(user.getPassword()));
                jdbi.useExtension(NewUserDao.class, dao -> dao.insertUser(user));
            }
            JSONObject obj = new JSONObject();
            obj.put("email", user.getEmail());
            obj.put("first_name", user.getFirstName());
            obj.put("last_name", user.getLastName());
            user.setAccessToken(Base64.getEncoder().encodeToString(obj.toString().getBytes()));
            SendMail.sendMail(user.getEmail(), "GIASUNLU-Welcome", "Welcome to GIASUNLU. Your account has been verified!");

            response.sendRedirect(request.getContextPath() + "/login");
        } else {
            SendMail.sendMail(user.getEmail(), "GIASUNLU-Welcome", "Welcome to GIASUNLU. Failed to verify your account!");

            request.getRequestDispatcher(Constant.Path.REGISTER).forward(request, response);
        }
    }
}

