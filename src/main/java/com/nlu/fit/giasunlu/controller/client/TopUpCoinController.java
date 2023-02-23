package com.nlu.fit.giasunlu.controller.client;

import com.nlu.fit.giasunlu.model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "TopUpCoinController", value = "/my-account/top-up-coin")
public class TopUpCoinController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        if (user == null) {
            response.sendRedirect(request.getContextPath()+"/login");
            return;
        }
        request.getRequestDispatcher("/view/client/coin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
