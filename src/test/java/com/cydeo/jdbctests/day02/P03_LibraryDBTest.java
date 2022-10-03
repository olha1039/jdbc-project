package com.cydeo.jdbctests.day02;

import com.cydeo.jdbctests.utility.DB_Util;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

public class P03_LibraryDBTest {

    /* Create connection to MySQL Database
    String url = "jdbc:mysql://34.230.35.214:3306/library2";
    String username =  "library2_client";
    String password =  "6s2LQQTjBcGFfDhY"; */

    @Test
    public void testUserCount() {
        // create conn
        DB_Util.createConnection("jdbc:mysql://34.230.35.214:3306/library2", "library2_client", "6s2LQQTjBcGFfDhY");
        //run query
        DB_Util.runQuery("select count(*) from users");
        // get how many user we have from UI
        String expectedCount = DB_Util.getCellValue(1, 1);
        System.out.println(expectedCount);
        // we need to implement UI steps in order to get data
        String actualResult = "267"; // manually for now
        // make an assertion
        Assertions.assertEquals(expectedCount, actualResult);

        //destroy
        DB_Util.destroy();
    }

    @Test
    public void testBookCount() {
        // create conn
        DB_Util.createConnection("jdbc:mysql://34.230.35.214:3306/library2", "library2_client", "6s2LQQTjBcGFfDhY");
        //run query
        DB_Util.runQuery("select count(*) from books");
        //get how many books have from DB
        String expectedBookCount = DB_Util.getFirstRowFirstColumn();
        //  How Many Books From UI
        String actualBookCount = "1405";
        //  Make An Assertion
        Assertions.assertEquals(expectedBookCount,actualBookCount);
        //  Close Connection
        DB_Util.destroy();
    }


}
