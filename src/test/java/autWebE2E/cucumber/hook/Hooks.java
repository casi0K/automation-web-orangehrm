package autWebE2E.cucumber.hook;

import autWebE2E.drivers.DriverFactory;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

public class Hooks {

    @Before
    public void setUp() {
        DriverFactory.initDriver();
    }

    @After
    public void tearDown(Scenario scenario) {
        try {
            if (scenario.isFailed() && DriverFactory.getDriver() instanceof TakesScreenshot ts) {
                byte[] bytes = ts.getScreenshotAs(OutputType.BYTES);
                scenario.attach(bytes, "image/png", "failure-screenshot");
            }
        } catch (Exception ignored) {}
        DriverFactory.quitDriver();
    }
}
