package com.nlu.fit.giasunlu.controller.client;

import com.nlu.fit.giasunlu.model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ExperienceController", value = "/my-account/experience")
public class ExperienceController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        if (user == null) {
            response.sendRedirect(request.getContextPath()+"/login");
            return;
        }
        request.getRequestDispatcher("/view/client/experience.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
