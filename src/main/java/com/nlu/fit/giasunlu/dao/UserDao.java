package com.nlu.fit.giasunlu.dao;

import com.nlu.fit.giasunlu.model.User;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;

import java.util.List;


public interface UserDao {
    void saveUser(User user);

    void updateUser(User user);

    void deleteUser(int id);

    User get(String username);

    User getUser(int id);

    List<User> getAllUser();

    List<User> search(String username);

    boolean checkExistEmail(String email);

    boolean checkExistUsername(String username);
    String getPassword(String email);

    void changePassword(int id, String password);

    User findByEmail(String email);
}
