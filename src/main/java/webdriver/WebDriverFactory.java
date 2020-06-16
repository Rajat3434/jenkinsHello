/*
 * package webdriver;
 * 
 * import java.net.URL; import java.util.HashMap;
 * 
 * import org.openqa.selenium.Platform; import org.openqa.selenium.WebDriver;
 * import org.openqa.selenium.chrome.ChromeOptions; import
 * org.openqa.selenium.firefox.FirefoxDriver; import
 * org.openqa.selenium.remote.CapabilityType; import
 * org.openqa.selenium.remote.DesiredCapabilities; import org.slf4j.Logger;
 * import org.slf4j.LoggerFactory;
 * 
 * import com.codeborne.selenide.Configuration;
 * 
 * import config.BrowserType; import config.RuntimeConfig; import
 * org.openqa.selenium.firefox.FirefoxDriver; import
 * org.openqa.selenium.firefox.FirefoxProfile;
 * 
 * public class WebDriverFactory {
 * 
 * public static final Logger log =
 * LoggerFactory.getLogger(WebDriverFactory.class);
 * 
 * static { log.trace("Setting Properties");
 * 
 * System.setProperty("webdriver.chrome.driver",
 * RuntimeConfig.getChromeDriverLocation());
 * System.setProperty("webdriver.gecko.driver",
 * RuntimeConfig.getChromeDriverLocation());
 * 
 * // This gets rid of the 5 lines of "chromedriver running only local
 * connections // allowed" etc etc, every time Chrome starts
 * System.setProperty("webdriver.chrome.silentOutput", "true");
 * 
 * // Implicit wait settings - Selenide default is 4 seconds, set to value from
 * // runtime config, browser_config.implicit_wait_timeout. // If not defined,
 * it returns 60 seconds as default. log.trace("Setting timeouts");
 * Configuration.timeout = RuntimeConfig.getImplicitWaitTimeout() * 1000;
 * Configuration.collectionsTimeout = RuntimeConfig.getImplicitWaitTimeout() *
 * 1000; }
 * 
 * private WebDriverFactory() { }
 * 
 *//**
	 * Create a new webdriver on any platform
	 *
	 * @param type The browser type to use
	 * @return a new WebDriver instance
	 */
/*
 * 
 * public static WebDriver createDriverInstance(BrowserType type) { return
 * createDriverInstance(type, Platform.ANY); }
 * 
 *//**
	 * Create a new webdriver
	 *
	 * @param type     The browser type to use
	 * @param platform Platform
	 * @return a new WebDriver instance
	 *//*
		 * public static WebDriver createDriverInstance(BrowserType type, Platform
		 * platform) { switch (type) { case FIREFOX: return RuntimeConfig.getUseHub() ?
		 * createNewRemoteDriver(type, platform) : createNewFirefoxDriver(platform);
		 * case IE: return RuntimeConfig.getUseHub() ? createNewRemoteDriver(type,
		 * platform) : createNewIEDriver(platform); case EDGE: return
		 * RuntimeConfig.getUseHub() ? createNewRemoteDriver(type, platform) :
		 * createNewEdgeDriver(platform); case CHROME: return RuntimeConfig.getUseHub()
		 * ? createNewRemoteDriver(type, platform) : createNewChromeDriver(platform);
		 * default: throw new
		 * UnsupportedOperationException("Unknown or unimplemented browser type!"); } }
		 * 
		 * private static WebDriver createNewRemoteDriver(BrowserType browserType,
		 * Platform platform) { DesiredCapabilities capabilities = new
		 * DesiredCapabilities();
		 * 
		 * if (browserType.equals(BrowserType.FIREFOX)) {
		 * capabilities.setBrowserName("firefox"); capabilities.setPlatform(platform);
		 * capabilities.setCapability(FirefoxDriver.PROFILE, createFirefoxProfile()); }
		 * else if (browserType.equals(BrowserType.CHROME)) { ChromeOptions options =
		 * new ChromeOptions(); options.addArguments("--start-maximized");
		 * options.addArguments("--no-sandbox");
		 * options.addArguments("--disable-dev-shm-usage"); HashMap<String, Object>
		 * chromePrefs = new HashMap<>();
		 * chromePrefs.put("plugins.always_open_pdf_externally", true);
		 * chromePrefs.put("profile.default_content_settings.popups", 0);
		 * chromePrefs.put("download.prompt_for_download", 0);
		 * options.setExperimentalOption("prefs", chromePrefs);
		 * capabilities.setBrowserName("chrome"); capabilities.setPlatform(platform);
		 * //Additional arguments may be added through globalRuntimeSettings.json file.
		 * 
		 * 
		 * for (String argument : RuntimeConfig.getChromeArguments()) {
		 * options.addArguments(argument); }
		 * capabilities.setCapability(ChromeOptions.CAPABILITY, options); } else if
		 * (browserType.equals(BrowserType.EDGE)) {
		 * log.trace("Setting Edge capability on RemoteWebDriver using platform: {}",
		 * platform);
		 * capabilities.setBrowserName(org.openqa.selenium.remote.BrowserType.EDGE);
		 * capabilities.setPlatform(platform); } else if
		 * (browserType.equals(BrowserType.IE)) {
		 * log.trace("Setting IE capability on RemoteWebDriver using platform: {}",
		 * platform); capabilities.setPlatform(platform);
		 * capabilities.setBrowserName(org.openqa.selenium.remote.BrowserType.IE);
		 * capabilities.setCapability(CapabilityType.ACCEPT_SSL_CERTS, true); } else {
		 * throw new UnsupportedOperationException("Unknown browserType: " + browserType
		 * + ". Likely unimplemented yet"); }
		 * 
		 * URL gridUrl = getGridUrl();
		 * 
		 * WebDriver d = retryCreateRemoteWebDriver(gridUrl, capabilities); try {
		 * d.manage().window().maximize(); } catch (WebDriverException e) { //This can
		 * happen when running on linux...ok to ignore. Maximize is set in the
		 * capabilities }
		 * 
		 * return d;
		 * 
		 * }
		 * 
		 * private static FirefoxProfile createFirefoxProfile() { FirefoxProfile fp =
		 * new FirefoxProfile(); fp.setAcceptUntrustedCertificates(true);
		 * fp.setAssumeUntrustedCertificateIssuer(true);
		 * fp.setPreference("plugin.disable_full_page_plugin_for_types",
		 * "application/pdf"); fp.setPreference("pdfjs.disabled", true);
		 * fp.setPreference("browser.download.manager.showWhenStarting", false);
		 * fp.setPreference("browser.helperApps.neverAsk.saveToDisk",
		 * "application/x-rpt,application/pdf, application/zip,text/ps-export,application/excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/vnd.ms-excel,application/vnd.msexcel,application/text,application/plain,text/ps-save-to-disk,text/plain,text/ps-export,application/octet-stream, text/html,application/json,application/csv,text/csv,text/comma-separated-values,text/x-csv,application/x-csv,text/x-comma-separated-values,text/tab-separated-values,text/json,text/pst,application/json;charset=utf-8,application/x-sql,text/csv;charset=UTF-8,image/jpg,application/vnd.openxmlformats-officedocument.wordprocessingml.document"
		 * ); fp.setPreference("browser.helperApps.neverAsk.openFile",
		 * "application/x-rpt, text/PowerSchoolEngineInfo, application/pdf, application/csv,application/excel,application/vnd.ms-excel,application/vnd.msexcel,text/anytext,text/comma-separated-values,text/csv,text/plain,text/x-csv,application/x-csv,text/x-comma-separated-values,text/tab-separated-values,application/xml,text/plain,text/xml,image/jpeg,application/octet-stream,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
		 * ); fp.setPreference("browser.helperApps.alwaysAsk.force", false);
		 * fp.setPreference("browser.download.folderList", 2);
		 * fp.setPreference("pdfjs.enabledCache.state", false); return fp; }
		 * 
		 * private static URL getGridUrl() { String str = RuntimeConfig.getHubURL(); try
		 * { if (str == null || str.equals("")) { throw new
		 * InvalidParameterException("Null or empty HUB_URL specified"); } return new
		 * URL(str); } catch (MalformedURLException e) { throw new
		 * InvalidParameterException(str + " isn't a valid url for the hub"); } }
		 * 
		 * }
		 */