package io.loopcamp.pages;

import io.loopcamp.utility.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import java.util.List;

/**
 * parent class for concrete Page object classes
 * provides constructor with initElements method for re-usability
 * abstract - to prevent instantiation.
 */
public abstract class BasePage {

    public BasePage() {
        PageFactory.initElements(Driver.getDriver(), this);
    }


    @FindBy(xpath = "//img[@alt='Docuport']")
    public WebElement pageHeaderIcon;

    @FindBy(xpath = "//div[@class='v-avatar primary']/following-sibling::span")
    public WebElement accountHolderName;

    @FindBy(xpath = "//span[text()='Log out']")
    public WebElement logOutLink;

    @FindBy (xpath = "//span[@class='body-1']")
    public List<WebElement> allModules;

    @FindBy(xpath = "//div[@class='v-data-footer__pagination']")
    public WebElement totalResultCount;

    public void logOut(){
        accountHolderName.click();
        logOutLink.click();
    }


    public void navigateModule(String moduleName){
        for (WebElement each : allModules) {
            if (each.getText().equals(moduleName)) {
                each.click();
            }
        }
    }

    public int getResultCount(){
        String expectedUserCount = totalResultCount.getText().substring(totalResultCount.getText().lastIndexOf(" ")+1)+"";

        return Integer.parseInt(expectedUserCount);
    }

}
