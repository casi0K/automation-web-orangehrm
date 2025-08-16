Feature: Login en OrangeHRM
  Scenario: Login válido
    Given estoy en la página de login de OrangeHRM
    When inicio sesión con usuario "Admin" y contraseña "admin123"
    Then debo ver el dashboard
