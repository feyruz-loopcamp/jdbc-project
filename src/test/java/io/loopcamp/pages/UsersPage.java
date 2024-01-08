package io.loopcamp.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class UsersPage extends BasePage {






    @FindBy(xpath = "//label[text()='All']")
    public WebElement allRadioButton;

    @FindBy(xpath = "//span[text()='Search']")
    public WebElement searButton;

    @FindBy(xpath = "//span[text()=' Search ']")
    public WebElement getSearButtonToUpdateSearch;





}
