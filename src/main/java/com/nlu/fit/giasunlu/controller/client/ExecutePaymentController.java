package com.nlu.fit.giasunlu.controller.client;

import com.nlu.fit.giasunlu.dao.CoinHistoryDao;
import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.CoinHistory;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.TurnoverService;
import com.nlu.fit.giasunlu.service.serviceImpl.TurnoverServiceImpl;
import com.nlu.fit.giasunlu.utils.PaymentServices;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;
import org.jdbi.v3.core.Jdbi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "ExecutePaymentController", value = "/execute-payment")
public class ExecutePaymentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");
        String userId = request.getParameter("user_id");

        try {
            PaymentServices paymentServices = new PaymentServices();
            Payment payment = paymentServices.executePayment(paymentId, payerId);

            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);

            request.setAttribute("payer", payerInfo);
            request.setAttribute("transaction", transaction);
            float coin = Float.parseFloat(transaction.getDescription().substring(transaction.getDescription().indexOf(":")+1));
            float total = Float.parseFloat(transaction.getAmount().getTotal());
            System.out.println(coin);
            Jdbi jdbi= JDBIConnection.get();
            User user = jdbi.withExtension(NewUserDao.class, dao -> dao.getUser(Integer.parseInt(userId)));
//            jdbi.useExtension(NewUserDao.class, dao -> dao.updateCoin(user.getId(), (long) (user.getCoin() + coin)));
            user.setCoin((int) (user.getCoin() + coin));
            HttpSession session = request.getSession();
            session.setAttribute("account", user);
            jdbi.useExtension(NewUserDao.class, dao -> dao.updateUser(user));
            CoinHistory coinHistory = new CoinHistory(user.getId(), String.format("Nạp %s xu vào tài khoản", coin), coin, "Paypal", new Date(), 0);
            jdbi.useExtension(CoinHistoryDao.class, dao -> dao.insert(coinHistory));
            TurnoverService turnoverService = new TurnoverServiceImpl();

            turnoverService.insertTurnover(user.getId(), (long) coin, (long) total);
            request.getRequestDispatcher("/view/client/receipt-detail.jsp").forward(request, response);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("/view/client/error.jsp").forward(request, response);
        }
    
    }
}
