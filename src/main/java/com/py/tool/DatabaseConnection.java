package com.py.tool;

import com.py.config.DBConfig;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    public static Connection getConnection() throws SQLException {
        String url = String.format(DBConfig.DB_URL, DBConfig.DB_HOST, DBConfig.DB_NAME);
        String user = DBConfig.DB_USERNAME;
        String password = DBConfig.DB_PASSWORD;
        try {
            Class.forName(DBConfig.DB_DRIVER_CLASS);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException(e);
        }
        return DriverManager.getConnection(url, user, password);
    }
}
