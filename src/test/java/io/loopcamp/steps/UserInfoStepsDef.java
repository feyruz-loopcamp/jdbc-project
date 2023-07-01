package io.loopcamp.steps;

import io.cucumber.java.en.*;

import io.loopcamp.jdbctests.utility.ConfigurationReader;
import io.loopcamp.jdbctests.utility.DB_Util;
import org.junit.Assert;

import java.util.List;

public class UserInfoStepsDef {

    List <String> actualResult;
    @Given("Establish the database connection")
    public void establish_the_database_connection() {
        //DB_Util.createConnection(ip, userName, passsword); //since we have connecting through HOOKS, we do not need this
        System.out.println("*****************************");
        System.out.println("CONNECTION IS HANDLED INN HOOKS");
        System.out.println("*****************************");

    }
    @When("Execute query to get all columns for {string}")
    public void execute_query_to_get_all_columns_for(String string) {

        //select * from identity.departments;
        DB_Util.runQuery("select * from identity." + string);
        actualResult = DB_Util.getColumnDataAsList("name");

    }
    @Then("verify the below columns are listed in result for")
    public void verify_the_below_column_sare_listed_in_result_for( List<String> expectedResult ) {

        Assert.assertEquals(expectedResult, actualResult);
        System.out.println("Actual: " + actualResult);
        System.out.println("Expected: " + expectedResult);
    }

}
