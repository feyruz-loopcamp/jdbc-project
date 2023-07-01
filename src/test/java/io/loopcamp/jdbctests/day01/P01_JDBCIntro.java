package io.loopcamp.jdbctests.day01;

import java.sql.*;

public class P01_JDBCIntro {

    public static void main(String[] args) throws SQLException {


        String dbURl = "jdbc:oracle:thin:@34.207.85.246:1521:XE";
        String dbUserName = "hr";
        String dbPassword = "hr";

        // DriverManger class has getConnection() method which is used to create connection
        Connection conn = DriverManager.getConnection(dbURl, dbUserName, dbPassword);

        // Create Statement object from Connection to execute Query
        Statement stmtn = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // Using this stmnt object to execute the query
        ResultSet rs = stmtn.executeQuery("SELECT * FROM EMPLOYEES");

        rs.next();
        System.out.println(rs.getString("FIRST_NAME"));



        while(rs.next()){
            System.out.println(rs.getDouble("SALARY"));
        }


        // This is after last row and that is why we are getting exception
        //System.out.println(rs.getString("FIRST_NAME"));


        // This will not through exception now becuase we provided 2 paramaters in the createStatment() method
        rs.first();
        System.out.println(rs.getString("FIRST_NAME"));


        // How can I jump to the 9th row and print the LAST_NAME
        rs.absolute(9);
        System.out.println(rs.getString("LAST_NAME"));



        // Ca you get first name and last name and salary for that person in the row 12th in the format of: LAST_NAME, FIRST_NAME $SALARY
        rs.absolute(12);
        System.out.println(rs.getString("LAST_NAME") +", "+ rs.getString("FIRST_NAME") + " $"+rs.getString("Salary"));



        // Can you get first name and last name and salary for that person in the row last in the format of: LAST_NAME, FIRST_NAME $SALARY
        rs.last();
        System.out.println(rs.getString("LAST_NAME") +", "+ rs.getString("FIRST_NAME") + " $"+rs.getString("Salary"));


        // Can you get first name and last name and salary for that person in the row one before last in the format of: LAST_NAME, FIRST_NAME $SALARY
        rs.previous();
        System.out.println(rs.getString("LAST_NAME") +", "+ rs.getString("FIRST_NAME") + ", "+rs.getString("Salary"));




    }
}
