package com.nlu.fit.giasunlu.service.serviceImpl;

import com.nlu.fit.giasunlu.dao.CoinHistoryDao;
import com.nlu.fit.giasunlu.dao.CommentDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.CoinHistory;
import com.nlu.fit.giasunlu.model.Comment;
import com.nlu.fit.giasunlu.service.CoinHistoryService;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CoinHistoryServiceImpl implements CoinHistoryService {
    Jdbi jdbi = JDBIConnection.get();
@Override
    public void insertCoinHistory() {

    }

    @Override
    public void updateCoinHistory() {

    }

    @Override
    public void deleteCoinHistory() {

    }

    @Override
    public List<CoinHistory> getCoinHistoryByUserId(int id) {

        return jdbi.withExtension(CoinHistoryDao.class, dao -> dao.getAllClass(id));
    }
}
