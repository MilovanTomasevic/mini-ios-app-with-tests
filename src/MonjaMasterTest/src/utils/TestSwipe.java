package utils;

import io.appium.java_client.ios.IOSDriver;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.openqa.selenium.Dimension;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;

/**
 * Created by mt on 29/07/2018.
 */
public class TestSwipe {

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
    public void swipingHorizontal() throws InterruptedException {

        System.out.println("Start swipingHorizontal  " + Config.getTimeStamp());

        //Get the size of screen.
        Dimension size = driver.manage().window().getSize();
        System.out.println(size);

        //Find swipe start and end point from screen's with and height.
        //Find startx point which is at right side of screen.
        int startx = (int) (size.width * 0.99);
        //Find endx point which is at left side of screen.
        int endx = (int) (size.width * 0.01);
        //Find vertical point where you wants to swipe. It is in middle of screen height.
        int starty = size.height / 2;
        System.out.println("startx = " + startx + " ,endx = " + endx + " , starty = " + starty);


        //Swipe from Left to Right.
        driver.swipe(endx, starty, startx, starty,Constants.THREE_SECOND);
        Thread.sleep(Constants.ONE_SECOND);

        //Swipe from Right to Left.
        driver.swipe(startx, starty, endx, starty, Constants.THREE_SECOND);
        Thread.sleep(Constants.TWO_SECONDS);

        System.out.println("Finish swipingHorizontal " + Config.getTimeStamp());
    }



    /**
     * Swiping Vertical
     */

    @Test
    public void swipingVertical() throws InterruptedException {

        System.out.println("Start swipingVertical  " + Config.getTimeStamp());

        //Get the size of screen.
        Dimension size = driver.manage().window().getSize();
        System.out.println(size);

        //Find swipe start and end point from screen's with and height.
        //Find starty point which is at bottom side of screen.
        int starty = (int) (size.height * 0.70);
        //Find endy point which is at top side of screen.
        int endy = (int) (size.height * 0.30);
        //Find horizontal point where you wants to swipe. It is in middle of screen width.
        int startx = size.width / 2;
        System.out.println("starty = " + starty + " ,endy = " + endy + " , startx = " + startx);

        //Swipe from Top to Bottom.
        driver.swipe(startx, endy, startx, starty, Constants.THREE_SECOND);
        Thread.sleep(Constants.TWO_SECONDS);

        //Swipe from Bottom to Top.
        driver.swipe(startx, starty, startx, endy, Constants.THREE_SECOND);
        Thread.sleep(Constants.TWO_SECONDS);


        System.out.println("Finish swipingVertical " + Config.getTimeStamp());
    }
}
