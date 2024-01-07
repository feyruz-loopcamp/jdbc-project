package io.loopcamp.jdbctests.day01;

import java.sql.*;

public class P00_TestOracleConnection {

    public static void main(String[] args) throws SQLException {

        String dbURl = "jdbc:oracle:thin:@34.207.85.246:1521:XE";
        String dbUserName = "hr";
        String dbPassword = "hr";

        // DriverManger class has getConnection() method which is used to create connection
        Connection conn = DriverManager.getConnection(dbURl, dbUserName, dbPassword);


        // Create Statement object from Connection to execute Query
        // These two parameter will allow us to scroll through the table rows.
        Statement stmtn = conn.createStatement();


        // Using this stmnt object to execute the query
        ResultSet rs = stmtn.executeQuery("SELECT * FROM REGIONS");

        // We use next() method to iterate each row
        // While the next row is not NUL we can continue iterating

        rs.next();  // This will jump next row


        // getString(columnName) -- this method will return the value of the given ColumnName
        String firstRowRegionName = rs.getString("REGION_NAME");
        System.out.println(firstRowRegionName);

        rs.next();
        //Instead of using column name we can also use index. Indexes starts from 1
        System.out.println(rs.getString(2));


        // This is REGION_ID and data type is int. That is why we can use .getInt() method.
        int getRegionId = rs.getInt(1);
        System.out.println(getRegionId);



        // We can not get the String data type and assign it into int data type.
        // That is why we are getting exception with the code below
        //int getNextRegionName = rs.getInt(2);
        //System.out.println(getNextRegionName);


        // How can you loop through the region id and  region names and print all names in this format for all:   1-Europe
        // NOTE: this will show only since we are already at the last row.
        while (rs.next()) {
            System.out.println(rs.getString("REGION_ID") + "-" + rs.getString(2));
        }


        System.out.println();
        //But One question and also let see a better loop
        //Q: Can we use more than one query in one connection to get data
        //A: Yes
        rs = stmtn.executeQuery( "SELECT * FROM DEPARTMENTS where manager_id is not null" );

        // Get information like this format: 	10-Administration 200-1700
        while (rs.next()){
            System.out.println(rs.getInt(1)  + "-" + rs.getString(2) + "-" + rs.getInt(3) + "-" + rs.getInt(4)); // you can print to see
        }


        // This will throw exception saying basically the rows have been finished.
        //System.out.println(rs.getString("DEPARTMENT_NAME"));


        //How can I jump to the first row? - This will cause an exception. Lets look at it on the next file
        //rs.first();
        //System.out.println(rs.getString("DEPARTMENT_NAME"));
















    }


}
