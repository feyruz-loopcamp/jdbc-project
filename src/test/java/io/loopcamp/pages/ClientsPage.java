package io.loopcamp.pages;

import io.loopcamp.utility.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.List;

public class ClientsPage extends BasePage{

    @FindBy(xpath = "//table/tbody/tr")
    public List<WebElement> allRows;

    @FindBy(xpath = "//span[text() = 'Search']")
    public WebElement search;

    @FindBy(xpath = "//span[text() = 'Create new client']")
    public WebElement createNewClient;

    @FindBy(xpath = "//span[text() = 'Business']")
    public WebElement business;

    @FindBy(xpath = "//span[text() = 'Personal']")
    public WebElement personal;

    @FindBy(xpath = "//div[@class='v-data-footer__pagination']")
    public WebElement clientsNumber;

    @FindBy(xpath = "//input[@id='input-5048']")
    public WebElement firstNameAdd;

    @FindBy(xpath = "//input[@id='input-5049']")
    public WebElement lastNameAdd;

    @FindBy(xpath = "//input[@id='input-5050']")
    public WebElement ownerAdd;

    @FindBy(xpath = "//span[@class='v-list-item__mask']")
    public WebElement ownerFirstFromList;

    @FindBy(xpath = "//input[@id='input-4385']")
    public WebElement firstNameEdit;

    @FindBy(xpath = "//input[@id='input-4386']")
    public WebElement lastNameEdit;

    @FindBy(xpath = "//input[@id='input-4387']")
    public WebElement ssn;

    @FindBy(xpath = "//input[@id='input-4389']")
    public WebElement dob;

    @FindBy(xpath = "//input[@id='input-4391']")
    public WebElement email;

    @FindBy(xpath = "//input[@id='input-4392']")
    public WebElement phoneNum;

    @FindBy(xpath = "//input[@id='input-5984']")
    public WebElement phoneNumAdd;

    @FindBy(xpath = "//input[@id='input-5985']")
    public WebElement passwordAdd;

    @FindBy(xpath = "//input[@id='input-5989']")
    public WebElement confirmPasswordAdd;

    @FindBy(xpath = "//input[@id='input-4393']")
    public WebElement adviser;

    @FindBy(xpath = "//input[@id='input-4397']")
    public WebElement service;

    @FindBy(xpath = "//input[@id='input-4402']")
    public WebElement owner;

    @FindBy(xpath = "//input[@id='input-4406']")
    public WebElement collaborator;

    @FindBy(xpath = "//input[@id='input-4425']")
    public WebElement addressLineOne;

    @FindBy(xpath = "//input[@id='input-4426']")
    public WebElement addressLineTwo;

    @FindBy(xpath = "//input[@id='input-4427']")
    public WebElement city;

    @FindBy(xpath = "//input[@id='input-4428']")
    public WebElement state;

    @FindBy(xpath = "//input[@id='input-4432']")
    public WebElement zipCode;

    @FindBy(xpath = "//input[@id='input-4434']")
    public WebElement marriageSingle;

    @FindBy(xpath = "//input[@id='input-4436']")
    public WebElement marriageMarried;

    @FindBy(xpath = "//span[text() = ' Save ']")
    public WebElement saveChanges;

    @FindBy(xpath = "//span[contains(text(), 'has been updated successfully')]")
    public WebElement toastMessage;

    @FindBy(xpath = "//label[@for='input-5902']")
    public WebElement createNewUserCheckbox;

    @FindBy(xpath = "//input[@id='input-5957']")
    public WebElement emailAdd;


    @FindBy(xpath = "//[@id='input-5981']")
    public WebElement adviserDropdown;



    public WebElement editClient(String client) {
        String xpath = "//div[text() = ' " + client + " ']";
        return Driver.getDriver().findElement(By.xpath(xpath));
    }


    public WebElement getClientsHeaderItem(String headerItem) {
        String xpath = "//span[text() = '" + headerItem + "']";
        return Driver.getDriver().findElement(By.xpath(xpath));
    }


    public int getClientsCount(String module) {
        return Integer.parseInt(clientsNumber.getText().substring(clientsNumber.getText().lastIndexOf(" ") + 1));
    }


}
