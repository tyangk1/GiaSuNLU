package com.nlu.fit.giasunlu.service;

import com.nlu.fit.giasunlu.model.TutorPortfolio;
import com.nlu.fit.giasunlu.model.User;

public interface AccountService {

    User getUser(String token);

    void updateUser(User user);

    TutorPortfolio getTutorPortfolio(int userId);

    void updateTutorPortfolio(TutorPortfolio tutorPortfolio);

    void insertTutorPortfolio(TutorPortfolio tutorPortfolio);

    void deleteTutorPortfolio(int id);
}
