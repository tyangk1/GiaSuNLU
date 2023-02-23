package com.nlu.fit.giasunlu.controller.admin.the_class;

import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.NewUserServiceImp;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TableClassController", value = "/admin/class")
public class TableClassController extends HttpServlet {
    UserService userService = new NewUserServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, IOException, IOException, IOException {
        request.getRequestDispatcher("/view/admin/table-data-class.jsp").forward(request, response);
    }

}
