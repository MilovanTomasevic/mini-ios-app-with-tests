package utils;

import org.openqa.selenium.remote.DesiredCapabilities;

import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Created by mt on 25/07/2018.
 */
public class Config {

    public static SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy_HH:mm:ss");

    public static String getTimeStamp() {

        return sdf.format(Calendar.getInstance().getTime());
    }

    /**
     * Configurations for iOS.
     */
    public static final class iOS {

        public static DesiredCapabilities getCapabilities() {

            DesiredCapabilities capabilities = new DesiredCapabilities();

            capabilities.setCapability("app", "/Users/mt/Desktop/KYCircleMenuDemo.app");
            capabilities.setCapability("automationName", "XCUITest");
            capabilities.setCapability("platformName", "iOS");
            capabilities.setCapability("deviceName", "iPhone");
            capabilities.setCapability("udid", "98ab52fc2992280f4ef979102d63ca2f49cb8d57"); //iphone SE
            //capabilities.setCapability("udid", "b780e6e59ac2f69ef6dc4710eaed32b16f403016"); //iphone X
            //capabilities.setCapability("udid", "2135b9f2234d4f75ba76ffa21d4a0303c8e2cca4"); //iphone +
            capabilities.setCapability("platformVersion", "11.4.1");
            capabilities.setCapability("newCommandTimeout", 60);
            capabilities.setCapability("bundleId", "uns.ftn.masterrad");
            capabilities.setCapability("xcodeOrgId", "T3577A6TEY");
            capabilities.setCapability("xcodeSigningId", "iPhone Developer");
            capabilities.setCapability("showXcodeLog", true);
            capabilities.setCapability("clearSystemFiles", false);
            return capabilities;
        }
    }

    /**
     * Configurations for Android.
     */

    public static final class Android {

        public static DesiredCapabilities getCapabilities() {
            DesiredCapabilities capabilities = new DesiredCapabilities();

            capabilities.setCapability("app", "/Users/mt/RTRK-oblo/Android/presentation-oblo-release-2.1.1-21112.apk");
            capabilities.setCapability("deviceName", "LG Nexus 5X");
            capabilities.setCapability("platformVersion", "7.1.2");
            capabilities.setCapability("platformName", "Android");
            capabilities.setCapability("appPackage", "com.rtrk.oblosmarthome");
            capabilities.setCapability("appWaitActivity", "com.rtrk.smarthome.presentation.mvp.login.LoginActivity_");
            capabilities.setCapability("appWaitActivity2", "com.rtrk.smarthome.presentation.mvp.navigation.NavigationActivity_");
            capabilities.setCapability("newCommandTimeout", 10000);
            capabilities.setCapability("command-timeout", 600);
            capabilities.setCapability("idle-timeout", 800);
            capabilities.setCapability("max-duration", 10800);
            capabilities.setCapability("automationName", "Appium");
            //capabilities.setCapability("noReset", true);
            capabilities.setCapability("fullReset", true);

            return capabilities;
        }
    }

}
