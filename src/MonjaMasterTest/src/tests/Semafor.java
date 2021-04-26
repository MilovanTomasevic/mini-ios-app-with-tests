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
public class Semafor {

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
    public  void stanjeSemafora() throws InterruptedException {

        driver.findElement(By.id(Constants.ID_BTN_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_1_START_MENU)).click();

        Thread.sleep(Constants.ONE_SECOND);

        driver.findElement(By.id(Constants.ID_BTN_PLAY)).click();
        System.out.println("Stanje semafora: " + driver.findElement(By.id(Constants.ID_LBL_PLAY)).getText());

        String text = driver.findElement(By.id(Constants.ID_LBL_PLAY)).getText();

        if(text.equals(Constants.MESSAGE_1)) {
            System.out.println("Provera RADI - OK");
        }

        driver.findElement(By.id(Constants.ID_BTN_ERROR)).click();
        System.out.println("Stanje semafora: " + driver.findElement(By.id(Constants.ID_LBL_ERROR)).getText());

        String text2 = driver.findElement(By.id(Constants.ID_LBL_ERROR)).getText();

        if(text2.equals(Constants.MESSAGE_2)) {
            System.out.println("Provera POKVAREN - OK");
        }

        driver.findElement(By.id(Constants.ID_BTN_FIX)).click();
        System.out.println("Stanje semafora: " + driver.findElement(By.id(Constants.ID_LBL_FIX)).getText());

        String text3 = driver.findElement(By.id(Constants.ID_LBL_FIX)).getText();

        if(text3.equals(Constants.MESSAGE_3)) {
            System.out.println("Provera POPRAVLJEN - OK");
        }

    }

    @Test
    public  void fixSemafor() throws InterruptedException {

        driver.findElement(By.id(Constants.ID_BTN_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_1_START_MENU)).click();

        Thread.sleep(Constants.ONE_SECOND);

        driver.findElement(By.id(Constants.ID_BTN_PLAY)).click();
        System.out.println("Stanje semafora: " + driver.findElement(By.id(Constants.ID_LBL_PLAY)).getText());

        String text = driver.findElement(By.id(Constants.ID_LBL_PLAY)).getText();

        if(text.equals("Semafor radi.")) {
            System.out.println("Provera RADI - OK");
        }

        driver.findElement(By.id("⤵️")).click();
        System.out.println("Stanje semafora: " + driver.findElement(By.id("Semafor pokvaren.")).getText());

        String text2 = driver.findElement(By.id("Semafor pokvaren.")).getText();

        if(text2.equals("Semafor pokvaren.")) {
            System.out.println("Provera POKVAREN - OK");
        }

        driver.findElement(By.id("⤴️")).click();
        System.out.println("Stanje semafora: " + driver.findElement(By.id("Semafor popravljen.")).getText());

        String text3 = driver.findElement(By.id("Semafor popravljen.")).getText();

        if(text3.equals("Semafor popravljen.")) {
            System.out.println("Provera POPRAVLJEN - OK");
        }

    }
}

