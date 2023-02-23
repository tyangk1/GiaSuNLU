package com.nlu.fit.giasunlu.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnection {
    public static Connection getJDBCConnection() {
        String db="giasunlu";
        String host="localhost";
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String user = "root";
            String pass = "123456";
            String url = "jdbc:mysql://"+host+"/"+db;
            connection = DriverManager.getConnection(url, user, pass);
            System.out.println("thanh cong");


        } catch (ClassNotFoundException | SQLException ex) {
            ex.printStackTrace();
        }

        return connection;
    }

}
