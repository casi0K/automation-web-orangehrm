**🚀 Proyecto de Automatización Web - OrangeHRM**

**Descripción General**

Este repositorio contiene un proyecto de automatización de pruebas end-to-end (E2E) para la aplicación web de demostración de **OrangeHRM.** El objetivo principal es validar las funcionalidades críticas del sistema, como el inicio de sesión y la navegación por el panel de control.

El proyecto está diseñado con las mejores prácticas de la industria, combinando un **enfoque BDD (Behavior Driven Development)** con una arquitectura **Page Object Model (POM)** para crear pruebas robustas, escalables y fáciles de mantener.


**1. Stack Tecnológico**

**Java(17+):** Lenguaje principal de programación.

**Selenium WebDriver(4.x):**	Automatización del navegador web.

**Cucumber(7.x):** Framework BDD para la definición de escenarios.

**TestNG(7.x):** Framework de ejecución de pruebas.

**Gradle(8.x):** Gestión de dependencias y construcción del proyecto.


**2. Requisitos Previos**
Java 17 o superior

Navegador compatible (ej. Google Chrome)

Gradle instalado o usar el wrapper incluido (./gradlew)


**3. Características del Proyecto**

**BDD con Gherkin:** Escenarios de prueba escritos en lenguaje natural, facilitando la colaboración con el equipo de negocio.

**Page Object Model (POM):** Separación de la lógica de la prueba y la ubicación de los elementos de la página, lo que mejora la reusabilidad y el mantenimiento del código.

**Integración Continua (CI):** El proyecto está listo para ser integrado en pipelines de CI/CD (como Jenkins o Bitbucket Pipelines) para una ejecución automatizada.


**4. Cómo Ejecutar las Pruebas**

**Clonar el repositorio:** git clone https://github.com/tu-usuario/automation-web-orangehrm.git

**Abrir en un IDE:** Importar el proyecto en IntelliJ IDEA.

**Ejecutar las pruebas:** ./gradlew clean test

**Ver el reporte HTML:** Abre en tu navegador en build/reports/tests/test/index.html


**5. Estructura del Proyecto**
automation-web-orangehrm/
├── src/
│   ├── main/java/...   # Código base / POM
│   └── test/java/...   # Clases y escenarios de prueba
├── build.gradle
├── README.md
└── ...

**6. Licencia**
Este proyecto se distribuye bajo licencia MIT. Consulta el archivo LICENSE para más detalles.










