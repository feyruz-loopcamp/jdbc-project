package io.loopcamp.steps;

import io.loopcamp.pages.UsersPage;
import io.loopcamp.utility.BrowserUtil;
import io.loopcamp.utility.DB_Util;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class UsersStepDefs {

    UsersPage usersPage = new UsersPage();

    @When("the user navigates to {string} page")
    public void the_user_navigates_to_page(String module) {
       usersPage.navigateModule(module);
        BrowserUtil.waitFor(2);
    }

    String expectedUserCount;
    @When("the user gets total user count")
    public void the_user_gets_total_user_count (){
        usersPage.searButton.click();
        usersPage.allRadioButton.click();
        usersPage.getSearButtonToUpdateSearch.click();
        BrowserUtil.waitFor(2);
        expectedUserCount = usersPage.getUsersCount()+"";
    }

    @Then("verify user count information match in DB")
    public void verify_user_count_information_match_in_DB(){
        DB_Util.runQuery("select count(*) from document.users");
        String actualUserCount = DB_Util.getCellValue(1, 1);
        Assert.assertEquals(expectedUserCount, actualUserCount);
    }
}
