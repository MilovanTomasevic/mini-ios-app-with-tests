package tests;

import io.appium.java_client.TouchAction;
import io.appium.java_client.ios.IOSDriver;
import io.appium.java_client.remote.HideKeyboardStrategy;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import utils.Config;
import utils.Constants;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

/**
 * Created by mt on 28/07/2018.
 */
public class Registracija {

    IOSDriver driver;

    @Before
    public void setup() throws MalformedURLException, InterruptedException {
        driver = new IOSDriver<>(new URL(Constants.SERVER_URL), Config.iOS.getCapabilities()); // Breaks here when i debugged
        driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);

        driver.findElement(By.id(Constants.ID_BTN_START_MENU)).click();
        driver.findElement(By.id(Constants.ID_BTN_5_START_MENU)).click();
        Thread.sleep(Constants.ONE_SECOND);
        driver.findElement(By.id(Constants.ID_BTN_REGISTRACIJA)).click();
        Thread.sleep(Constants.ONE_SECOND);
    }

    @After
    public void teardown() {
        driver.quit();
    }


    @Test
    public  void incorrectRegistrationWithoutMail() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys("");
        driver.findElement(By.id(">")).click();


        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_9));
        alert.accept();


    }

    @Test
    public  void incorrectRegistrationWrongMail() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.INCORRECT_DATA);
        driver.findElement(By.id(">")).click();

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_10));
        alert.accept();

    }


    @Test
    public  void incorrectRegistrationWitoutPass() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        driver.findElement(By.id(">")).click();

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_11));
        alert.accept();

    }


    @Test
    public  void incorrectRegistrationWithoutRepeatPass() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.id(">")).click();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_12));
        alert.accept();

    }

    @Test
    public  void incorrectRegistrationWrongRepeatPass() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.INCORRECT_DATA);
        driver.findElement(By.id(">")).click();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_13));
        alert.accept();

    }

    @Test
    public  void incorrectRegistrationWithRepeatPassButWithoutPass() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.id(">")).click();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_11));
        alert.accept();

    }

    @Test
    public  void incorrectRegistrationWithoutMailAndCorrectPasswords() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys("");
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.id(">")).click();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_9));
        alert.accept();

    }

    @Test
    public  void incorrectRegistrationWithIncorrectMailAndCorrectPasswords() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.INCORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.id(">")).click();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_10));
        alert.accept();

    }


    @Test
    public  void incorrectRegistrationWithoutMailWithSwipe() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys("");
        swipeNext();


        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_9));
        alert.accept();


    }

    @Test
    public  void incorrectRegistrationWrongMailWithSwipe() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.INCORRECT_DATA);
        swipeNext();

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_10));
        alert.accept();

    }


    @Test
    public  void incorrectRegistrationWitoutPassWithSwipe() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        swipeNext();

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_11));
        alert.accept();

    }


    @Test
    public  void incorrectRegistrationWithoutRepeatPassWithSwipe() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        swipeNext();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_12));
        alert.accept();

    }

    @Test
    public  void incorrectRegistrationWrongRepeatPassWithSwipe() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.INCORRECT_DATA);
        swipeNext();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_13));
        alert.accept();

    }

    @Test
    public  void incorrectRegistrationWithRepeatPassButWithoutPassWithSwipe() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.REGULAR_SIFRA);
        swipeNext();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_11));
        alert.accept();

    }

    @Test
    public  void incorrectRegistrationWithoutMailAndCorrectPasswordsWithSwipe() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys("");
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.REGULAR_SIFRA);
        swipeNext();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_9));
        alert.accept();

    }

    @Test
    public  void incorrectRegistrationWithIncorrectMailAndCorrectPasswordsWithSwipe() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.INCORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.REGULAR_SIFRA);
        swipeNext();

        Thread.sleep(Constants.ONE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_10));
        alert.accept();

    }

    @Test
    public  void correctRegistrationWithSwipe() throws InterruptedException {


        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.REGULAR_SIFRA);

        Thread.sleep(Constants.ONE_SECOND);
        driver.hideKeyboard(HideKeyboardStrategy.PRESS_KEY, Constants.BTN_DONE);

        Thread.sleep(Constants.ONE_SECOND);
        swipeNext();

        Thread.sleep(Constants.ONE_SECOND);
        Thread.sleep(Constants.ONE_SECOND);

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_IME)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_PREZIME)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_ADRESA)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_GRAD)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_PKOD)).sendKeys(Constants.CORRECT_NUMBER);
        driver.findElement(By.id(Constants.BTN_DONE)).click();
        Thread.sleep(Constants.ONE_SECOND);

        Thread.sleep(Constants.ONE_SECOND);
        swipeNext();

        Thread.sleep(Constants.ONE_SECOND);
        Thread.sleep(Constants.ONE_SECOND);

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_BR_KARTICE)).sendKeys(Constants.CORRECT_CARD_NUMBER);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_TELEFON)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.id("Sigurnosno pitanje")).click();
        Thread.sleep(Constants.ONE_SECOND);
        driver.findElement(By.id("Knjiga")).click();
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_ODGOVOR)).sendKeys(Constants.CORRECT_DATA);

        Thread.sleep(Constants.ONE_SECOND);

        driver.findElement(By.id("Zavrsi")).click();

        Thread.sleep(Constants.THREE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_8));
        alert.accept();

        Thread.sleep(Constants.THREE_SECOND);
    }


    @Test
    public  void correctRegistration() throws InterruptedException {

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_EMAIL)).sendKeys(Constants.REGULAR_MAIL);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA)).sendKeys(Constants.REGULAR_SIFRA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_SIFRA_PONOVO)).sendKeys(Constants.REGULAR_SIFRA);

        Thread.sleep(Constants.ONE_SECOND);
        driver.hideKeyboard(HideKeyboardStrategy.PRESS_KEY, Constants.BTN_DONE);

        Thread.sleep(Constants.ONE_SECOND);
        driver.findElement(By.id(">")).click();

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_IME)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_PREZIME)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_ADRESA)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_GRAD)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_PKOD)).sendKeys(Constants.CORRECT_NUMBER);
        driver.findElement(By.id(Constants.BTN_DONE)).click();
        Thread.sleep(Constants.ONE_SECOND);

        driver.findElement(By.id(">")).click();

        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_BR_KARTICE)).sendKeys(Constants.CORRECT_CARD_NUMBER);
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_TELEFON)).sendKeys(Constants.CORRECT_DATA);
        driver.findElement(By.id("Sigurnosno pitanje")).click();
        Thread.sleep(Constants.ONE_SECOND);
        driver.findElement(By.id("Knjiga")).click();
        driver.findElement(By.xpath(Constants.XPATH_TEXT_FIELD_ODGOVOR)).sendKeys(Constants.CORRECT_DATA);

        Thread.sleep(Constants.ONE_SECOND);

        driver.findElement(By.id("Zavrsi")).click();

        Thread.sleep(Constants.THREE_SECOND);

        Alert alert = driver.switchTo().alert();
        Assert.assertTrue(alert.getText().contains(Constants.MESSAGE_8));
        alert.accept();

        Thread.sleep(Constants.THREE_SECOND);
    }


    public void swipeBack() throws InterruptedException {

        Dimension size = driver.manage().window().getSize();
        //Find startx point which is at right side of screen.
        int startx = (int) (size.width * 0.99);
        //Find endx point which is at left side of screen.
        int endx = (int) (size.width * 0.01);
        int starty = size.height / 2;
        driver.swipe(endx, starty, startx, starty,Constants.THREE_SECOND);
        Thread.sleep(Constants.ONE_SECOND);

    }

    public void swipeNext() throws InterruptedException {

        Dimension size = driver.manage().window().getSize();
        int startx = (int) (size.width * 0.95);
        int endx = (int) (size.width * 0.05);
        int starty = size.height / 2;
        driver.swipe(startx, starty, endx, starty, 3000);
        //Thread.sleep(Constants.TWO_SECONDS);
    }

}
