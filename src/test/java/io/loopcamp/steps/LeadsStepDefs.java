package io.loopcamp.steps;

import com.github.dockerjava.api.model.Link;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.loopcamp.pages.LeadsPage;
import io.loopcamp.pages.UsersPage;
import io.loopcamp.utility.DB_Util;
import org.junit.Assert;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class LeadsStepDefs {
    LeadsPage leadsPage = new LeadsPage();

    List<Map<String, String>> allUiLeadsData = new ArrayList<>();
    @When("the user gets all the leads information based on {string} and {string} and {string}")
    public void the_user_gets_all_the_leads_information_based_on_and_and(String column1, String column2, String column3) {
        //System.out.println(leadsPage.getLeadsTableColumnNames());
        //System.out.println(leadsPage.getResultCount());

        List <String> uiLeadsTableColumnNames = leadsPage.getLeadsTableColumnNames(column1, column2, column3);

        for (int i = 1; i <= leadsPage.getResultCount(); i++) {
            Map <String, String> eachRow = new LinkedHashMap<>();

            for (int j = 0; j < uiLeadsTableColumnNames.size(); j++) {
                eachRow.put(uiLeadsTableColumnNames.get(j), leadsPage.getLeadsTableRowInfo(i).get(j));
            }
            allUiLeadsData.add(eachRow);
        }
        //System.out.println(allUiLeadsData);
    }


    @Then("verify leads information match in DB")
    public void verify_leads_information_match_in_db() {
        String query = "SELECT owner_first_name AS \"Full name\", contact_email_address AS \"Email address\", contact_phone_number AS \"Phone number\" FROM document.leads WHERE is_deleted = 'false'";
        DB_Util.runQuery(query);
        List <Map <String, String>> allDbLeadsData = DB_Util.getAllRowAsListOfMap();
        //System.out.println(allUiLeadsData);
        //System.out.println(allDbLeadsData);


        Assert.assertTrue(allUiLeadsData.containsAll(allDbLeadsData));

    }



}
