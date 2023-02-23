package com.nlu.fit.giasunlu.controller.client.the_class;

import com.nlu.fit.giasunlu.model.JoinClass;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.ClassService;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.ClassServiceImpl;
import com.nlu.fit.giasunlu.service.serviceImpl.NewUserServiceImp;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "JoinClassController", value = "/join-class")
public class JoinClassController extends HttpServlet {

    ClassService classService = new ClassServiceImpl();
    UserService userService = new NewUserServiceImp();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        JoinClass joinClass = new JoinClass();
        PrintWriter out = response.getWriter();
        try {
            BeanUtils.populate(joinClass, request.getParameterMap());
            int userId = joinClass.getUserId();
            int joinClassId = joinClass.getIdClass();


            User user = userService.getUser(userId);
            if (user != null && classService.getClassById(joinClassId) != null) {
                if (user.getRoleId() == 2)
                    joinClass.setId(2);
                if (user.getRoleId() == 3)
                    joinClass.setRole(3);
                classService.insertJoinClass(joinClass);
                out.print("success");
            } else {
                response.setStatus(400);
                out.print("fail");
            }
            out.close();


        } catch (IllegalAccessException | InvocationTargetException e) {
            response.setStatus(400);
            out.print("fail");
        }
    }

}
