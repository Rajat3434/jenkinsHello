package pages;

import org.openqa.selenium.By;

import com.codeborne.selenide.CollectionCondition;
import com.codeborne.selenide.Condition;

import static com.codeborne.selenide.Selenide.*;

import webdriver.WaitFor;

public class UserFirstPage {
	
	private static final By WSIB_Button= By.cssSelector("a[href='/wsib_page']");
	
	
	public void clickWSIBButton() {
		WaitFor.waitForJavascriptToFinish();
		$$(WSIB_Button).get(2).shouldBe(Condition.visible).click();
	}

}
