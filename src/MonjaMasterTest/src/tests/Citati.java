package tests;


import io.appium.java_client.ios.IOSDriver;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import utils.Config;
import utils.Constants;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;



/**
 * Created by mt on 25/07/2018.
 */
public class Citati {


    IOSDriver driver;

    @Before
    public void setup() throws MalformedURLException {
        driver = new IOSDriver<>(new URL(Constants.SERVER_URL), Config.iOS.getCapabilities()); // Breaks here when i debugged
        driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
    }

    @After
    public void teardown() {
        driver.quit();
    }

    @Test
    public  void checkChangeValue() throws InterruptedException {

        driver.findElement(By.id(Constants.ID_BTN_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_2_START_MENU)).click();

        Thread.sleep(Constants.ONE_SECOND);
        //driver.findElement(By.id(Constants.ID_BTN_NEXT)).click();


        System.out.println("Prvi citat: " + driver.findElement(By.xpath(Constants.XPATH_TEXT_VIEW)).getText());
        String text = driver.findElement(By.xpath(Constants.XPATH_TEXT_VIEW)).getText();

        driver.findElement(By.id(Constants.ID_BTN_NEXT)).click();

        System.out.println("Drugi citat: " + driver.findElement(By.xpath(Constants.XPATH_TEXT_VIEW)).getText());
        String text2 = driver.findElement(By.xpath(Constants.XPATH_TEXT_VIEW)).getText();

        if(text.equals(text2)) {
            Alert alert = driver.switchTo().alert();
            Assert.assertTrue(alert.getText().contains("Error"));
            alert.accept();
        }else{
            System.out.println("Razliciti su, dobro je.");
        }
    }
}
