package com.nlu.fit.giasunlu.utils;


import com.nlu.fit.giasunlu.model.User;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import java.util.Properties;

public class HibernateUtils {
    private static SessionFactory sessionFactory;

    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            try {
                Configuration configuration = new Configuration();
                // Hibernate settings equivalent to hibernate.cfg.xml's properties\\
                Properties settings = new Properties();
                settings.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
                settings.put(Environment.URL, "jdbc:mysql://localhost:3306/giasunlu?useSSL=false");
                settings.put(Environment.USER, "root");
                settings.put(Environment.PASS, "123456");
                settings.put(Environment.DIALECT, "org.hibernate.dialect.MySQLDialect");

                settings.put(Environment.SHOW_SQL, "false");

                settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");

                settings.put(Environment.HBM2DDL_AUTO, "create-drop");

                configuration.setProperties(settings);

                // adđ thêm các class vào
                configuration.addAnnotatedClass(User.class);
//                configuration.addAnnotatedClass(Advertisement.class);
//                configuration.addAnnotatedClass(Blog.class);
//                configuration.addAnnotatedClass(Class.class);
//                configuration.addAnnotatedClass(Comment.class);
//                configuration.addAnnotatedClass(JoinClass.class);
//                configuration.addAnnotatedClass(Post.class);
//                configuration.addAnnotatedClass(PostImage.class);
//                configuration.addAnnotatedClass(QA.class);
//                configuration.addAnnotatedClass(Receipt.class);
//                configuration.addAnnotatedClass(Role.class);
//                configuration.addAnnotatedClass(TutorPortfolio.class);

                ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                        .applySettings(configuration.getProperties()).build();
                System.out.println("Hibernate Java Config serviceRegistry created");
                sessionFactory = configuration.buildSessionFactory(serviceRegistry);
                return sessionFactory;

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return sessionFactory;
    }
}
