package io.loopcamp.jdbctests;

import java.sql.*;

public class TestOracleConnection {

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
        ResultSet rs = stmtn.executeQuery("SELECT * FROM EMPLOYEES");

        // We use next() method to iterate each row
        // While the next row is not NUL we can continue iterating

        rs.next();  // This will jump next row


        // getString(columnName) -- this method will return the value of the given ColumnName
        String firstRowFirstName = rs.getString("FIRST_NAME");
        System.out.println(firstRowFirstName);

        rs.next();
        System.out.println(rs.getString("FIRST_NAME"));

        //Instead of using column name we can also use index. Indexes starts from 1
        String lastName = rs.getString(3);
        System.out.println(lastName);  //



        int getNextSalary = rs.getInt(8);
        System.out.println(getNextSalary);


        // We can not get the String data type and assign it into int data type.
        // That is why we are getting exception with the code below
        //int getNextLastname = rs.getInt(2);
        //System.out.println(getNextSalary);


        // How can you loop through the first_name and print all names
        while (rs.next()) {
            System.out.println(rs.getString("FIRST_NAME"));
            System.out.println(rs.getString(2));
            System.out.println();
        }

        // This will throw exception saying basically the rows have been finished.
        //System.out.println(rs.getString("FIRST_NAME"));


        //How can I jump to the first row? - This will cause an exception. Lets look at it on the next file
        //rs.first();
        //System.out.println(rs.getString("FIRST_NAME"));







    }


}
