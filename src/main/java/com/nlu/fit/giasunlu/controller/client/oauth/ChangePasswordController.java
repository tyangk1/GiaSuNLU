package com.nlu.fit.giasunlu.controller.client.oauth;

import com.nlu.fit.giasunlu.dao.BlogDao;
import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.Blog;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.UserServiceImpl;
import com.nlu.fit.giasunlu.utils.SecurityUtils;
import org.jdbi.v3.core.Jdbi;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ChangePasswordController", value = "/member/change-password")
public class ChangePasswordController extends HttpServlet {
    UserService userService;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/client/change-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String oldPassword = request.getParameter("oldPassword");
        String newPassword = request.getParameter("newPassword");
        String rePass = request.getParameter("reNewPassword");
        int id = Integer.parseInt(request.getParameter("id"));
        String alert = "";
        User user;
        Jdbi jdbi= JDBIConnection.get();
        user = jdbi.withExtension(NewUserDao.class, dao -> dao.getUser(id));
        if (user.getPassword().equals(SecurityUtils.encodePassword(oldPassword))) {
            if (newPassword.equals(rePass)) {
                jdbi.useExtension(NewUserDao.class, dao -> dao.changePassword(id, SecurityUtils.encodePassword(newPassword)));
                alert = "Change password success";
            } else {
                alert = "New password and re-new password not match";
            }
        } else {
            alert = "Old password not match";
        }
        request.setAttribute("id", id);
        response.sendRedirect(request.getContextPath() + "/member/myAccount?id=" + id + "&alert=" + alert);
    }
}
