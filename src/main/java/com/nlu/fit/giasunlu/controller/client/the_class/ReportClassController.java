package com.nlu.fit.giasunlu.controller.client.the_class;

import com.nlu.fit.giasunlu.model.Report;
import com.nlu.fit.giasunlu.service.ClassService;
import com.nlu.fit.giasunlu.service.serviceImpl.ClassServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;

@WebServlet(name = "ReportClass", value = "/class/report-class")
public class ReportClassController extends HttpServlet {
    ClassService classService = new ClassServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Report report = new Report();

        PrintWriter printWriter = resp.getWriter();
        try {
            BeanUtils.populate(report, req.getParameterMap());
            System.out.println(report);
            printWriter.print("success");
        } catch (IllegalAccessException | InvocationTargetException e) {
            printWriter.print("fail");
        }


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Report report = new Report();

        PrintWriter printWriter = resp.getWriter();
        try {
            BeanUtils.populate(report, req.getParameterMap());
            classService.insertReport(report);
            printWriter.print("success");
        } catch (IllegalAccessException | InvocationTargetException e) {
            printWriter.print("fail");
        }
        printWriter.close();
    }
}
