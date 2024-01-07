package io.loopcamp.pages;

import org.openqa.selenium.WebElement;

import java.util.ArrayList;
import java.util.List;

public class DashBoardPage extends BasePage{



    public List<String> getModuleNames (){
        List <String> modulNameList = new ArrayList<>();

        for (WebElement each : allModules) {
            modulNameList.add(each.getText());
        }

        return modulNameList;
    }


    public String getModuleCount (){
        return allModules.size()+"";
    }

    public String getProfileName () {
        return accountHolderName.getText();
    }
}
