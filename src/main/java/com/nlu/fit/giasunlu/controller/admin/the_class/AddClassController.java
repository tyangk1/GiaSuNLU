package com.nlu.fit.giasunlu.controller.admin.the_class;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(name = "AddClassController", value = "/admin/class/add")
public class AddClassController extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException, java.io.IOException, java.io.IOException {
        request.getRequestDispatcher("/view/admin/form-add-class.jsp").forward(request, response);
    }

}
