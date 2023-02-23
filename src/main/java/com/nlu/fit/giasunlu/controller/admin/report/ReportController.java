package com.nlu.fit.giasunlu.controller.admin.report;

import com.nlu.fit.giasunlu.model.Report;
import com.nlu.fit.giasunlu.service.ReportService;
import com.nlu.fit.giasunlu.service.serviceImpl.ReportServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet(name = "ReportController", value = "/admin/report")
public class ReportController extends HttpServlet {
    ReportService reportService = new ReportServiceImpl();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException, java.io.IOException, java.io.IOException {
        List<Report> reports = reportService.getReportPost();
        request.setAttribute("reports", reports);

        request.getRequestDispatcher("/view/admin/table-data-report.jsp").forward(request, response);
    }


}
