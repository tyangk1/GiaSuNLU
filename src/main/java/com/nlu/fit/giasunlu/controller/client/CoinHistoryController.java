package com.nlu.fit.giasunlu.controller.client;

import com.nlu.fit.giasunlu.dao.CoinHistoryDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.CoinHistory;
import com.nlu.fit.giasunlu.model.User;
import org.jdbi.v3.core.Jdbi;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CoinHistoryController", value = "/my-account/coin-history")
public class CoinHistoryController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("account");
        if (user == null) {
            response.sendRedirect(request.getContextPath()+"/login");
            return;
        }
        Jdbi jdbi= JDBIConnection.get();
        List<CoinHistory> coinHistories = jdbi.withExtension(CoinHistoryDao.class, dao -> dao.getAllClass(user.getId()));

        request.setAttribute("list",coinHistories);

        request.getRequestDispatcher("/view/client/coin-history.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
