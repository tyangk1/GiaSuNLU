package com.nlu.fit.giasunlu.jdbc;

import com.mysql.cj.jdbc.MysqlDataSource;
import org.jdbi.v3.core.Jdbi;
import org.jdbi.v3.sqlobject.SqlObjectPlugin;

import java.sql.SQLException;

public class JDBIConnection {
    private static final String db = "giasunlu"; //giasunlu
    private static final String host = "localhost";
    private static final String user = "root";
    private static final String pass = "123456";
    private static final String url = "jdbc:mysql://" + host + "/" + db;
    private static Jdbi jdbi;

    private JDBIConnection() {
    }

    private static void makeConnect() {
        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setURL(url);
        dataSource.setUser(user);
        dataSource.setPassword(pass);

        try {
            dataSource.setUseCompression(true);
            dataSource.setAutoReconnect(true);

        } catch (SQLException e) {
            e.printStackTrace();
        }
        jdbi = Jdbi.create(dataSource);
        jdbi.installPlugin(new SqlObjectPlugin());

    }

    public static Jdbi get() {
        if (jdbi == null)
            makeConnect();
        return jdbi;
    }
}
