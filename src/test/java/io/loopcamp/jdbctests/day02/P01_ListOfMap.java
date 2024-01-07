package io.loopcamp.jdbctests.day02;

import org.junit.Test;

import java.sql.*;
import java.util.*;

public class P01_ListOfMap {
    // Right now, these are instance variables.
    String dbURl = "jdbc:oracle:thin:@34.207.85.246:1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";


    @Test
    public void task1 ()  {

        Map< String, Object> row1Map = new HashMap<>();
        row1Map.put ("FIRST_NAME", "Steven");             	// KEY=FIRST_NAME     	VALUE=Steven
        row1Map.put ("LAST_NAME", "King");             		// KEY=FLAST_NAME     	VALUE=King
        row1Map.put ("SALARY", 24000);             		    // KEY=SLARY     	    VALUE=24,000
        System.out.println(row1Map);


        Map < String, Object> row2Map = new HashMap<>();
        row2Map.put ("FIRST_NAME", "Neena");             	// KEY=FIRST_NAME     	VALUE= Neena
        row2Map.put ("LAST_NAME", "Kochhar");             	// KEY=FLAST_NAME     	VALUE= Kochhar
        row2Map.put ("SALARY", 17000);             		    // KEY=SLARY     	VALUE= 17,000
        System.out.println(row2Map);


        // After getting each row into a MAP, now we can store EACH MAP into a List
        List <Map <String, Object>> dataList = new ArrayList<>();
        dataList.add(row1Map);
        dataList.add(row2Map);
        System.out.println(dataList);


        /**
         * Short cut to run on MAC - Shift+Control+R
         * Optionally control+R (Mac)
         *
         * WIN - Shift+F10
         */

        // Get me the last name of Steven from list
        System.out.println(dataList.get(0).get("LAST_NAME" ));

    }




    @Test
    public void Task2 () throws SQLException{
        // DriverManger class has getConnection() method which is used to create connection
        Connection conn = DriverManager.getConnection(dbURl, dbUserName, dbPassword);

        // Create Statement object from Connection to execute Query
        Statement stmtn = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // Using this stmnt object to execute the query
        ResultSet rs = stmtn.executeQuery("select FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE ROWNUM < 5");

        //To be able to move through columns
        ResultSetMetaData rsmd = rs.getMetaData();
        rs.next();




        Map< String, Object> row1Map = new HashMap<>();
        row1Map.put (rsmd.getColumnName(1), rs.getString(1));             	    // KEY=FIRST_NAME     	VALUE=Steven
        row1Map.put (rsmd.getColumnName(2), rs.getString(2));             		// KEY=FLAST_NAME     	VALUE=King
        row1Map.put (rsmd.getColumnName(3), rs.getString(3));             	    // KEY=SLARY     	    VALUE=24,000
        System.out.println(row1Map);


        rs.next();
        Map < String, Object> row2Map = new HashMap<>();
        row2Map.put (rsmd.getColumnName(1), rs.getString(1));             	// KEY=FIRST_NAME     	VALUE= Neena
        row2Map.put (rsmd.getColumnName(2), rs.getString(2));             	// KEY=FLAST_NAME     	VALUE= Kochhar
        row2Map.put (rsmd.getColumnName(3), rs.getString(3));                // KEY=SLARY     	    VALUE= 17,000
        System.out.println(row2Map);


        List<Map <String, Object>> dataList = new ArrayList<>();
        dataList.add(row1Map);
        dataList.add(row2Map);
        System.out.println(dataList);



        // Print each map from dataList
        System.out.println("=========== PRINT MAPS FROM THE LIST ==============");


        for (Map<String, Object> eachMap : dataList) {
            System.out.println(eachMap);
        }


        // we have a mthod called .close() whic will close all our connection, statement, ResultSet
        rs.close();
        stmtn.close();
        conn.close();

    }





    @Test
    public void task3 () throws SQLException {
        // DriverManger class has getConnection() method which is used to create connection
        Connection conn = DriverManager.getConnection(dbURl, dbUserName, dbPassword);

        // Create Statement object from Connection to execute Query
        Statement stmtn = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // Using this stmnt object to execute the query
        ResultSet rs = stmtn.executeQuery("select FIRST_NAME, LAST_NAME, SALARY FROM EMPLOYEES WHERE ROWNUM < 5");

        //To be able to move through columns
        ResultSetMetaData rsmd = rs.getMetaData();


        List <Map <String, Object>> dataList = new ArrayList<>();


        // 1. iterate through the rows
        while (rs.next()){

            Map <String, Object> eachRowMap = new LinkedHashMap<>();

            // Get the columnSize --- > rsmd.getColumnCount()
            for (int i = 1; i <= rsmd.getColumnCount(); i++) {
                eachRowMap.put(rsmd.getColumnName(i), rs.getString(i));    // FIRST_NAME = Steven  |  LAST_NAME = KING  |  SALARY = 24000
            }
            dataList.add(eachRowMap);
        }


        System.out.println(dataList);


        // Print each with Lamnda expression
        System.out.println("We are printing each MAP with Lambda expressoin");
        dataList.forEach(each -> System.out.println(each));


        System.out.println("We are printing each MAP with fori loop");
        for (int i = 0; i < dataList.size(); i++) {
            System.out.println(dataList.get(i));
        }



        rs.close();
        stmtn.close();
        conn.close();

    }








}
