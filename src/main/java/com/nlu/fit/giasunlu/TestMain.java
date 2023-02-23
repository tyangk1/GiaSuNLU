package com.nlu.fit.giasunlu;

import com.nlu.fit.giasunlu.dao.NewUserDao;
import com.nlu.fit.giasunlu.jdbc.JDBIConnection;
import com.nlu.fit.giasunlu.model.User;
import org.jdbi.v3.core.Jdbi;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class TestMain {
    public static void main(String[] args) {
//        Jdbi jdbi= JDBIConnection.get();
//        jdbi.useExtension(BlogDao.class, dao->{
//            Blog blob= new Blog(1,1,"content","thumbnail","content");
//            dao.insertBlog(blob);
//        });
        Jdbi jdbi = JDBIConnection.get();
        jdbi.useExtension(NewUserDao.class, dao -> {
            List<User> users= dao.getAllCustomer();
            for (User user: users) {
                System.out.println(user);
            }
        });
    }
}
