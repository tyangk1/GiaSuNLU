package com.nlu.fit.giasunlu.controller.client.account;

import com.nlu.fit.giasunlu.dao.CertificatesDao;
import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.Certificates;
import com.nlu.fit.giasunlu.model.User;
import org.jdbi.v3.core.Jdbi;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "ProfileBasicController", value = "/my-account/profile-basic")
public class ProfileBasicController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        if (user == null) {
            response.sendRedirect(request.getContextPath()+"/login");
            return;
        }
        Jdbi jdbi= JDBIConnection.get();
        Certificates certificates = jdbi.withExtension(CertificatesDao.class, dao -> dao.getCertificatesByUserId(user.getId()));
        request.setAttribute("certificates", certificates);
        request.getRequestDispatcher("/view/client/profile-basic.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        String fullName = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        int gender = Integer.parseInt(request.getParameter("gender_id"));
        String birthday = request.getParameter("birthday");
        String schoolName = request.getParameter("school_name");
        String major = request.getParameter("major");
        String fromMonth = request.getParameter("start_month");
        String toMonth = request.getParameter("end_month");
        String fromYear = request.getParameter("start_year");
        String toYear = request.getParameter("end_year");
        String image = request.getParameter("avatar");
        System.out.println(image);
        Date fromDate = new Date(Integer.parseInt(fromYear), Integer.parseInt(fromMonth), 1);
        Date toDate = new Date(Integer.parseInt(toYear), Integer.parseInt(toMonth), 1);

        Certificates certificates = new Certificates(user.getId(), schoolName, major, image, fromDate, toDate);
        user.setLastName(fullName);
        user.setEmail(email);
        user.setPhone(phone);
        user.setGender(gender == 1 ? "Nam" : "Nữ");
        user.setDateOfBirth(new Date(Integer.parseInt(birthday)));
        user.setAvatar(image);

        Jdbi jdbi= JDBIConnection.get();
        Certificates certificates1 = jdbi.withExtension(CertificatesDao.class, dao -> dao.getCertificatesByUserId(user.getId()));
        if (certificates1 == null) {
            jdbi.useExtension(CertificatesDao.class, dao -> dao.insertCertificates(certificates));
        } else {
            jdbi.useExtension(CertificatesDao.class, dao -> dao.updateCertificates(certificates));
        }
        jdbi.useExtension(NewUserDao.class, dao -> {
            dao.updateUser(user);
        });
        session.setAttribute("account", user);
        response.sendRedirect(request.getContextPath() + "/my-account");
    }
}
