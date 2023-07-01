package io.loopcamp.jdbctests.day02;

import io.loopcamp.jdbctests.utility.DB_Util;
import org.junit.Test;


public class P03_DocuportDBPractice {

    String docuportUrl = "jdbc:postgresql://34.135.178.209:5432/postgres";
    String dbUserName = "tstadmin";
    String dbPassword = "hoxBam-jaghuj-7cette";



    @Test
    public void task1 (){
        DB_Util.createConnection(docuportUrl, dbUserName, dbPassword);

        DB_Util.runQuery("SELECT  * from document.users order by first_name");

        System.out.println(DB_Util.getRowCount());


        System.out.println(DB_Util.getCellValue(1,2));

    }


}
