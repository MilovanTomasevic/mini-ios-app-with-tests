package tests;


import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.remote.HideKeyboardStrategy;
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

public class ParkingKontrola {

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
    public  void withoutRegTabForTicket() throws InterruptedException {


        driver.findElement(By.id(Constants.ID_BTN_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_3_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_FINISH)).click();

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE__INFO_1));
        alert.accept();
    }

    @Test
    public  void withoutRegTabForKazna() throws InterruptedException {

        driver.findElement(By.id(Constants.ID_BTN_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_3_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_PUNISHMENT)).click();
        driver.findElement(By.id(Constants.ID_BTN_FINISH)).click();

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE__INFO_1));
        alert.accept();
    }

    @Test
    public  void withRegTabTiket() throws InterruptedException {

        driver.findElement(By.id(Constants.ID_BTN_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_3_START_MENU)).click();
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_REG)).sendKeys(Constants.TEST_TEXT);
        driver.hideKeyboard(HideKeyboardStrategy.PRESS_KEY, Constants.ID_BTN_DONE);

        driver.findElement(By.id(Constants.ID_BTN_FINISH)).click();

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE__INFO_1));
        alert.accept();
    }


}

