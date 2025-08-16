package autWebE2E.pages;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;

public class LoginPage extends apages.BasePage {

    private By usernameField = By.id("txtUsername");
    private By passwordField = By.id("txtPassword");
    private By loginButton   = By.id("btnLogin");
    private By errorMessage  = By.id("spanMessage");

    public LoginPage(WebDriver driver) {
        super(driver);
    }

    public void loginAs(String username, String password) {
        type(usernameField, username);
        type(passwordField, password);
        click(loginButton);
    }

    public String getErrorMessage() {
        return getText(errorMessage);
    }
}