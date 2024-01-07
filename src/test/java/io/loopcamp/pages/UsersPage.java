package io.loopcamp.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class UsersPage extends BasePage {




    @FindBy(xpath = "//div[@class='v-data-footer__pagination']")
    public WebElement usersNumber;

    @FindBy(xpath = "//label[text()='All']")
    public WebElement allRadioButton;

    @FindBy(xpath = "//span[text()='Search']")
    public WebElement searButton;

    @FindBy(xpath = "//span[text()=' Search ']")
    public WebElement getSearButtonToUpdateSearch;



    public int getUsersCount(){
        String expectedUserCount = usersNumber.getText().substring(usersNumber.getText().lastIndexOf(" ")+1)+"";

        return Integer.parseInt(expectedUserCount);
    }

}
