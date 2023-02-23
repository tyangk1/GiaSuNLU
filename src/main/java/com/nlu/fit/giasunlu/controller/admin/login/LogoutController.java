package com.nlu.fit.giasunlu.controller.admin.login;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LogoutController", value = "/admin/logout")
public class LogoutController extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException, java.io.IOException, java.io.IOException {
        HttpSession session = request.getSession();
        session.invalidate();
        response.sendRedirect("/admin/login");
    }

}
