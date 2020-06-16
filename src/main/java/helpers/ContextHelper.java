package helpers;

import org.openqa.selenium.WebDriver;

import com.codeborne.selenide.Selenide;
import com.codeborne.selenide.WebDriverRunner;

public class ContextHelper extends Selenide {
	
 /**
     * Get the current WebDriver instance
     *
     * @return WebDriver
     */
    public static WebDriver getWebDriver() {
        return WebDriverRunner.getWebDriver();
    }


}
