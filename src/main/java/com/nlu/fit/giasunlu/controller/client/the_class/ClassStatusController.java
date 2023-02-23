package com.nlu.fit.giasunlu.controller.client.the_class;

import com.nlu.fit.giasunlu.model.Class;
import com.nlu.fit.giasunlu.service.ClassService;
import com.nlu.fit.giasunlu.service.serviceImpl.ClassServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ClassStatusController", value = "/class-status")
public class ClassStatusController extends HttpServlet {
    ClassService classService = new ClassServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/view/client/class-status.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");

        if (id != null) {
            Class theClass = classService.getClassById(Integer.parseInt(id));
            if (theClass != null)
                request.setAttribute("theClass", theClass);
        }
        request.getRequestDispatcher("/view/client/class-status.jsp").forward(request, response);
    }
}
