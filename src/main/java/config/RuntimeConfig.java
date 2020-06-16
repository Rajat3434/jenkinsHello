package config;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.typesafe.config.Config;
import com.typesafe.config.ConfigException;
import com.typesafe.config.ConfigFactory;
import com.typesafe.config.ConfigParseOptions;
import com.typesafe.config.ConfigResolveOptions;
import com.typesafe.config.ConfigSyntax;

public class RuntimeConfig {
	
    private static final Logger log = LoggerFactory.getLogger(RuntimeConfig.class);
    
  //CONFIG FILES
    private static final String ENVIRONMENTS_FILE = "/Context-Selection/src/main/java/resources/Configurations/defaultConfigTemplate/globalRuntimeSettings.json";
    private static final String BROWSER_CONFIGURATIONS_FILE = "/Context-Selection/src/main/java/resources/Configurations/browsersConfigurations.json";
  
    private static final Config GLOBAL_CONFIG ;
    private static final Config BROWSER_CONFIG;
    
    //CONFIG VARIABLES
    private static final String BROWSER_CONFIG_REF = "browser_config.config";
    private static final String FILE_CONFIG_REF = "file_config.config";
    
    static {
    	GLOBAL_CONFIG = RuntimeConfig.load(ENVIRONMENTS_FILE);
        BROWSER_CONFIG = RuntimeConfig.load(BROWSER_CONFIGURATIONS_FILE);
    }

    private RuntimeConfig() {
    }
    
    public static String getChromeDriverLocation() {
        return GLOBAL_CONFIG.getString("browser_config.browser_paths.chromedriver_location");
    }
    
    public static String getFirefoxDriverLocation() {
        return GLOBAL_CONFIG.getString("browser_config.browser_paths.firefoxdriver_location");
    }
    
    public static Config load(String file) {
        return ConfigFactory.load(file, ConfigParseOptions.defaults().setSyntax(ConfigSyntax.CONF), ConfigResolveOptions.defaults())
                .withFallback(ConfigFactory.parseFile(new File(System.getProperty("user.dir") + File.separator + file), ConfigParseOptions.defaults().setSyntax(ConfigSyntax.CONF)));
    }
    
    /**
     * Get implicit wait time in seconds.  If the setting is omitted, return 60 seconds as default.
     *
     * @return
     */
    public static int getImplicitWaitTimeout() {
        try {
            return GLOBAL_CONFIG.getInt("browser_config.implicit_wait_timeout");
        } catch (ConfigException ex) {
            return 60;
        }
    }
    
    public static boolean getUseHub() {
        String browserRef = GLOBAL_CONFIG.getString(BROWSER_CONFIG_REF);
        return BROWSER_CONFIG.getBoolean(browserRef + ".use_hub");
    }
    
    public static List<String> getChromeArguments() {
        try {
            return GLOBAL_CONFIG.getStringList("browser_config.chrome_config.arguments");
        } catch (ConfigException ex) {
        }
        return new ArrayList<>();
    }
}
