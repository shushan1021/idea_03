package com.cy.Dao;

import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

@Slf4j
@SpringBootTest
public class DataSourceTests {

    @Autowired
    private DataSource dataSource;

    @Test
    void testGetConnection() throws SQLException {
        Connection connection = dataSource.getConnection();
        log.info("conn is " + connection);
    }

    @Value("${logging.level.com.cy:info}")
    private String logLevel;

    @Test
    void  testGetLogLevel(){
        log.info(logLevel);
    }
}
