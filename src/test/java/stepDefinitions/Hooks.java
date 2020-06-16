package stepDefinitions;

import static com.codeborne.selenide.Selenide.close;

import io.cucumber.java.After;
import io.cucumber.java.Before;
	
public class Hooks {
	@Before
	public void Before() {
		System.out.println("Before Scenario is mandatory");
	}

	@After
	public void AfterS() {
		System.out.println("After Scenario is also Mandetory");
		close();
		
	}

}
