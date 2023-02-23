package com.nlu.fit.giasunlu.controller.admin.overturn;

import com.google.gson.Gson;
import com.nlu.fit.giasunlu.model.Chart;
import com.nlu.fit.giasunlu.model.Turnover;
import com.nlu.fit.giasunlu.service.TurnoverService;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.service.serviceImpl.NewUserServiceImp;
import com.nlu.fit.giasunlu.service.serviceImpl.TurnoverServiceImpl;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.*;

@WebServlet(name = "OverturnController", value = "/admin/turnover")
public class TurnoverController extends HttpServlet {

    TurnoverService turnoverService = new TurnoverServiceImpl();
    UserService userService = new NewUserServiceImp();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws javax.servlet.ServletException, java.io.IOException, java.io.IOException, java.io.IOException {

        int countCustomer = userService.countCustomer();
        int countTeacher = userService.countTeacher();


        request.setAttribute("countCustomer", countCustomer);
        request.setAttribute("countTeacher", countTeacher);

        Long costStudent = turnoverService.getTurnoverOfStudent();
        Long costTeacher = turnoverService.getTurnoverOfTeacher();

        request.setAttribute("costStudent", costStudent);
        request.setAttribute("costTeacher", costTeacher);

        // chart year
        Date[] dates = getDateOfSixMonthFromNow();
        Chart chartMonth = new Chart();
        chartMonth.setLabels(Arrays.stream(dates).map(date -> {
            SimpleDateFormat formatter = new SimpleDateFormat("MM-yyyy");
            return formatter.format(date);
        }).toArray(String[]::new));

        Long[] data = Arrays.stream(dates).map(date -> {
            List<Turnover> turnovers = turnoverService.getTurnoverByMonth(date.getMonth() + 1, date.getYear() + 1900);
            return turnovers.stream().mapToLong(Turnover::getCost).sum();
        }).toArray(Long[]::new);

        chartMonth.setData(data);
        request.setAttribute("chartMonth", new Gson().toJson(chartMonth));

        // chart year
        Date[] years = getDateOfYeaDatesFromNow();
        Chart chartYear = new Chart();
        chartYear.setLabels(Arrays.stream(years).map(date -> {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy");
            return formatter.format(date);
        }).toArray(String[]::new));

        Long[] dataYear = Arrays.stream(years).map(date -> {
            return turnoverService.getTurnoverByYear(date.getYear() + 1900);
        }).toArray(Long[]::new);

        chartYear.setData(dataYear);
        request.setAttribute("chartYear", new Gson().toJson(chartYear));

        request.getRequestDispatcher("/view/admin/turnover.jsp").forward(request, response);
    }

    private Date[] getDateOfSixMonthFromNow() {
        Date[] dates = new Date[6];

        for (int i = 0; i < dates.length; i++) {
            Date date = new Date();
            Calendar calendar = Calendar.getInstance();
            calendar.setTime(date);
            calendar.set(Calendar.DAY_OF_MONTH, 1);
            calendar.add(Calendar.MONTH, -i);
            dates[i] = calendar.getTime();
        }
        Collections.reverse(Arrays.asList(dates));
        return dates;
    }

    private Date[] getDateOfYeaDatesFromNow() {
        Date[] dates = new Date[3];
        Date date = new Date();
        Calendar calendar = Calendar.getInstance();
        for (int i = 0; i < dates.length; i++) {
            calendar.set(Calendar.DAY_OF_MONTH, 1);
            calendar.add(Calendar.YEAR, -i);
            dates[i] = calendar.getTime();
        }
        Collections.reverse(Arrays.asList(dates));
        return dates;
    }
}
