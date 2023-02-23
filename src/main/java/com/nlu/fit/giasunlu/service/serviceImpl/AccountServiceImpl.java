package com.nlu.fit.giasunlu.service.serviceImpl;

import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.dao.TutorPortfolioDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.TutorPortfolio;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.AccountService;
import org.jdbi.v3.core.Jdbi;

public class AccountServiceImpl implements AccountService {
    Jdbi jdbi = JDBIConnection.get();

    @Override
    public User getUser(String token) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.getUserByAccessToken(token));
    }

    @Override
    public void updateUser(User user) {
        jdbi.useExtension(NewUserDao.class, dao -> dao.updateUser(user));
    }

    @Override
    public TutorPortfolio getTutorPortfolio(int userId) {
        return jdbi.withExtension(TutorPortfolioDao.class, dao -> dao.getTutorPortfolioByUserId(userId));
    }

    @Override
    public void updateTutorPortfolio(TutorPortfolio tutorPortfolio) {
        jdbi.useExtension(TutorPortfolioDao.class, dao -> dao.updateTutorPortfolio(tutorPortfolio));
    }

    @Override
    public void insertTutorPortfolio(TutorPortfolio tutorPortfolio) {
        jdbi.useExtension(TutorPortfolioDao.class, dao -> dao.insertTutorPortfolio(tutorPortfolio));
    }

    @Override
    public void deleteTutorPortfolio(int id) {
        jdbi.useExtension(TutorPortfolioDao.class, dao -> deleteTutorPortfolio(id));
    }
}
