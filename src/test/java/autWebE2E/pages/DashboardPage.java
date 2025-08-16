package autWebE2E.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class DashboardPage {
    private WebDriver driver;
    private By dashboardHeader = By.xpath("//h6[text()='Dashboard']");

    public DashboardPage(WebDriver driver) {
        this.driver = driver;
    }

    public boolean isAt() {
        return driver.findElement(dashboardHeader).isDisplayed();
    }
}
