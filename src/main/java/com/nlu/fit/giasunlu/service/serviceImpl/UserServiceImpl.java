package com.nlu.fit.giasunlu.service.serviceImpl;

import com.nlu.fit.giasunlu.dao.UserDao;
import com.nlu.fit.giasunlu.dao.daoImpl.UserDaoImpl;
import com.nlu.fit.giasunlu.model.User;
import com.nlu.fit.giasunlu.service.UserService;
import com.nlu.fit.giasunlu.utils.SecurityUtils;

import java.util.List;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();

    @Override
    public void saveUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public void updateUser(User newUser) {
        userDao.updateUser(newUser);
    }

    @Override
    public void deleteUser(int id) {
        userDao.deleteUser(id);
    }

    @Override
    public User get(String username) {
        return userDao.get(username);
    }

    @Override
    public User findByEmail(String email) {
        return userDao.findByEmail(email);
    }

    @Override
    public User getUser(int id) {
        return userDao.getUser(id);
    }

    @Override
    public List<User> getAllUser() {
        return userDao.getAllUser();
    }

    @Override
    public List<User> search(String username) {
        return userDao.search(username);
    }

    @Override
    public List<User> getAllCustomer() {
        return null;
    }

    @Override
    public List<User> getAllTeacher() {
        return null;
    }

    @Override
    public User getUserWithAccessToken(String email, String password) {
        User user = this.get(email);
        if (user != null && SecurityUtils.encodePassword(password).equals(user.getPassword())) {
            return user;
        }

        return null;
    }

    @Override
    public User getUserWithAccessToken(String accessToken) {
        return null;
    }

    @Override
    public User loginAdmin(String email, String password) {
        User user = this.get(email);
        if (user != null && SecurityUtils.encodePassword(password).equals(user.getPassword())) {
            return user;
        }

        return null;
    }

    @Override
    public boolean register(String email, String password, String firstName, String lastName) {
        if (userDao.checkExistEmail(email)) {
            return false;
        }
        userDao.saveUser(new User(email, password, firstName, lastName));
        return true;
    }


    public boolean checkExistEmail(String email) {
        return userDao.checkExistEmail(email);
    }

    @Override
    public void changePassword(int id, String password) {
        userDao.changePassword(id, password);
    }

    public boolean checkExistUsername(String username) {
        return userDao.checkExistUsername(username);
    }

    @Override
    public String getPassword(String email) {
        return userDao.getPassword(email);
    }

    @Override
    public Integer countCustomer() {
        return null;
    }

    @Override
    public Integer countTeacher() {
        return null;
    }

    @Override
    public void subCoin(int id, int coin) {

    }
}

