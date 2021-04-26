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
 * Created by mt on 28/07/2018.
 */
public class Logovanje {

    IOSDriver driver;

    @Before
    public void setup() throws MalformedURLException, InterruptedException {
        driver = new IOSDriver<>(new URL(Constants.SERVER_URL), Config.iOS.getCapabilities()); // Breaks here when i debugged
        driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);

        driver.findElement(By.id(Constants.ID_BTN_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_4_START_MENU)).click();
        Thread.sleep(Constants.ONE_SECOND);
    }

    @After
    public void teardown() {
        driver.quit();
    }


    /**
     * Use Case: Trying correct username and pass
     * <p>
     * Expected result: welcome
     * <p>
     * Note:
     * MAIL              = "correct"
     * PASSWORD          = "correct"
     */


    @Test
    public  void correctLogin() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_KORISNIK)).sendKeys(Constants.REGULAR_KORISNIK);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_LOZINKA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.hideKeyboard(HideKeyboardStrategy.PRESS_KEY, Constants.BTN_DONE);
        Thread.sleep(Constants.ONE_SECOND);
        driver.findElement(By.id("Logovanje")).click();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_4));
        alert.accept();

    }

    /**
     * Use Case: Trying correct username and pass
     * <p>
     * Expected result: welcome
     * <p>
     * Note:
     * MAIL              = ""
     * PASSWORD          = "correct"
     */


    @Test
    public  void incorrectLoginWihtoutUser() throws InterruptedException {



        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_KORISNIK)).sendKeys("");
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_LOZINKA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.hideKeyboard(HideKeyboardStrategy.PRESS_KEY, Constants.BTN_DONE);
        Thread.sleep(Constants.ONE_SECOND);
        driver.findElement(By.id("Logovanje")).click();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_5));
        alert.accept();

    }

    /**
     * Use Case: Trying correct username and pass
     * <p>
     * Expected result: welcome
     * <p>
     * Note:
     * MAIL              = ""
     * PASSWORD          = "correct"
     */

    @Test
    public  void incorrectLoginWihtoutPass() throws InterruptedException {



        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_KORISNIK)).sendKeys(Constants.REGULAR_KORISNIK);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_LOZINKA)).sendKeys("");
        driver.hideKeyboard(HideKeyboardStrategy.PRESS_KEY, Constants.BTN_DONE);
        Thread.sleep(Constants.ONE_SECOND);
        driver.findElement(By.id("Logovanje")).click();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_6));
        alert.accept();

    }
    /**
     * Use Case: Trying without username and pass
     * <p>
     * Expected result: welcome
     * <p>
     * Note:
     * MAIL              = ""
     * PASSWORD          = ""
     */


    @Test
    public  void incorrectLoginNoData() throws InterruptedException {


        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_KORISNIK)).sendKeys("");
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_LOZINKA)).sendKeys("");
        driver.hideKeyboard(HideKeyboardStrategy.PRESS_KEY, Constants.BTN_DONE);
        Thread.sleep(Constants.ONE_SECOND);
        driver.findElement(By.id("Logovanje")).click();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_5));
        alert.accept();

    }

}
