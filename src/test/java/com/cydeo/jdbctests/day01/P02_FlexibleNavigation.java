package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {
    String dbUrl = "jdbc:oracle:thin:@18.234.204.52:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select first_name,last_name from employees");

        // ResultSet.TYPE_SCROLL_INSENSITIVE --> to be able to scroll cursor dynamically and jump to specific rows, we are gonna use that as parameter into createStatement

        // ResultSet.CONCUR_READ_ONLY --> we are saying I am not going to update anything into database

        // first row
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        // second row
        rs.next();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        // moves to the last row
        rs.last();
        System.out.println(rs.getString(1) + " - " + rs.getString(2));

        //getRow -- it will return current row
        System.out.println("=====Get Row=====");
        int row = rs.getRow();
        System.out.println(row);

        //absolute -- will jump to the row 10
        System.out.println("====Absolute====");
        rs.absolute(10);
        System.out.println(rs.getString(1) + " " + rs.getString(2));
        System.out.println(rs.getRow()); // 10

        // moves the cursor to the previous row
        System.out.println("====Previous====");
        rs.previous();
        System.out.println(rs.getString(1) + " " + rs.getString(2));
        System.out.println(rs.getRow()); // 9

        // the trick is the cursor is at row 9 now
        System.out.println("===Print all table dynamically====");
        rs.beforeFirst();
        while (rs.next()){
            System.out.println(rs.getString(1) + " " + rs.getString(2));
        }






        rs.close();
        statement.close();
        conn.close();
    }
}