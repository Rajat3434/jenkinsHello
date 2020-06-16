package pages;

import static com.codeborne.selenide.Selenide.$;

import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import com.codeborne.selenide.WebDriverRunner;

import helpers.exceptions.ElementNotInListException;
import webdriver.WaitFor;

//import static 
public class WsibClinicReferralLinkPage {
	String APP = null;

	WebDriver driver = WebDriverRunner.getWebDriver();
	// for SC refrerral
	
	  private static final By WorkLocation_DropDown= By.name("GET_WORK_LOCATION");
	  private static final By LocationRole_DropDown = By.name("GET_LOCATION_ROLE");
	  private static final By ServiceProgram_DropDown=By.name("GET_LOCATION_REFERRAL");
	  private static final By ServiceProvider_DropDown=By.name("GET_SERVICE_PROVIDER");
	  private static final By Independent_ProviderRole_DropDown= By.name("GET_INDEPENDENT_PROVIDER_ROLE");
	  private static final By Independent_ReferralProgram_DropDown= By.name("GET_INDEPENDENT_REFERRAL_PROGRAM");
	  
	private static final By Physician_WorkLocation_DropDown = By.name("serviceLocation");
	private static final By Physician_LocationRole_DropDown =  By.name("serviceLocationRole"); 
	private static final By Physician_ServiceProgram_DropDown = By.name("serviceRefProgram");

	public String getPageTitle() {
		WaitFor.waitForJavascriptToFinish();
		String title = WebDriverRunner.getWebDriver().getTitle();
		return title;
	}

	public void switchToAppFrame(String application) {
		WaitFor.waitForJavascriptToFinish();
		String APP = null;
		if (application.equalsIgnoreCase("Non-Health Bill Submission")) {
			APP = "NONHEALTH";
		} else if (application.equalsIgnoreCase("Health Bill Submission")) {
			APP = "HEALTH";
		} else if (application.equalsIgnoreCase("eProvider Reporting")) {
			APP = "EPROVIDER";
		} else if (application.equalsIgnoreCase("Physician Referral")) {
			APP = "PHYSICIAN";
		} else if (application.equalsIgnoreCase("Specialty Clinic Referral")) {
			APP = "SPECIALTY";
		}
		switch (APP) {
		case ("NONHEALTH"):
			driver.switchTo().frame("wm_frame5828");
			break;
		case ("HEALTH"):
			driver.switchTo().frame("wm_frame5811");
			break;
		case ("EPROVIDER"):
			driver.switchTo().frame("wm_frame5830");
			break;
		case ("PHYSICIAN"):
			driver.switchTo().frame("wm_frame5842");
			break;
		case ("SPECIALTY"):
			driver.switchTo().frame("wm_frame5846");
			break;
		}
		System.out.println(APP);
	}
		//Work Location for Non-Health,Health,eProvider,Specialty
	public void selectWorkLocation(String location) {
		if (isWorkLocationPresent(location) == true) {
			$(WorkLocation_DropDown).selectOption(location);
		} else
			throw new ElementNotInListException(location + " Location passed as String is not in the list.");
	}
		// Is WorkLocation for Non-Health,Health,eProvider,Specialty
	public boolean isWorkLocationPresent(String location) {
		int count = 0;
		$(WorkLocation_DropDown).click();
		Select locationDropdown = new Select($(WorkLocation_DropDown));
		List<WebElement> options = locationDropdown.getOptions();
		for (WebElement item : options) {
			if (item.getText().trim().contentEquals(location)) {
				count++;
			}
		}
		if (count >= 1)
			return true;
		else
			return false;
	}

	// For WorkLocation Physician
	public void selectPhysicianWorkLocation(String location) {
		if (isPhysicianWorkLocationPresent(location) == true) {
			$(Physician_WorkLocation_DropDown).selectOption(location);
		} else
			throw new ElementNotInListException(location + " Location passed as String is not in the list.");
	}
	// Is Worklocation Physician
	public boolean isPhysicianWorkLocationPresent(String location) {
		int count = 0;
		$(Physician_WorkLocation_DropDown).click();
		Select locationDropdown = new Select($(Physician_WorkLocation_DropDown));
		List<WebElement> options = locationDropdown.getOptions();
		for (WebElement item : options) {
			if (item.getText().trim().contentEquals(location)) {
				count++;
			}
		}
		if (count >= 1)
			return true;
		else
			return false;
	}
	// Role Forfor Non-Health,Health,eProvider,Specialty
	
	public void selectRoleLocation(String role) {
		if (isRoleLocationPresent(role) == true) {
			$(LocationRole_DropDown).selectOption(role);
		} else
			throw new ElementNotInListException(role + " Role passed as String is not in the list.");
	}
	// Is Role for for Non-Health,Health,eProvider,Specialty
	public boolean isRoleLocationPresent(String role) {
		WaitFor.waitForJavascriptToFinish();
		int count = 0;
		$(LocationRole_DropDown).click();
		Select roleDropdown = new Select($(LocationRole_DropDown));
		List<WebElement> options = roleDropdown.getOptions();
		for (WebElement item : options) {
			if (item.getText().trim().contentEquals(role)) {
				count++;
			}
		}
		if (count >= 1)
			return true;
		else
			return false;
	}

	//For Role  Physician 
	public void selectPhysicianRoleLocation(String role) {
		if (isPhysicianRoleLocationPresent(role) == true) {
			$(Physician_LocationRole_DropDown).selectOption(role);
		} else
			throw new ElementNotInListException(role + " Role passed as String is not in the list.");
	}
	// Is Role Present for Physician  
	public boolean isPhysicianRoleLocationPresent(String role) {
		WaitFor.waitForJavascriptToFinish();
		int count = 0;
		$(Physician_LocationRole_DropDown).click();
		Select roleDropdown = new Select($(Physician_LocationRole_DropDown));
		List<WebElement> options = roleDropdown.getOptions();
		for (WebElement item : options) {
			if (item.getText().trim().contentEquals(role)) {
				count++;
			}
		}
		if (count >= 1)
			return true;
		else
			return false;
	}

	
	//Referral Program for for Non-Health,Health,eProvider,Specialty
	public void selectReferralProgram(String refString) {
		WaitFor.waitForJavascriptToFinish();
		if (isServiceReferralProgramPresent(refString) == true) {
			$(ServiceProgram_DropDown).selectOption(refString);
		} else
			throw new ElementNotInListException(refString + " Location passed as String is not in the list.");
	}
	
	
	//Is Referral Program present for for Non-Health,Health,eProvider,Specialty
	public boolean isServiceReferralProgramPresent(String refString) {
		WaitFor.waitForJavascriptToFinish();
		int count = 0;
		$(ServiceProgram_DropDown).click();
		Select serviceReferrral = new Select($(ServiceProgram_DropDown));
		List<WebElement> options = serviceReferrral.getOptions();
		for (WebElement item : options) {
			if (item.getText().trim().contentEquals(refString)) {
				count++;
			}
		}
		if (count >= 1)
			return true;
		else
			return false;
	}
	

	
	//Referral Program for Physician Referral
	public void selectPhysicianReferralProgram(String refString) {
		WaitFor.waitForJavascriptToFinish();
		if (isPhysicianServiceReferralProgramPresent(refString) == true) {
			$(Physician_ServiceProgram_DropDown).selectOption(refString);
		} else
			throw new ElementNotInListException(refString + " Location passed as String is not in the list.");
	}
	// Is Referral Program for Physician Referral
	public boolean isPhysicianServiceReferralProgramPresent(String refString) {
		WaitFor.waitForJavascriptToFinish();
		int count = 0;
		$(Physician_ServiceProgram_DropDown).click();
		Select serviceReferrral = new Select($(Physician_ServiceProgram_DropDown));
		List<WebElement> options = serviceReferrral.getOptions();
		for (WebElement item : options) {
			if (item.getText().trim().contentEquals(refString)) {
				count++;
			}
		}
		if (count >= 1)
			return true;
		else
			return false;
	}
	
	//Service Program for Non-Health,Health,eProvider,Specialty
	public void selectServiceProviderProgram(String refString) {
		WaitFor.waitForJavascriptToFinish();
		if (isServiceProviderProgramPresent(refString) == true) {
			$(ServiceProvider_DropDown).selectOption(refString);
		} else
			throw new ElementNotInListException(refString + " service provider passed as String is not in the list.");
	}
	// Service Program for Non-Health,Health,eProvider,Specialty.
	public boolean isServiceProviderProgramPresent(String refString) {
		WaitFor.waitForJavascriptToFinish();
		int count = 0;
		$(ServiceProvider_DropDown).click();
		Select serviceReferrral = new Select($(ServiceProvider_DropDown));
		List<WebElement> options = serviceReferrral.getOptions();
		for (WebElement item : options) {
			if (item.getText().trim().contentEquals(refString)) {
				count++;
			}
		}
		if (count >= 1)
			return true;
		else
			return false;
	}
	
	//Independent Provider Role for Non-Health,Health,eProvider,Specialty
	public void selectIndependentProviderRole(String refString) {
		WaitFor.waitForJavascriptToFinish();
		if (isIndependentProviderRolePresent(refString) == true) {
			$(Independent_ProviderRole_DropDown).selectOption(refString);
		} else
			throw new ElementNotInListException(refString + " service provider passed as String is not in the list.");
	}
	//Independent Provider Role for Non-Health,Health,eProvider,Specialty.
	public boolean isIndependentProviderRolePresent(String refString) {
		WaitFor.waitForJavascriptToFinish();
		int count = 0;
		$(Independent_ProviderRole_DropDown).click();
		Select serviceReferrral = new Select($(Independent_ProviderRole_DropDown));
		List<WebElement> options = serviceReferrral.getOptions();
		for (WebElement item : options) {
			if (item.getText().trim().contentEquals(refString)) {
				count++;
			}
		}
		if (count >= 1)
			return true;
		else
			return false;
	}

	//Independent Referral Program for Non-Health,Health,eProvider,Specialty
	public void selectIndependentReferralProgram(String refString) {
		WaitFor.waitForJavascriptToFinish();
		if (isIndependentReferralProgramPresent(refString) == true) {
			$(Independent_ReferralProgram_DropDown).selectOption(refString);
		} else
			throw new ElementNotInListException(refString + " Independent Referral Program passed as String is not in the list.");
	}
	//Independent Referral Program for Non-Health,Health,eProvider,Specialty.
	public boolean isIndependentReferralProgramPresent(String refString) {
		WaitFor.waitForJavascriptToFinish();
		int count = 0;
		$(Independent_ReferralProgram_DropDown).click();
		Select serviceReferrral = new Select($(Independent_ReferralProgram_DropDown));
		List<WebElement> options = serviceReferrral.getOptions();
		for (WebElement item : options) {
			if (item.getText().trim().contentEquals(refString)) {
				count++;
			}
		}
		if (count >= 1)
			return true;
		else
			return false;
	}
	
	
}
