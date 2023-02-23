package com.nlu.fit.giasunlu.service.serviceImpl;

import com.nlu.fit.giasunlu.dao.TurnoverDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.Turnover;
import com.nlu.fit.giasunlu.service.TurnoverService;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class TurnoverServiceImpl implements TurnoverService {
    Jdbi jdbi = JDBIConnection.get();

    @Override
    public void insertTurnover(int userId, long coin, long cost) {
        jdbi.useExtension(TurnoverDao.class, dao -> {
            Turnover turnover = new Turnover();
            turnover.setCoin(coin);
            turnover.setCost(cost);
            turnover.setUserId(userId);

            dao.insertTurnover(turnover);
        });
    }

    @Override
    public void updateTurnover(int userId, long coin, long cost) {
        Turnover turnover = new Turnover();
        turnover.setCoin(coin);
        turnover.setCost(cost);
        turnover.setUserId(userId);
        jdbi.useExtension(TurnoverDao.class, dao -> {
            dao.updateTurnover(turnover);
        });
    }

    @Override
    public void deleteTurnover(int id) {
        jdbi.useExtension(TurnoverDao.class, dao -> {
            dao.deleteTurnover(id);
        });
    }

    @Override
    public Turnover getTurnoverById(int id) {
        return jdbi.withExtension(TurnoverDao.class, dao -> {
            return dao.getTurnoverById(id);
        });
    }

    @Override
    public List<Turnover> getTurnoverByUserId(int userId) {
        return jdbi.withExtension(TurnoverDao.class, dao -> {
            return dao.getTurnoverByUserId(userId);
        });
    }

    @Override
    public List<Turnover> getAllTurnover() {
        return jdbi.withExtension(TurnoverDao.class, TurnoverDao::getAllTurnover);
    }

    @Override
    public List<Turnover> getTurnoverByUserIdAndMonth(int userId, int month, int year) {
        return jdbi.withExtension(TurnoverDao.class, dao -> {
            return dao.getTurnoverByUserIdAndMonth(userId, month, year);
        });
    }

    @Override
    public List<Turnover> getTurnoverByMonth(int month, int year) {
        return jdbi.withExtension(TurnoverDao.class, dao -> {
            return dao.getTurnoverByMonth(month, year);
        });
    }

    @Override
    public Long getTurnoverByYear(int i) {
        return jdbi.withExtension(TurnoverDao.class, dao -> {
            return dao.totalCostInYear(i);
        });
    }

    @Override
    public Long getTurnoverOfStudent() {
        return jdbi.withExtension(TurnoverDao.class, TurnoverDao::totalCostOfStudent);
    }

    @Override
    public Long getTurnoverOfTeacher() {
        return jdbi.withExtension(TurnoverDao.class, TurnoverDao::totalCostOfTeacher);
    }
}
