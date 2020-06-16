package pages;

import org.openqa.selenium.By;

import com.codeborne.selenide.Condition;

import static com.codeborne.selenide.Selenide.*;

import webdriver.WaitFor;

public class AcceptancePage {
	
	private static final By accept_Button = By.cssSelector("button[id*='acceptButton']");
	
	public void clickAcceptButtom() {
		WaitFor.waitForJavascriptToFinish();
		$(accept_Button).shouldBe(Condition.visible).click();
	}
}
