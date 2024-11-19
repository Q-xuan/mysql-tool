package com.py.tool;

import com.py.config.DBConfig;

import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.DateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public class BackupGenerator {
    public static void generateBackup() {
        String date = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd"));
        try (Connection connection = DatabaseConnection.getConnection();
             FileWriter writer = new FileWriter(DBConfig.DB_BACKUP_PATH + "_" + date + ".sql")) {

            MetadataExtractor.extractMetadata(connection, writer);
        } catch (SQLException | IOException e) {
            e.printStackTrace();
        }
    }
}
