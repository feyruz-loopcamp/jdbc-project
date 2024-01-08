package io.loopcamp.pages;

import io.loopcamp.utility.BrowserUtil;
import io.loopcamp.utility.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.LinkedList;
import java.util.List;

public class LeadsPage extends BasePage {


    // This is not needed but just keep in case to remind you to write @FindBy
    @FindBy(xpath = "//table/thead/tr/th[.='Full name']/span | //table/thead/tr/th[.='Email address']/span | //table/thead/tr/th[.='Phone number']/span")
    public List<WebElement> leadsTableColumns;


    public List <String> getLeadsTableColumnNames (String column1, String column2, String column3){
        List <String> leadsTableColumnsTexts = BrowserUtil.getElementsText(Driver.getDriver().findElements(By.xpath("//table/thead/tr/th[.='" + column1 + "']/span | //table/thead/tr/th[.='" + column2 + "']/span | //table/thead/tr/th[.='" + column3 + "']/span")));
        //List <String> leadsTableColumnsTexts = BrowserUtil.getElementsText(leadsTableColumns);
        return leadsTableColumnsTexts;
    }


    public List <String> getLeadsTableRowInfo(int rowNum) {
        List <String> getLeadsTableRowInfoTexts = BrowserUtil.getElementsText(Driver.getDriver().findElements(By.xpath("//table/tbody//tr[" + rowNum +"]/td[2] | //table/tbody//tr[" + rowNum +"]/td[3] | //table/tbody//tr[" + rowNum +"]/td[4]")));
        return getLeadsTableRowInfoTexts;
    }


    public List <List<String>> getAllLeadsTableRowInfo(int totalRows) {
        List <List<String>> getAllLeadsTableRowInfoTexts = new LinkedList<>();
        for (int i = 0; i < totalRows; i++) {
            getAllLeadsTableRowInfoTexts.add(getLeadsTableRowInfo(i));
        }
        return getAllLeadsTableRowInfoTexts;
    }



}
