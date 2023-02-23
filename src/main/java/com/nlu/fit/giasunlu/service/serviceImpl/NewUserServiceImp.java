package com.nlu.fit.giasunlu.service.serviceImpl;

import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class NewUserServiceImp implements UserService {
    Jdbi jdbi = JDBIConnection.get();

    @Override
    public void saveUser(User user) {
        jdbi.useExtension(NewUserDao.class, dao -> dao.insertUser(user));
    }

    @Override
    public void updateUser(User user) {
        jdbi.useExtension(NewUserDao.class, dao -> dao.updateUser(user));
    }

    @Override
    public void deleteUser(int id) {
        jdbi.useExtension(NewUserDao.class, dao -> dao.deleteUser(id));
    }

    @Override
    public User get(String username) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.get(username));
    }

    @Override
    public User findByEmail(String email) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.getUserByEmail(email));
    }

    @Override
    public User getUser(int id) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.getUser(id));
    }

    @Override
    public User getUserWithAccessToken(String username, String password) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.checkLogin(username, password));
    }

    public User getUserWithAccessToken(String accessToken) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.getUserByAccessToken(accessToken));
    }

    @Override
    public User loginAdmin(String email, String password) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.checkLogin(email, password));
    }

    @Override
    public boolean register(String email, String password, String firstName, String lastName) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.register(email, password, firstName, lastName)) != null;
    }

    @Override
    public List<User> getAllUser() {
        return jdbi.withExtension(NewUserDao.class, NewUserDao::getAllUser);
    }

    @Override
    public List<User> search(String keyword) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.search(keyword));
    }

    @Override
    public List<User> getAllCustomer() {
        return jdbi.withExtension(NewUserDao.class, NewUserDao::getAllCustomer);
    }

    @Override
    public List<User> getAllTeacher() {
        return jdbi.withExtension(NewUserDao.class, NewUserDao::getAllTeacher);
    }

    @Override
    public boolean checkExistEmail(String email) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.checkExistEmail(email)) != null;
    }

    @Override
    public void changePassword(int id, String password) {
        jdbi.useExtension(NewUserDao.class, dao -> dao.changePassword(id, password));
    }

    @Override
    public boolean checkExistUsername(String username) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.get(username)) != null;
    }

    @Override
    public String getPassword(String email) {
        return jdbi.withExtension(NewUserDao.class, dao -> dao.getPassword(email));
    }

    @Override
    public Integer countCustomer() {
        return jdbi.withExtension(NewUserDao.class, NewUserDao::countCustomer);
    }

    @Override
    public Integer countTeacher() {
        return jdbi.withExtension(NewUserDao.class, NewUserDao::countTeacher);
    }

    public void subCoin(int id, int coin) {
        jdbi.useExtension(NewUserDao.class, dao -> dao.subCoin(id, coin));
    }
}
