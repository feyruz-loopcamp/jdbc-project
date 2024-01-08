package io.loopcamp.steps;

import io.cucumber.java.Scenario;
import io.loopcamp.utility.ConfigurationReader;
import io.loopcamp.utility.DB_Util;
import io.loopcamp.utility.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.util.concurrent.TimeUnit;

public class Hooks {

    @Before("@ui")
    public void setUp(){
        System.out.println("this is coming from BEFORE for UI");
        Driver.getDriver().manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        Driver.getDriver().manage().window().maximize();
        Driver.getDriver().get(ConfigurationReader.getProperty("docuport.ui.url"));


    }



    // closing the driver
    @After("@ui")
    public void tearDown(Scenario scenario){
        System.out.println("This is coming from After for UI");

        if (scenario.isFailed()){
            final byte []screenshot =
                    ((TakesScreenshot)Driver.getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot,"image/png", scenario.getName());
            //            scenario.attach(screenshot,"image/png","screenshot");
        }
        Driver.closeDriver();

    }



    @Before ("@db")
    public void setUpDB(){
        String ip = ConfigurationReader.getProperty("docuport.db.url");
        String un = ConfigurationReader.getProperty("docuport.db.username");
        String pw = ConfigurationReader.getProperty("docuport.db.password");

        DB_Util.createConnection(ip, un, pw);
    }


    @After("@db")
    public void destroyDB () {
        DB_Util.destroy();
    }



}
