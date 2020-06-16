package config;

import org.slf4j.LoggerFactory;

/**
 * Supported browsers.
 * 
 * @author Rajat.Chouhan
 */
public enum BrowserType {
    IE, EDGE, FIREFOX, CHROME, CHROME_HEADLESS, SAFARI, PHANTOMJS, IOSSIMULATOR, IOSREALDEVICE, ANDROIDSIMULATOR, ANDROIDREALDEVICE;

    @Override
    public String toString() {
        switch(this) {
            case IE: return "internet explorer";
            case EDGE: return "edge";
            case FIREFOX: return "firefox";
            case CHROME: return "chrome";
            case CHROME_HEADLESS: return "chrome_headless";
            case SAFARI: return "safari";
            case IOSREALDEVICE: return "iosrealdevice";
            case PHANTOMJS: return "phantomjs";
        }

        LoggerFactory.getLogger(BrowserType.class.getName()).error("Could not resolve browser name, defaulting to FireFox");
        return "firefox";
    }
}
