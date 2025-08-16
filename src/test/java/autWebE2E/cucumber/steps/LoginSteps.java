package autWebE2E.cucumber.steps;

import autWebE2E.pages.DashboardPage;
import autWebE2E.pages.LoginPage;
import io.cucumber.java.en.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;

public class LoginSteps {
    private WebDriver driver;
    private LoginPage loginPage;
    private DashboardPage dashboardPage;

    @Given("estoy en la página de login de OrangeHRM")
    public void abrirPaginaLogin() {
        driver = new ChromeDriver();
        driver.manage().window().maximize();
        loginPage = new LoginPage(driver);
        dashboardPage = new DashboardPage(driver);
        loginPage.open();
    }

    @When("inicio sesión con usuario {string} y contraseña {string}")
    public void iniciarSesion(String usuario, String clave) {
        loginPage.loginAs(usuario, clave);
    }

    @Then("debo ver el dashboard")
    public void verificarDashboard() {
        Assert.assertTrue(dashboardPage.isAt(), "No se llegó al Dashboard");
        driver.quit();
    }
}
