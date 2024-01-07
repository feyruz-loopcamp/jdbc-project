package io.loopcamp.jdbctests.day02;

import io.loopcamp.utility.DB_Util;
import org.junit.Test;


import java.util.List;
import java.util.Map;

public class P02_DBUtilPractice {

    @Test
    public void task1 () {

        // create DB Connection which has hard coded specifications: dbURL, dbUsername, dbPassword
        DB_Util.createConnection();

        // run query --- >  SELECT FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
        DB_Util.runQuery("SELECT FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES");


        /**
         * Shortcut
         * MAC - option+Enter ---- > intoruces a local variable
         * WIN - alt + ENTER ---- > intoruces a local variable
         */
        //Get all data from DB as List of Map
        List<Map<String, String>> allRowAsListOfMap = DB_Util.getAllRowAsListOfMap();


        // Print each row
        for (Map <String, String>  eachRow: allRowAsListOfMap) {
            System.out.println(eachRow);
        }

        // GEt me the STEVEN
        System.out.println(DB_Util.getFirstRowFirstColumn());



        // 2nd column and 2 row
        System.out.println(DB_Util.getCellValue(2, 2));



        // get me total cell count
        System.out.println(DB_Util.getRowCount());


        //Close the connection
        DB_Util.destroy();


    }


}
