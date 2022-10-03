package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P03_MetadataTest {
    @Test
    public void task1() throws SQLException {
        String dbUrl = "jdbc:oracle:thin:@18.234.204.52:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select * from EMPLOYEES");

        // Database Metadata --> information about database
        DatabaseMetaData databaseMetaData = conn.getMetaData();
        System.out.println(databaseMetaData.getUserName());
        System.out.println(databaseMetaData.getDatabaseProductName());
        System.out.println(databaseMetaData.getDatabaseProductVersion());
        System.out.println(databaseMetaData.getDriverName());
        System.out.println(databaseMetaData.getDriverVersion());

        /*
        We are not gonna use it for testing purpose.Just information about database
         */

        // ResultSetMetaData -- data about table
        ResultSetMetaData rsmd = rs.getMetaData();

        // how many columns we have
        int columnCount = rsmd.getColumnCount();
        System.out.println(columnCount);

        //what is the column name 5th column
        System.out.println(rsmd.getColumnName(5));

        //PRINT ALL COLUMN NAMES DYNAMICALLY
        System.out.println("================");
        for (int i = 1; i <= columnCount; i++) {
            System.out.println(i + " " + rsmd.getColumnName(i));
        }

        //PRINT ALL TABLE CONTENT DYNAMICALLY
        System.out.println("====================");
        while (rs.next()) {
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                System.out.println(rsmd.getColumnName(i) + "-" + rs.getString(i));
            }
            System.out.println();
        }





        rs.close();
        statement.close();
        conn.close();
    }
}
