package com.nlu.fit.giasunlu.controller.client.oauth;

import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.utils.Constant;
import com.nlu.fit.giasunlu.utils.SecurityUtils;

import org.jdbi.v3.core.Jdbi;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("account") != null) {
            resp.sendRedirect(req.getContextPath() + "/waiting");
            return;
        }
        // Check cookie
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    session = req.getSession(true);
                    session.setAttribute("username", cookie.getValue());
                    resp.sendRedirect(req.getContextPath() + "/waiting");
                    return;
                }
            }
        }
        String alert = req.getParameter("alert");
        req.setAttribute("alert", alert);
        req.getRequestDispatcher("view/client/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");

        String password = req.getParameter("password");

        boolean isRememberMe = false;
        String remember = req.getParameter("remember");

        if ("on".equals(remember)) {
            isRememberMe = true;
        }
        String alertMsg = "";

        if (email.isEmpty() || password.isEmpty()) {
            alertMsg = "Vui lòng không để trống các ô bên dưới!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("/view/client/login.jsp").forward(req, resp);
            return;
        }
//// get reCAPTCHA request param
//        String gRecaptchaResponse = req
//                .getParameter("g-recaptcha-response");
//        System.out.println(gRecaptchaResponse);
//        boolean verify = VerifyCaptcha.verify(gRecaptchaResponse);
//        System.out.println(verify);
        User user;
        Jdbi jdbi= JDBIConnection.get();
        user = jdbi.withExtension(NewUserDao.class, dao -> dao.checkLogin(email, SecurityUtils.encodePassword(password)));


//        if (user != null && verify) {

            if (user != null) {
            HttpSession session = req.getSession(true);
            session.setAttribute("account", user);

            if (isRememberMe) {
                saveRememberMe(resp, email);
            }

            resp.sendRedirect(req.getContextPath() + "/waiting");

        } else {
            alertMsg = "Sai thông tin đăng nhập";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher("/view/client/login.jsp").forward(req, resp);
        }
    }

    private void saveRememberMe(HttpServletResponse response, String username) {
        Cookie cookie = new Cookie(Constant.COOKIE_REMEMBER, username);
        cookie.setMaxAge(30 * 60);
        response.addCookie(cookie);
    }
}

