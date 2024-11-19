package com.py.config;

public class DBConfig {

    public static String DB_HOST = "localhost";
    public static String DB_NAME = "demo";
    public static String DB_URL = "jdbc:mysql://%s:3306/%s?useUnicode=true&characterEncoding=utf8";
    public static String DB_USERNAME = "root";
    public static String DB_PASSWORD = "123456";
    public static String DB_DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
    public static String DB_BACKUP_PATH = "backup";
}
