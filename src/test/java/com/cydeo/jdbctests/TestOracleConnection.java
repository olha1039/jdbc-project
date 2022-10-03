package com.cydeo.jdbctests;

import java.sql.*;

public class TestOracleConnection {
    public static void main(String[] args) throws SQLException {


        String dbUrl = "jdbc:oracle:thin:@18.234.204.52:1521:XE";
        String dbUsername = "hr";
        String dbPassword = "hr";

        // DriverManager class getConnection is used for to make connection with database
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        //statement helps us to execute query
        Statement statement = conn.createStatement();

        //Result set stores data that we get from after query execution
        ResultSet rs = statement.executeQuery("select * from regions");
/*
        //next() --> move to cursor in next line
        rs.next();
        // getInt(index) will return Int if we have Int value in that column
        //    - index starts from 1 with SQL tables
        // getInt(columnLabel)
        System.out.println(rs.getInt(1)); //1
        System.out.println(rs.getInt("REGION_ID")); //1

        // display region name
        System.out.println(rs.getString(2)); //Europe
        System.out.println(rs.getString("REGION_NAME")); //Europe

        // move to the next row
        rs.next();
        // 2 - Americas
        System.out.println(rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));

        // 3 - Asia
        rs.next();
        System.out.println(rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));

        // 4 - Middle East and Africa
        rs.next();
        System.out.println(rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));
*/

        while(rs.next()){
            System.out.println(rs.getInt("REGION_ID") + " - " + rs.getString("REGION_NAME"));
        }

        // close connection
        rs.close();
        statement.close();
        conn.close();

    }
}
