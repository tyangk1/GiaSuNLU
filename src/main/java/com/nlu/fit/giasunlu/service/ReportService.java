package com.nlu.fit.giasunlu.service;

import com.nlu.fit.giasunlu.model.Report;

import java.util.List;

public interface ReportService {

    void insertReportPost(Report report);

    void getReportPost(int postId);

    List<Report> getReportPost();

    void deleteReportPost(int id);

    void updateReportStatus(int id, int status);
}
