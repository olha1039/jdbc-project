package com.cydeo.jdbctests.day02;

import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class P01_ListOfMap {
    String dbUrl = "jdbc:oracle:thin:@18.234.204.52:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";

    @Test
    public void task1() throws SQLException {

        Map<String, Object> rowMap1 = new HashMap<>();
        rowMap1.put("first_name", "Steven");
        rowMap1.put("last_name", "King");
        rowMap1.put("salary", 24000);

        System.out.println(rowMap1);

        System.out.println("====Row Map 2====");
        Map<String, Object> rowName2 = new HashMap<>();
        rowName2.put("first_name", "Neena");
        rowName2.put("last_name", "Kocchar");
        rowName2.put("salary", 17000);

        System.out.println(rowName2);

        List<Map<String, Object>> dataList = new ArrayList<>();
        dataList.add(rowMap1);
        dataList.add(rowName2);

        System.out.println(dataList.get(0).get("last_name"));

        System.out.println("=============================");
    }

    @Test
    public void test2() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select first_name,last_name,salary from employees where rownum<6");

        ResultSetMetaData rsmd = rs.getMetaData();
        rs.next();

        Map<String, Object> rowMap1 = new HashMap<>();
        rowMap1.put(rsmd.getColumnName(1), rs.getString(1));
        rowMap1.put(rsmd.getColumnName(2), rs.getString(2));
        rowMap1.put(rsmd.getColumnName(3), rs.getInt(3));

        System.out.println(rowMap1);
        rs.next();

        System.out.println("====Row Map 2====");
        Map<String, Object> rowName2 = new HashMap<>();
        rowName2.put(rsmd.getColumnName(1), rs.getString(1));
        rowName2.put(rsmd.getColumnName(2), rs.getString(2));
        rowName2.put(rsmd.getColumnName(3), rs.getInt(3));

        System.out.println(rowName2);

        List<Map<String, Object>> dataList = new ArrayList<>();
        dataList.add(rowMap1);
        dataList.add(rowName2);

        System.out.println(dataList.get(0).get(rsmd.getColumnName(2)));

        // PRINT MAPS FROM THE LIST
        System.out.println("===== PRINT MAPS FROM THE LIST =====");
        for (Map<String, Object> eachRowMap : dataList) {
            System.out.println(eachRowMap);
        }

        System.out.println("========================================");

        //close conn
        rs.close();
        statement.close();
        conn.close();
    }

    @Test
    public void task3() throws SQLException{
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        ResultSet rs = statement.executeQuery("select first_name,last_name,salary from employees where rownum<6");
        ResultSetMetaData rsmd = rs.getMetaData();

        List<Map<String, Object>> dataList = new ArrayList<>();

        while(rs.next()){
            Map<String,Object> rowMap = new HashMap<>();
           for (int i = 1; i <= rsmd.getColumnCount(); i++){
               rowMap.put(rsmd.getColumnName(i),rs.getString(i));
           }
            dataList.add(rowMap);
        }



        rs.close();
        statement.close();
        conn.close();
    }

}
