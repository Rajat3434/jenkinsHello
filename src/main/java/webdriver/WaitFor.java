package webdriver;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;
import static com.codeborne.selenide.Selenide.*;

import static com.codeborne.selenide.WebDriverRunner.getWebDriver;

public class WaitFor {

	/**
     * Wait for document.readyState to be complete
     *
     * @param secondsToWait number of seconds to wait; leave off for default 30
     */
    public static void waitForJavascriptToFinish(int... secondsToWait) {
        //Depending on when the timing of this is called, it's possible the js gets executed before the intended page action.
        //Meaning: Do some action -> wait for JS, it returns -> Now the action is actually started
        //Sleep a little bit up front to alleviate that
        sleep(300);
        WebDriver d = getWebDriver();
        ExpectedCondition<Boolean> expect = driver ->
                ("complete").equals(((JavascriptExecutor) d).executeScript("return document.readyState"));

        int seconds = secondsToWait.length > 0 ? secondsToWait[0] : 120;

        Wait<WebDriver> wait = new WebDriverWait(d, seconds);
        try {
            wait.until(expect);
        } catch (WebDriverException e) {
            	
        }
    }
}
