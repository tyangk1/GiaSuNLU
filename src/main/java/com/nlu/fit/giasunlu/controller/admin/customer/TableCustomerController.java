package com.nlu.fit.giasunlu.controller.admin.customer;

import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.NewUserServiceImp;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet(name = "TableCustomerController", value = "/admin/customer")
public class TableCustomerController extends HttpServlet {
    UserService userService = new NewUserServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException, java.io.IOException, java.io.IOException {
        List<User> users = userService.getAllCustomer();
        request.setAttribute("users", users);
        request.getRequestDispatcher("/view/admin/table-data-customer.jsp").forward(request, response);
    }

}
