# mini-ios-app-with-tests
mini iOS project with tests


## 1. Download Appium:
https://github.com/appium/appium-desktop/releases/tag/v1.1.0-beta.3

```sh
> brew install node      # get node.js
> npm install -g appium  # get appium
> npm install wd         # get appium client
> appium &               # start appium
```
start server v1.6.5
start new sesion / automatic server / Desired Capabilities +

(see https://github.com/appium/appium/blob/master/docs/en/writing-running-appium/caps.md)

```json
{
  "automationName": "XCUITest",
  "platformName": "iOS",
  "deviceName": "iPhone",
  "app": "/Users/mt/Library/Developer/Xcode/DerivedData/TestAppiumDemo-gxwrcdhocjqfqocvsjqwjtitgaec/Build/Products/Debug-iphoneos/TestAppiumDemo.app",
  "newCommandTimeout": 60,
  "udid": "d329bcd8dade1f308XXXXXXXXXXfbe2dcf78e032",
  "bundleId": "test.TestAppiumDemo",
  "xcodeOrgId": "83FXDN8628",
  "xcodeSigningId": "iPhone Developer",
  "showXcodeLog": true,
  "clearSystemFiles": false,
  "platformVersion": "10.3.1"
}
```

app - path for app
udid - id from iDevice
xcodeOrgId - apple team id

## 2. Download WebDriverAgent:
https://github.com/facebook/WebDriverAgent

2.1. Open WebDriverAgent.xcodeproj in Xcode. For both the WebDriverAgentLib and WebDriverAgentRunner targets, select "Automatically manage signing" in the "General" tab, and then select your Development Team. This should also auto select Signing Ceritificate.

```sh
> ./Scripts/bootstrap.sh
```

And copy pojectBody into /usr/local/lib/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent and repeat step 2.1

```sh
cd usr/local/lib/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent
brew install carthage
npm i -g webpack
./Scripts/bootstrap.sh -d
open /usr/local/lib/node_modules/appium/node_modules/appium-xcuitest-driver/WebDriverAgent/
run project
```
## 3 Step
Two pieces of software are currently necessary to run iOS tests on real devices:
```sh
libimobiledevice - install using brew install libimobiledevice --HEAD
ios-deploy - install using npm install -g ios-deploy
```

https://github.com/appium/appium-xcuitest-driver#external-dependencies

## 4 step CreateTest (setup and run) 
import lib
download jar:
https://mvnrepository.com/artifact/io.appium/java-client/4.1.2

download Selenium Server:
http://docs.seleniumhq.org/download/
 
Create project - java class  - intellij idea - 

```java
import io.appium.java_client.remote.MobileCapabilityType;
import org.junit.After;
import org.junit.Before;
import io.appium.java_client.ios.IOSDriver;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.remote.DesiredCapabilities;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.TimeUnit;
import io.appium.java_client.remote.AutomationName;
import io.appium.java_client.remote.IOSMobileCapabilityType;
import org.openqa.selenium.WebElement;
/**
 * Created by mt on 6/21/17.
 */
public class TestLogin {

    IOSDriver driver;

    @Before
    public  void  setup() throws MalformedURLException {

        DesiredCapabilities capabilities = new DesiredCapabilities();

        capabilities.setCapability("app", "/Users/mt/Library/Developer/Xcode/DerivedData/TestAppiumDemo-gxwrcdhocjqfqocvsjqwjtitgaec/Build/Products/Debug-iphoneos/TestAppiumDemo.app");
        capabilities.setCapability("automationName", "XCUITest");
        capabilities.setCapability("platformName", "iOS");
        capabilities.setCapability("deviceName", "iPhone");
        capabilities.setCapability("udid", "d329bcd8dade1f308XXXXXXXXXXfbe2dcf78e032");
        capabilities.setCapability("platformVersion", "10.3.1");
        capabilities.setCapability("newCommandTimeout", 60);
        capabilities.setCapability("bundleId", "test.TestAppiumDemo");
        capabilities.setCapability("xcodeOrgId", "83FXDN8628");
        capabilities.setCapability("xcodeSigningId", "iPhone Developer");
        capabilities.setCapability("showXcodeLog", "true");
        capabilities.setCapability("clearSystemFiles", "false");

        driver = new IOSDriver<>(new URL ("http://0.0.0.0:4723/wd/hub"), capabilities ); // Breaks here when i debugged
        driver.manage().timeouts().implicitlyWait(60, TimeUnit.SECONDS);
    }

    @After
    public void teardown() {driver.quit();}

    @Test
    public  void selectLogin(){

        WebElement btn=driver.findElement(By.name("StartUp"));
        btn.click();
        driver.quit();
    }
}
```