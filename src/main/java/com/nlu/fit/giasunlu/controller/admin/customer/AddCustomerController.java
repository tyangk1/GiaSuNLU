package com.nlu.fit.giasunlu.controller.admin.customer;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "AddCustomerController", value = "/admin/customer/add")
public class AddCustomerController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException, java.io.IOException, java.io.IOException {
        request.getRequestDispatcher("/view/admin/form-add-customer.jsp").forward(request, response);
    }
}
