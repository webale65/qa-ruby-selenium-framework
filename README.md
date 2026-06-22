## 🚀 Framework QA Automation con Ruby, Selenium y Minitest

![Version](https://img.shields.io/badge/Version-v2.5-blue)
![CI](https://img.shields.io/badge/CI-GitHub%20Actions-success)
![Status](https://img.shields.io/badge/Status-Stable-brightgreen)

### 📋 Descripción

Este repositorio contiene un Framework de Automatización de Pruebas desarrollado con Ruby, Selenium WebDriver y Minitest.

El proyecto fue construido con fines de aprendizaje práctico y evolución profesional en QA Automation, aplicando conceptos utilizados en entornos reales de testing y aseguramiento de calidad.

Actualmente el framework se encuentra en su versión estable v2.5 e incorpora automatización UI, API Testing con HTTParty, Smoke Suite, Regression Suite, gestión de dependencias con Bundler, reportes HTML avanzados, ejecución Cross Browser (Chrome y Firefox), integración continua mediante GitHub Actions y una arquitectura escalable para futuras ampliaciones.

---

## 🎯 Objetivos

* Automatizar pruebas funcionales de aplicaciones web.
* Implementar buenas prácticas de QA Automation.
* Aplicar el patrón Page Object Model (POM).
* Gestionar datos de prueba de forma independiente.
* Generar evidencias automáticas ante fallos.
* Implementar integración continua (CI/CD).
* Construir una base escalable para futuros proyectos QA.

---

## 🛠 Tecnologías Utilizadas

* Ruby
* Selenium WebDriver
* Minitest
* HTTParty
* Bundler
* Git
* GitHub
* GitHub Actions
* Chrome
* Firefox

---

## 📂 Estructura del Proyecto

```text
config/
data/
docs/
pages/
reports/
screenshots/
selenium_tests/
utils/
run_tests.rb
README.md
```

---

## 🏗️ Arquitectura del Framework

### Tecnologías Base

* Ruby
* Selenium WebDriver
* Minitest
* HTTParty
* Bundler
* Git
* GitHub
* GitHub Actions

### Patrones Implementados

* Page Object Model (POM)
* Data Driven Testing
* Explicit Waits
* Evidencias automáticas mediante Screenshots

### Organización del Proyecto

* **config/** → Configuración general del framework
* **data/** → Datos de prueba
* **docs/** → Documentación técnica y roadmap del framework
* **pages/** → Implementación de Page Objects
* **selenium_tests/** → Casos de prueba automatizados
* **utils/** → Utilidades y helpers
* **screenshots/** → Evidencias automáticas de fallos
* **reports/** → Reportes de ejecución

### Integración Continua

* GitHub Actions
* Chrome Headless
* Ejecución automática en Pull Requests
* Compatibilidad Windows y Linux

---

## ⚙️ Funcionalidades Implementadas

### ✅ Selenium WebDriver

Automatización de interacciones con aplicaciones web.

### ✅ Minitest

Framework utilizado para ejecución y validación de pruebas automatizadas.

### ✅ Page Object Model (POM)

Separación entre lógica de negocio y elementos de interfaz para mejorar mantenibilidad y reutilización.

### ✅ Explicit Waits

Sincronización robusta de elementos evitando dependencias excesivas de sleep.

### ✅ Data Driven Testing

Separación de datos de prueba respecto a la lógica de automatización.

### ✅ Captura Automática de Evidencias

Generación automática de screenshots cuando una prueba falla.

### ✅ Reportes HTML Avanzados

Generación de reportes HTML con métricas de ejecución, porcentaje de éxito, fecha de ejecución, resumen de resultados y listado de pruebas ejecutadas.

### ✅ GitHub Actions (CI/CD)

Ejecución automática de pruebas en Pull Requests y validación continua del framework.

### ✅ Git Flow

Uso de ramas feature, fix, Pull Requests, merges y releases versionadas.

---

## 🤖 Automatizaciones Implementadas

### SauceDemo

* Login exitoso
* Login inválido
* Validación de carrito de compras
* Flujo E2E de compra

### DemoQA

* Forms
* Radio Buttons
* Checkboxes
* Web Tables
* Buttons

### API Testing (JSONPlaceholder)

* GET Users
* GET User by ID
* GET Posts
* POST Create Post
* Response Validation

---

## ▶️ Ejecución de Pruebas

### Ejecutar la suite principal

```bash
ruby run_tests.rb
```

### Ejecutar una prueba específica

```bash
ruby selenium_tests/forms_test.rb
```

### Ejecutar en Chrome

```bash
BROWSER=chrome bundle exec ruby selenium_tests/buttons_test.rb
```

### Ejecutar en Firefox

```bash
BROWSER=firefox bundle exec ruby selenium_tests/buttons_test.rb
```

---

## 🐳 Docker Support

The framework includes Docker support for running automated tests in isolated and reproducible environments.

### Build Docker Image

```bash
docker build -t qa-ruby-selenium-framework .
```

### Run Test Suite

```bash
docker run --rm qa-ruby-selenium-framework
```

### Run with Docker Compose

```bash
docker compose up
```

### Benefits

* Consistent execution environments
* Simplified dependency management
* Easier CI/CD integration
* Improved portability across systems
* Reduced setup time for contributors

---

## 📊 Estado Actual del Framework (v2.5)

### Cobertura Actual

#### UI Automation

* ✅ 11 tests
* ✅ 14 aserciones

#### API Testing

* ✅ 5 tests
* ✅ 9 aserciones

#### Resultado General

* ✅ 16 tests automatizados
* ✅ 23 aserciones ejecutadas
* ✅ 0 fallos
* ✅ 0 errores
* ✅ GitHub Actions aprobado
* ✅ Ejecución validada en Chrome
* ✅ Ejecución validada en Firefox
* ✅ API Test Suite aprobada

### Capacidades Actuales

* Automatización UI
* Selenium WebDriver
* Page Object Model
* Data Driven Testing
* Explicit Waits
* Evidencias automáticas
* Reportes HTML
* Configuración centralizada
* GitHub Actions
* Git Flow
* Pull Requests
* Releases versionadas
* Smoke Suite
* Regression Suite
* API Testing
* HTTParty
* Bundler
* Dependency Management
* Advanced HTML Reports
* Execution Summary Dashboard
* Pass Rate Calculation
* Executed Tests Report
* Framework Information Panel
* Cross Browser Execution (Chrome y Firefox)
* Browser Selection via Environment Variables
* Compatibilidad Windows/Linux

---

## 🏷️ Última Release

### v2.3 - Cross Browser Execution

Principales mejoras:

* Browser selection using BROWSER environment variable
* Chrome execution support
* Firefox execution support
* Centralized browser configuration
* Browser-specific Selenium options
* Unsupported browser validation

---

## 📦 Historial de Releases

- v2.3 – Cross Browser Execution
- v2.2 – Advanced HTML Reports
- v2.1 – API Testing Integration
- v2.0 – Dependency Management & Selenium Upgrade
- v1.9 – Smoke & Regression Suites
- v1.8 – GitHub Actions CI/CD
- v1.7 – Documentation & Portfolio Ready
- v1.6 – DemoQA Buttons
- v1.5 – DemoQA Radio Button
- v1.4 – DemoQA CheckBox
- v1.3 – DemoQA Web Tables
- v1.2 – DemoQA Forms
- v1.1 – SauceDemo Purchase Flow
- v1.0 – Initial Selenium Ruby QA Framework

---

## 🚧 Próximas Mejoras

* Jenkins CI/CD Integration
* Execution Metrics Dashboard
* Test Trend Analysis

---

## 👨‍💻 Autor

**Alberto Alejandro Pedraza**

QA Tester | Testing Manual | Testing de APIs | QA Automation

📍 Argentina

GitHub: https://github.com/webale65

LinkedIn: https://www.linkedin.com/in/alberto-alejandro-pedraza

