package autWebE2E.drivers;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
// Opcional: Edge u otros
// import org.openqa.selenium.edge.EdgeDriver;

public class DriverFactory {
    private static final ThreadLocal<WebDriver> TL_DRIVER = new ThreadLocal<>();

    public static void initDriver() {
        String browser = System.getProperty("browser", "chrome").toLowerCase();
        boolean headless = Boolean.getBoolean("headless");

        switch (browser) {
            case "chrome":
                ChromeOptions options = new ChromeOptions();
                if (headless) options.addArguments("--headless=new");
                TL_DRIVER.set(new ChromeDriver(options));
                break;
//            case "edge":
//                TL_DRIVER.set(new EdgeDriver());
//                break;
            default:
                throw new IllegalArgumentException("Navegador no soportado: " + browser);
        }
        getDriver().manage().window().maximize();
    }

    public static WebDriver getDriver() {
        return TL_DRIVER.get();
    }

    public static void quitDriver() {
        WebDriver driver = TL_DRIVER.get();
        if (driver != null) {
            driver.quit();
            TL_DRIVER.remove();
        }
    }
}
