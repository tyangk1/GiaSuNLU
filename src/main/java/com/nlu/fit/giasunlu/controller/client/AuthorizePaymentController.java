package com.nlu.fit.giasunlu.controller.client;

import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.TopUp;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.UserServiceImpl;
import com.nlu.fit.giasunlu.utils.PaymentServices;
import com.paypal.base.rest.PayPalRESTException;
import org.jdbi.v3.core.Jdbi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AuthorizePaymentController", value = "/authorize-payment")
public class AuthorizePaymentController extends HttpServlet {
    private UserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        int userId = Integer.parseInt(request.getParameter("user_id"));
        String userName = request.getParameter("user_name");
        float amount = Float.parseFloat(request.getParameter("amount"));
        float coin =  Float.parseFloat(request.getParameter("coin"));
        String paymentMethod = request.getParameter("payment_method");
        float total = amount;

        TopUp topUp = new TopUp(userId, userName, amount, coin, paymentMethod, total);
        Jdbi jdbi= JDBIConnection.get();
        User user = jdbi.withExtension(NewUserDao.class, dao -> dao.getUser(userId));
        System.out.println(topUp);
        System.out.println(user);
        try {
            PaymentServices paymentServices = new PaymentServices();
            String approvalLink = paymentServices.authorizePayment(topUp, user);

            response.sendRedirect(approvalLink);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("/view/client/error.jsp").forward(request, response);
        }
    }
}
