package io.loopcamp.runner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;



import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import java.util.concurrent.TimeUnit;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {
                "html:target/html-reports/cucumber-reports.html",
                "rerun:target/rerun.txt",
                "json:target/json-reports/json-report"
        },
        features = "src/test/resources/features",
        glue = "io/loopcamp/steps",
        dryRun = false
        //tags = ""

)



public class CukesRunner {
}
