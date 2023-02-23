package com.nlu.fit.giasunlu.controller.client;

import com.nlu.fit.giasunlu.utils.PaymentServices;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.ShippingAddress;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.PayPalRESTException;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ReviewPaymentController", value = "/review_payment")
public class ReviewPaymentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");

        try {
            PaymentServices paymentServices = new PaymentServices();
            Payment payment = paymentServices.getPaymentDetails(paymentId);

            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);
            ShippingAddress shippingAddress = transaction.getItemList().getShippingAddress();

            request.setAttribute("payer", payerInfo);
            request.setAttribute("transaction", transaction);
            request.setAttribute("shippingAddress", shippingAddress);

            String url = "/view/client/payment-detail.jsp?paymentId=" + paymentId + "&PayerID=" + payerId;

            request.getRequestDispatcher(url).forward(request, response);

        } catch (PayPalRESTException ex) {
            request.setAttribute("errorMessage", ex.getMessage());
            ex.printStackTrace();
            request.getRequestDispatcher("/view/client/error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
