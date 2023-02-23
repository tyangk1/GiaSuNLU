package com.nlu.fit.giasunlu.controller.client.oauth;

import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.UserServiceImpl;
import com.nlu.fit.giasunlu.utils.Constant;
import com.nlu.fit.giasunlu.utils.SecurityUtils;
import com.nlu.fit.giasunlu.utils.SendMail;
import org.jdbi.v3.core.Jdbi;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(urlPatterns = "/register")
public class RegisterController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("username") != null) {
            resp.sendRedirect(req.getContextPath() + "/admin");
            return;
        }
        // Check cookie
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    session = req.getSession(true);
                    session.setAttribute("username", cookie.getValue());
                    resp.sendRedirect(req.getContextPath() + "/admin");
                    return;
                }
            }
        }

        req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String password = req.getParameter("password");
        String passwordConfirm = req.getParameter("password_confirmation");
        String email = req.getParameter("email");

        UserService service = new UserServiceImpl();
        String alertMsg = "";
        if (email == "" || password == "") {
            alertMsg = "Vui lòng không để trống các ô!";
            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
            return;
        }
        Jdbi jdbi= JDBIConnection.get();
        if (jdbi.withExtension(NewUserDao.class, dao -> dao.checkExistEmail(email)) != null) {
            alertMsg = "Email đã tồn tại!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
            return;
        }

        if (password.length() <= 6) {
            alertMsg = "Mật khẩu phải có ít nhất 6 kí tự!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
            return;
        }

        if (!password.equals(passwordConfirm)) {
            alertMsg = "Xác nhận mật khẩu không chính xác!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);
            return;
        }
        //// get reCAPTCHA request param
        String gRecaptchaResponse = req
                .getParameter("g-recaptcha-response");
        System.out.println(gRecaptchaResponse);
        boolean verify = VerifyCaptcha.verify(gRecaptchaResponse);
        System.out.println(verify);

//        boolean isSuccess = service.register(username, SecurityUtils.hash(password), email);

        if (verify) {
            SendMail sm = new SendMail();
            String code = sm.getRandom();
            User user = new User(email, code, password, firstName, lastName);
            SendMail.sendMail(email, "GIASUNLU-Email of verification", "Welcome to GIASUNLU. Here is your verification code: " + user.getVerifyCode() + " .Thanks !");
            HttpSession session = req.getSession();
            session.setAttribute("authcode", user);
            resp.sendRedirect(req.getContextPath() + "/redirect");
        } else {
            alertMsg = "Vui lòng xác thực bạn không phải người máy!";
            req.setAttribute("alert", alertMsg);
            req.getRequestDispatcher(Constant.Path.REGISTER).forward(req, resp);

        }
    }
}
