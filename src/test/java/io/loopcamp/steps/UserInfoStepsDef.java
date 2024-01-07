package io.loopcamp.steps;

import io.cucumber.java.en.*;

import io.loopcamp.utility.DB_Util;
import org.junit.Assert;

import java.util.List;

public class UserInfoStepsDef {

    String actualResult;

    @Given("Establish the database connection")
    public void establish_the_database_connection() {

        System.out.println("*****************************");
        //DB_Util.createConnection(); -> we will manage it via Hooks
        System.out.println("CONNECTION IS HANDLED VIA HOOKS");
        System.out.println("*****************************");

    }

    @When("Execute query to get all IDs from users")
    public void execute_query_to_get_all_i_ds_from_users() {

        String query1="select count(id) from document.users";

        DB_Util.runQuery(query1);

        actualResult = DB_Util.getFirstRowFirstColumn();

        System.out.println("actualResult = " + actualResult);

    }
    @Then("verify all users has unique ID")
    public void verify_all_users_has_unique_id() {

        String query2="select count(distinct id) from document.users"; // 566   500


        DB_Util.runQuery(query2);

        String expectedResult = DB_Util.getCellValue(1, 1);

        System.out.println("expectedResult = " + expectedResult);

        //Make assertions

        Assert.assertEquals(expectedResult,actualResult);

    }

    List<String> actualList;
    @When("Execute query to get all columns")
    public void execute_query_to_get_all_columns() {
        DB_Util.runQuery("select * from document.users");
        actualList = DB_Util.getAllColumnNamesAsList();
        System.out.println("actualList = " + actualList);
    }

    @Then("verify the below columns are listed in result")
    public void verify_the_below_columns_are_listed_in_result(List<String> expectedList) {
        Assert.assertEquals(expectedList,actualList);
        System.out.println("expectedList = " + expectedList);
    }

    List<String> actualListFor;
    @When("Execute query to get all columns for {string}")
    public void execute_query_to_get_all_columns_for(String table) {
        DB_Util.runQuery("select * from identity."+table);
        actualListFor = DB_Util.getColumnDataAsList("name");

        System.out.println("actualListFOR = " + actualListFor);
    }


    @Then("verify the below columns are listed in result for")
    public void verify_the_below_columns_are_listed_in_result_for(List<String> expectedList) {

        Assert.assertEquals(expectedList,actualListFor);
        System.out.println("expectedList = " + expectedList);
    }
}
