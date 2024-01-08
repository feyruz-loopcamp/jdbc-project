package io.loopcamp.steps;

import io.loopcamp.pages.DashBoardPage;
import io.loopcamp.pages.LoginPage;
import io.loopcamp.utility.BrowserUtil;
import io.loopcamp.utility.DB_Util;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class DashboardStepsDef {
    LoginPage loginPage;
    DashBoardPage dashBoardPage;

    @Given("the {string} on the home page")
    public void the_on_the_home_page(String user) {
        loginPage=new LoginPage();
        loginPage.login(user);
        BrowserUtil.waitFor(3);
    }

    String actualNumber;
    @When("the advisor gets dashboard module count")
    public void the_advisor_gets_dashboard_module_count() {
        dashBoardPage =new DashBoardPage();
        actualNumber = dashBoardPage.getModuleCount();
        System.out.println("actualNumber = " + actualNumber);
    }

    @Then("dashboard module count information must match with DB")
    public void dashboard_module_count_information_must_match_with_db() {
        //TODO: Need to update the query. FLooks like there is DB table storing the module names.
        String query="select count(*) from book_borrow\n" +
                "where is_returned=0";
        DB_Util.runQuery(query);

        String expectedNumber = DB_Util.getFirstRowFirstColumn();

        Assert.assertEquals(expectedNumber,actualNumber);

    }

    String uiAccountHolderName;
    @When("the advisor gets account holder name")
    public void the_advisor_gets_account_holder_name() {
        dashBoardPage =new DashBoardPage();
        uiAccountHolderName = dashBoardPage.getProfileName();
    }


    @Then("verify ui account name is in db")
    public void verify_ui_account_name_is_in_db() {
        //select * from document.users where first_name = '$name' and last_name = '$lastName';
        String query = "select * from document.users where first_name = '" + uiAccountHolderName.substring(0, uiAccountHolderName.indexOf(" ")) + "' and last_name = '" + uiAccountHolderName.substring(uiAccountHolderName.indexOf(" ")+1) + "'";

        DB_Util.runQuery(query);

        String dbAccountHolderName = DB_Util.getCellValue(1, 2) + " " + DB_Util.getCellValue(1, 3);

        Assert.assertEquals(uiAccountHolderName, dbAccountHolderName);

    }
}
