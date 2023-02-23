package com.nlu.fit.giasunlu.controller.client.the_class;

import com.nlu.fit.giasunlu.model.Class;
import com.nlu.fit.giasunlu.model.Subject;
import com.nlu.fit.giasunlu.service.ClassService;
import com.nlu.fit.giasunlu.service.serviceImpl.ClassServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ClassController", value = "/class")
public class ClassController extends HttpServlet {
    ClassService classService = new ClassServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Subject> subjects = classService.getAllSubject();
        req.setAttribute("subjects", subjects);

        String keyword = req.getParameter("keyword");
        String[] idSubject = req.getParameterValues("idSubject");
        String[] level = req.getParameterValues("level");
        String cost = req.getParameter("cost");
        List<Class> classes = classService.getClasses();
        if (keyword != null || idSubject != null || level != null || cost != null) {
            if (keyword != null) {

                classes = classes.stream().filter(aClass -> aClass.getClassName().toLowerCase().contains(keyword.toLowerCase())).toList();

            }
            if (idSubject != null) {
                classes = classes.stream().filter(aClass -> {
                    for (String s : idSubject) {
                        if (aClass.getSubject().getId() == Integer.parseInt(s)) {
                            return true;
                        }
                    }
                    return false;
                }).toList();

            }
            if (level != null) {
                classes = classes.stream().filter(aClass -> {
                    for (String s : level) {
                        if (aClass.getLevel() == Integer.parseInt(s)) {
                            return true;
                        }
                    }
                    return false;
                }).toList();
            }
            if (cost != null && !cost.equals("all")) {
                classes = classes.stream().filter(aClass -> aClass.getCost() <= Integer.parseInt(cost)).toList();
            }
        }
        req.setAttribute("classes", classes);
        req.getRequestDispatcher("/view/client/new-class-list.jsp").forward(req, resp);
    }
}
