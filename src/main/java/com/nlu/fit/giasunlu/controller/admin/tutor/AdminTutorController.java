package com.nlu.fit.giasunlu.controller.admin.tutor;

import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.NewUserServiceImp;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminTutorController", value = "/admin/tutor")
public class AdminTutorController extends HttpServlet {
    UserService userService = new NewUserServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException, IOException, IOException {
        List<User> users = userService.getAllTeacher();
        request.setAttribute("users", users);
        request.getRequestDispatcher("/view/admin/table-data-tutor.jsp").forward(request, response);
    }

}
