package com.py.tool;

import lombok.extern.slf4j.Slf4j;

import java.io.FileWriter;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;

@Slf4j
public class MetadataExtractor {

    public static void extractMetadata(Connection connection, FileWriter writer) throws SQLException, IOException {
        List<CompletableFuture<Void>> futures = new ArrayList<>();
        try (Statement st = connection.createStatement()) {
            ResultSet tables = st.executeQuery("SHOW TABLES");
            while (tables.next()) {
                String tableName = tables.getString(1);
                CompletableFuture<Void> future = ThreadKit.supplyAsync(() -> {
                    try {
                        getSchema(tableName, connection, writer);
                        return tableName;
                    } catch (SQLException | IOException e) {
                        throw new RuntimeException(e);
                    }
                }).thenAccept((action) -> {
                    log.info("表：{}处理完毕", action);
                });
                futures.add(future);
            }
            // 关闭结果集
            futures.forEach(CompletableFuture::join);
            log.info("表处理完毕!!!!!!!!");
        }


    }

    private static void getSchema(String tableName, Connection connection, FileWriter writer) throws SQLException, IOException {
        String sql = "SHOW CREATE TABLE %s;";
        sql = String.format(sql, tableName);
        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ResultSet resultSet = ps.executeQuery();
            log.info("正在处理表：{}", tableName);
            while (resultSet.next()) {
                writer.write(resultSet.getString(2) + ";\n\n");
            }
            // 关闭结果集
            resultSet.close();
        }
    }
}
