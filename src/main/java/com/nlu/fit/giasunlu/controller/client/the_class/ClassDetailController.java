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
import java.util.List;

@WebServlet(name = "ClassDetailController", value = "/class-detail")
public class ClassDetailController extends HttpServlet {
    ClassService classService = new ClassServiceImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        if (id != null) {
            Class theClass = classService.getClassById(Integer.parseInt(id));
            request.setAttribute("theClass", theClass);
            List<Class> list = classService.getClasses();
            list = list.stream().filter(c -> c.getId() != theClass.getId() && c.getSubject().getId() == theClass.getSubject().getId()
                            && c.getLevel() == theClass.getLevel()
                            && costSuggest(theClass.getCost(), c.getCost()))
                    .toList();
            if (list.size() > 4) {
                list = list.subList(0, 4);
            }
            request.setAttribute("suggest", list);
            request.getRequestDispatcher("/view/client/class-detail.jsp").forward(request, response);
        } else {
            response.sendRedirect("/class");
        }
    }

    boolean costSuggest(int cost, int cost2) {
        return cost2 >= cost - 100000 && cost2 <= cost + 100000;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
