package io.loopcamp.jdbctests.utility;

import java.util.Properties;
import java.io.FileInputStream;

public class ConfigurationReader {


    /**
     * 1st we make properties object
     * We make it private because do not want to be accessible outside the class
     * We make Properties obj static because do not want to create the object ot the Configuration Class to call it.
     * We make a static block because we want it to be run first before everything
     */
    private static Properties properties;


    static {
        try {
            String path = "config.properties";
            FileInputStream input = new FileInputStream(path);
            properties = new Properties();
            properties.load(input);
            input.close();
        } catch (Exception e) {
            System.out.println("File not found in ConfigurationReader class");
            e.printStackTrace();
        }
    }

    public static String getProperty(String keyName){
        return properties.getProperty(keyName);

    }
}
