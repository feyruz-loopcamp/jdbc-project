package io.loopcamp.pages;

import io.loopcamp.utility.ConfigurationReader;
import io.loopcamp.utility.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;


public class LoginPage {

    public LoginPage() {
        PageFactory.initElements(Driver.getDriver(), this);
    }

    @FindBy(id = "input-14")
    public WebElement emailBox;

    @FindBy(id = "input-15")
    public WebElement passwordBox;

    @FindBy(className = "v-btn__content")
    public WebElement loginButton;



    public void login(String userType){

        String username= ConfigurationReader.getProperty(userType+"_username");
        String password=ConfigurationReader.getProperty(userType+"_password");


        emailBox.sendKeys(username);
        passwordBox.sendKeys(password);
        loginButton.click();

    }




}
