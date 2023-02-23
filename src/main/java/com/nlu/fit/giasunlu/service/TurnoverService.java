package com.nlu.fit.giasunlu.service;

import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.Turnover;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public interface TurnoverService {

    Jdbi jdbi = JDBIConnection.get();

    void insertTurnover(int userId, long coin, long cost);

    void updateTurnover(int userId, long coin, long cost);

    void deleteTurnover(int id);

    Turnover getTurnoverById(int id);

    List<Turnover> getTurnoverByUserId(int userId);

    List<Turnover> getAllTurnover();

    List<Turnover> getTurnoverByUserIdAndMonth(int userId, int month, int year);

    List<Turnover> getTurnoverByMonth(int month, int year);

    Long getTurnoverByYear(int i);

    Long getTurnoverOfStudent();

    Long getTurnoverOfTeacher();
}
