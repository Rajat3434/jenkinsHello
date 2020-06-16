package pages;

import org.openqa.selenium.By;
import org.slf4j.Logger;

import com.codeborne.selenide.Condition;

import static com.codeborne.selenide.Selenide.*;


import webdriver.WaitFor;

public class WsibPage {
	
	//private static final By SCReferralButton =  By.cssSelector("a[href='/wsib_clinic_referral_link']");
	
	public void clickApplicationButton(String app) {
		WaitFor.waitForJavascriptToFinish();
		$(By.xpath(".//span[text()='"+ app+ "']")).shouldBe(Condition.visible).click();
	}

}
