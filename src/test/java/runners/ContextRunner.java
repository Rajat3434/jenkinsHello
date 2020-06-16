package runners;

import static com.codeborne.selenide.Selenide.close;

import org.junit.runner.RunWith;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.testng.AbstractTestNGCucumberTests;

@CucumberOptions(
		strict = true,
        glue = {"stepDefinitions"},
        features = ".\\src\\test\\resources\\context.feature",
       plugin = {"pretty", "json:target/cucumber-reports/cucumber.json",
        		"html:target/cucumber-reports",
        	"junit:target/cucumber-reports/Cucumber.xml"},
        monochrome = true, 
        tags = {"@hold"}
)

@RunWith(Cucumber.class)
@Test
public class ContextRunner extends AbstractTestNGCucumberTests  {
	
	  
	  @BeforeClass(alwaysRun = true) public void BeforeSteps() {
	  System.out.println("Before class is mandatory"); }
	  
	  @AfterClass(alwaysRun = true) public void AfterSteps() {
	  System.out.println("After class is also Mandetory");
	  close();
	  
	  }
	 
}