package com.nlu.fit.giasunlu.controller.client.report_post;

import com.nlu.fit.giasunlu.model.Report;
import com.nlu.fit.giasunlu.service.ReportService;
import com.nlu.fit.giasunlu.service.serviceImpl.ReportServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "RepostPost", value = "/client/report-post")
public class RepostPostController extends HttpServlet {
    ReportService reportService = new ReportServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Report report = new Report();
        PrintWriter out = response.getWriter();
        try {
            BeanUtils.populate(report, request.getParameterMap());
            reportService.insertReportPost(report);
            out.println("success");

        } catch (IllegalAccessException | InvocationTargetException e) {
            response.setStatus(404);
            out.println("error");
        }
        out.close();
    }
}
