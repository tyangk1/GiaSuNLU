package com.nlu.fit.giasunlu.service.serviceImpl;

import com.nlu.fit.giasunlu.dao.ReportDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.Report;
import com.nlu.fit.giasunlu.service.ReportService;
import org.jdbi.v3.core.Jdbi;

import java.util.List;


public class ReportServiceImpl implements ReportService {
    Jdbi jdbi = JDBIConnection.get();

    @Override
    public void insertReportPost(Report report) {
        jdbi.useExtension(ReportDao.class, dao -> dao.insert(report));
    }

    @Override
    public void getReportPost(int postId) {
        jdbi.useExtension(ReportDao.class, dao -> dao.getReportFromPost(postId));
    }

    @Override
    public List<Report> getReportPost() {
        return jdbi.withExtension(ReportDao.class, ReportDao::getReports);

    }

    @Override
    public void deleteReportPost(int id) {
        jdbi.useExtension(ReportDao.class, dao -> dao.delete(id));
    }

    @Override
    public void updateReportStatus(int id, int status) {
        jdbi.useExtension(ReportDao.class, dao -> dao.updateStatus(id, status));
    }
}
