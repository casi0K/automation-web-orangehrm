package com.orangehrm.smoke;

import org.testng.annotations.Test;
import static org.testng.Assert.assertTrue;

public class SmokeTest {
    @Test
    public void basicHealthCheck() {
        assertTrue(true, "El proyecto compila y ejecuta tests correctamente");
    }
}
