package pages;

import org.openqa.selenium.By;
import static com.codeborne.selenide.Selenide.*;

import java.util.List;
import java.util.Map;

import com.codeborne.selenide.*;



import webdriver.WaitFor;

public class LoginPage {
	
	private String username;
	private String password;
    private static final By loginButton = By.id("loginButton");
    private static final By userName_textbox= By.cssSelector("input[name=username]");
    private static final By passWord_textbox= By.cssSelector("input[name=password]");

    public void setUsername(String username) {
    	WaitFor.waitForJavascriptToFinish();
    	$(userName_textbox).shouldHave(Condition.visible).sendKeys(username);
    }

    public void setPassword(String password) {
    	WaitFor.waitForJavascriptToFinish();
    	$(passWord_textbox).shouldHave(Condition.visible).sendKeys(password);	
    }
    
    
    public void clickLogin_Button() {
    	WaitFor.waitForJavascriptToFinish();
    	$(loginButton).shouldHave(Condition.visible).click();	
	
    }
	public void retriveDate(List<Map<String, String>> cred) {
		for(Map<String, String> d1 : cred) {
			username= d1.get("Username");
			System.out.println(username);
			password= d1.get("Password");
			System.out.println(password);
		}
	}
	
	
}

