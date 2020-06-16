package stepDefinitions;

import static com.codeborne.selenide.Selenide.$;
import static com.codeborne.selenide.Selenide.open;
import static com.codeborne.selenide.Selenide.page;
import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.core.Is.is;

import org.openqa.selenium.WebDriver;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import pages.AcceptancePage;
import pages.LoginPage;
import pages.UserFirstPage;
import pages.WsibClinicReferralLinkPage;
import pages.WsibPage;
import webdriver.WaitFor;

public class StepDefinition {

	//private static final Logger log = LoggerFactory.getLogger(StepDefinition.class);
	// Pages
	private LoginPage loginPage;
	private AcceptancePage acceptancePage;
	private UserFirstPage userFirstPage;
	private WsibPage wsibPage;
	private WsibClinicReferralLinkPage wsibClinicReferralLinkPage;

	String PageTitle = "Provider Portal | Portail des fournisseurs: WSIB > ";
	WebDriver driver;

	// Initialization of page object

	@Given("^Open browser$")
	public void openBroswer() {
		
		/*
		 * System.setProperty("webdriver.chrome.driver",
		 * "C:\\Users\\qatester\\Downloads\\chromedriver_win32\\chromedriver.exe");
		 * System.setProperty("selenide.browser", "Chrome");
		 * System.setProperty("webdriver.chrome.silentOutput", "true"); //
		 * DesiredCapabilities.chrome().setCapability(ChromeOptions.CAPABILITY, option);
		 * // System.set ChromeOptions options = new ChromeOptions();
		 * options.addArguments("--start-maximized");
		 * options.addArguments("--disable-dev-shm-usage"); // WebDriver driver=new
		 * ChromeDriver(); // driver.get("http://www.yahoo.com"); // Write code here
		 * that turns the phrase above into concrete actions // driver = new
		 * ChromeDriver(); // WebDriverRunner.getWebDriver();
		 */		 
		
        WebDriverManager.chromedriver().setup();
		System.setProperty("selenide.browser", "chrome");
		//System.setProperty("webdriver.chrome.silentOutput", "true");
		//System.setProperty(key, value)
		
	}
	@Given("^(.*) (?:users|user) (.*) will be able to access Context selection page in (.*) in Provider portal$")
	public void userPortal(String a, String b, String c) throws Throwable {
		open("https://ssoqa.dev.emergis/oam/server/obrareq.cgi?encquery%3Di1zHzJDCucYEfHHvi4oYtH6NQziPrRJ2Nfp3fUVvGq6fMhbZN56oZy43V3162OsJm2IWVLN60Tr3V2xrAdWHJKuxZe3N7IMZ9%2F%2B1cdE9piem5qFBuuITcCF5Do2Y1kD4l1NTXm%2BGWM6zga9CGhBPtt9CloyIDrBCOlChFge2gvVi8gGMLOtfLTi3I65l9%2FxAjjd8NgJvCVV0sNFJdaFWSpTD5JIirvXJIqz7eAi2BXc42NcZsGnv7SOO8TTNe%2B3tDhRQtmxF2wwv6g1bvzSSXcKWzzRosk%2F26u8Jto%2B5gPn4fUVeIf75oydTPUFlblI%2B%20agentid%3Dwebgate11g%20ver%3D1%20crmethod%3D2");
		$("#details-button").click();
		$("#proceed-link").click();
		WaitFor.waitForJavascriptToFinish();
	}

	@And("^Login with (.*) or (.*) user in provider portal$")
	public void login(String Username, String Password) throws Throwable {
		// List<Map<String, String>> d1= arg1.asMaps(String.class, String.class);
		loginPage = page(LoginPage.class);
		acceptancePage = page(AcceptancePage.class);
		// loginPage.retriveDate(d1);
		loginPage.setUsername(Username);

		loginPage.setPassword(Password);
		loginPage.clickLogin_Button();
		WaitFor.waitForJavascriptToFinish();

		$("#details-button").click();
		// sleep(2000);
		$("#proceed-link").click();
		WaitFor.waitForJavascriptToFinish();

		acceptancePage.clickAcceptButtom();

	}

	@When("^In Home page Click on WSIB Link$")
	public void clickWsibLink() throws Throwable {
		userFirstPage = page(UserFirstPage.class);
		userFirstPage.clickWSIBButton();
	}

	@And("^In WSIB Home page Click on (.*) application$")
	public void clickOnApplication(String app) throws Throwable {
		wsibPage = page(WsibPage.class);
		wsibPage.clickApplicationButton(app);
	}

	@Then("^Should be able to access (.*) in WSIB in provider portal$")
	public void verfiyWsibPortal(String app) throws Throwable {

		wsibClinicReferralLinkPage = page(WsibClinicReferralLinkPage.class);
		assertThat("Page title not matched ", wsibClinicReferralLinkPage.getPageTitle(), is(PageTitle + app));
		wsibClinicReferralLinkPage.switchToAppFrame(app);
	}

	@Then("^Should be able to access (.*) and see location (.*) and role (.*)$")
	public void verifyLocationAndRole(String application, String location, String role) {
		WaitFor.waitForJavascriptToFinish();
		System.out.println(application);
		if(application.contentEquals("Physician Referral")){
		assertThat("Physican WorkLoation doesn't have " + location + "",	wsibClinicReferralLinkPage.isPhysicianWorkLocationPresent(location), is(true));
		wsibClinicReferralLinkPage.selectPhysicianWorkLocation(location);
		WaitFor.waitForJavascriptToFinish(200);
		assertThat("Physician Role dropdown doesn't have " + role + ".", wsibClinicReferralLinkPage.isPhysicianRoleLocationPresent(role),is(true));
		
		wsibClinicReferralLinkPage.selectPhysicianRoleLocation(role);
		}
		else {
		assertThat("WorkLoation doesn't have " + location + "",
				wsibClinicReferralLinkPage.isWorkLocationPresent(location), is(true));
		wsibClinicReferralLinkPage.selectWorkLocation(location);
		assertThat("Role dropdown doesn't have " + role + ".", wsibClinicReferralLinkPage.isRoleLocationPresent(role),
				is(true));
		wsibClinicReferralLinkPage.selectRoleLocation(role);
		}
	}
	
	@And("^Should be able to access (.*) and see location (.*) role (.*) and Referral Program (.*)$")
		public void verifyLocationRoleAndReferralProgram(String application, String location, String role, String referral) {
		
		if(application.contentEquals("Physician Referral")){
		// assertThat("" + location + "is not present", actual, matcher);
		assertThat("WorkLoation doesn't have " + location + "",wsibClinicReferralLinkPage.isPhysicianWorkLocationPresent(location), is(true));
		wsibClinicReferralLinkPage.selectPhysicianWorkLocation(location);
		
		assertThat("Role dropdown doesn't have " + role + ".", wsibClinicReferralLinkPage.isPhysicianRoleLocationPresent(role),
				is(true));
		wsibClinicReferralLinkPage.selectPhysicianRoleLocation(role);
		
		assertThat("ServiceReferralProgram dropdown doesn't have " + referral + ".",wsibClinicReferralLinkPage.isPhysicianServiceReferralProgramPresent(referral),is(true));
		wsibClinicReferralLinkPage.selectPhysicianReferralProgram(referral);
		}
		else {
			// assertThat("" + location + "is not present", actual, matcher);
			assertThat("WorkLoation doesn't have " + location + "",wsibClinicReferralLinkPage.isWorkLocationPresent(location), is(true));
			WaitFor.waitForJavascriptToFinish(200);
			wsibClinicReferralLinkPage.selectWorkLocation(location);
			WaitFor.waitForJavascriptToFinish(200);
			assertThat("Role dropdown doesn't have " + role + ".", wsibClinicReferralLinkPage.isRoleLocationPresent(role),
					is(true));
			WaitFor.waitForJavascriptToFinish(200);
			wsibClinicReferralLinkPage.selectRoleLocation(role);
			WaitFor.waitForJavascriptToFinish(200);
			assertThat("ServiceReferralProgram dropdown doesn't have " + referral + ".", wsibClinicReferralLinkPage.isServiceReferralProgramPresent(referral),
					is(true));
			WaitFor.waitForJavascriptToFinish(200);
			wsibClinicReferralLinkPage.selectReferralProgram(referral);
		}	
	}

	@And("^Should be able to access (.*) and see location (.*) role (.*) and serviceProvider (.*)$")
	public void verifyLocationRoleAndServiceProvider(String application, String location, String role, String serviceprovider) {
	
		// assertThat("" + location + "is not present", actual, matcher);
		assertThat("WorkLocation doesn't have " + location + "",wsibClinicReferralLinkPage.isWorkLocationPresent(location), is(true));
		wsibClinicReferralLinkPage.selectWorkLocation(location);
		
		assertThat("Role dropdown doesn't have " + role + ".", wsibClinicReferralLinkPage.isRoleLocationPresent(role),
				is(true));
		wsibClinicReferralLinkPage.selectRoleLocation(role);
		
		assertThat("ServiceReferralProgram dropdown doesn't have " + serviceprovider + ".", wsibClinicReferralLinkPage.isServiceProviderProgramPresent(serviceprovider),
				is(true));
		wsibClinicReferralLinkPage.selectServiceProviderProgram(serviceprovider);
}
	
	// For Work location, Role, Service Provider, Independent Role Program, Independent Referral Program
	//@And("^Should be able to access (.*) and see location (.*) role (.*) serviceProvider (.*) Independent Role (.*) and Independent Referral(.*)$")
	@And("^Should be able to access (.*) and see location (.*) role (.*) serviceProvider (.*) Independent Role (.*) and Independent Referral (.*)$")
	public void verifyLocationRoleServiceProviderRoleProgramReferralProgram(String application, String location, String role, String serviceprovider, String indeRole, String indeRefferral) {
	
		// assertThat("" + location + "is not present", actual, matcher);
		assertThat("WorkLocation doesn't have " + location + "",wsibClinicReferralLinkPage.isWorkLocationPresent(location), is(true));
		wsibClinicReferralLinkPage.selectWorkLocation(location);
		
		assertThat("Role dropdown doesn't have " + role + ".", wsibClinicReferralLinkPage.isRoleLocationPresent(role),
				is(true));
		wsibClinicReferralLinkPage.selectRoleLocation(role);
		
		assertThat("ServiceReferralProgram dropdown doesn't have " + serviceprovider + ".", wsibClinicReferralLinkPage.isServiceProviderProgramPresent(serviceprovider),
				is(true));
		wsibClinicReferralLinkPage.selectServiceProviderProgram(serviceprovider);
		
		assertThat("Independent Role Program dropdown doesn't have "+indeRole + ".", wsibClinicReferralLinkPage.isIndependentProviderRolePresent(indeRole),is(true));
		wsibClinicReferralLinkPage.selectIndependentProviderRole(indeRole);
		
		assertThat("Independent Referral Program dropdown doesn't have " + indeRefferral+ ".", wsibClinicReferralLinkPage.isIndependentReferralProgramPresent(indeRefferral),is(true));
		wsibClinicReferralLinkPage.selectIndependentReferralProgram(indeRefferral);
	
	}
	
}
