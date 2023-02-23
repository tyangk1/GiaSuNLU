package com.nlu.fit.giasunlu.controller.admin.tutor;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

@WebServlet(name = "AddTutorController", value = "/admin/tutor/add")
public class AddTutorController extends HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException, java.io.IOException, java.io.IOException {
        request.getRequestDispatcher("/view/admin/form-add-tutor.jsp").forward(request, response);
    }

}
