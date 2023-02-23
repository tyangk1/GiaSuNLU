package com.nlu.fit.giasunlu.controller.client.the_class;

import com.nlu.fit.giasunlu.model.Class;
import com.nlu.fit.giasunlu.model.ClassStatus;
import com.nlu.fit.giasunlu.model.Subject;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.ClassService;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.ClassServiceImpl;
import com.nlu.fit.giasunlu.service.serviceImpl.NewUserServiceImp;
import com.nlu.fit.giasunlu.utils.CoinConfig;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

@WebServlet(urlPatterns = "/class/add")
public class AddClassController extends HttpServlet {
    ClassService classService = new ClassServiceImpl();
    UserService userService = new NewUserServiceImp();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Subject> subjects = classService.getAllSubject();
        req.setAttribute("listSubject", subjects);
        req.getRequestDispatcher("/view/client/post.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Class theClass = new Class();
        HttpSession session = req.getSession();
        try {
            BeanUtils.populate(theClass, req.getParameterMap());
            User user = (User) session.getAttribute("account");
            if (user.getCoin() < CoinConfig.feeCoin) {
                req.setAttribute("message", "Bạn không đủ coin để đăng lớp");
                req.getRequestDispatcher("/view/client/post.jsp").forward(req, resp);
            } else {
                theClass.setUserCreate((long) user.getId());
                theClass.setStatus(ClassStatus.STILL_TAKE);
                classService.insertClass(theClass);
                userService.subCoin(user.getId(), CoinConfig.feeCoin);
                user.setCoin(user.getCoin() - CoinConfig.feeCoin);
                session.setAttribute("account", user);
                resp.sendRedirect("/class");
            }
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }

    }
}
