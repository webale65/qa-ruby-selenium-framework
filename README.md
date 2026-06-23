# 🚀 QA Ruby Selenium Framework

Framework de Automatización de Pruebas desarrollado con Ruby, Selenium WebDriver y Minitest.

![Version](https://img.shields.io/badge/Version-v2.8.1-blue)
![Ruby](https://img.shields.io/badge/Ruby-Automation-red)
![Selenium](https://img.shields.io/badge/Selenium-WebDriver-green)
![Minitest](https://img.shields.io/badge/TestFramework-Minitest-orange)
![Docker](https://img.shields.io/badge/Docker-Supported-blue)
![Jenkins](https://img.shields.io/badge/Jenkins-CI%2FCD-red)
![GitHub Actions](https://img.shields.io/badge/GitHub_Actions-Enabled-success)
![Status](https://img.shields.io/badge/Status-Stable-brightgreen)

---

## 📋 Descripción

QA Ruby Selenium Framework es un framework de automatización de pruebas construido con Ruby, Selenium WebDriver y Minitest.

El proyecto fue desarrollado como parte de un proceso de formación y especialización en QA Automation, evolucionando hasta convertirse en una solución completa que incorpora automatización UI, automatización de APIs, ejecución Cross Browser, CI/CD, reportería avanzada y métricas de ejecución.

Actualmente el framework se encuentra validado en entornos locales, Docker, GitHub Actions y Jenkins.

---

## 🎯 Objetivos

* Automatizar pruebas funcionales de aplicaciones web.
* Aplicar buenas prácticas de QA Automation.
* Implementar Page Object Model (POM).
* Integrar pruebas UI y API.
* Generar reportes y métricas de ejecución.
* Aplicar integración continua mediante CI/CD.
* Mantener una arquitectura escalable y mantenible.

---

## 🛠 Tecnologías Utilizadas

### Automatización

* Ruby
* Selenium WebDriver
* Minitest
* HTTParty

### DevOps y CI/CD

* Git
* GitHub
* GitHub Actions
* Jenkins
* Docker

### Navegadores

* Chrome
* Firefox

---

## 🏗 Arquitectura del Framework

### Patrones Implementados

* Page Object Model (POM)
* Data Driven Testing
* Explicit Waits

### Capacidades

* Automatización UI
* Automatización de APIs
* Smoke Suite
* Regression Suite
* Ejecución Cross Browser
* Captura automática de evidencias
* Reportes HTML
* Allure Reports
* Execution Metrics Dashboard
* Integración Jenkins
* Integración GitHub Actions
* Docker Support

---

## 📂 Estructura del Proyecto

```text
.github/workflows/
api_tests/
config/
data/
docs/
evidence/
jenkins/
mocks/
pages/
reports/
screenshots/
selenium_tests/
utils/

Dockerfile
docker-compose.yml
Gemfile
README.md
```

---

## 🤖 Cobertura Automatizada

### SauceDemo

* Login exitoso
* Login inválido
* Carrito de compras
* Purchase Flow

### DemoQA

* Forms
* Web Tables
* Check Boxes
* Radio Buttons
* Buttons

### API Testing

* GET Requests
* POST Requests
* Validación de respuestas

---

## ▶️ Ejecución de Pruebas

### Ejecutar Suite Completa

```bash
bundle exec ruby run_tests.rb
```

### Ejecutar Smoke Suite

```bash
bundle exec ruby run_smoke_tests.rb
```

### Ejecutar Regression Suite

```bash
bundle exec ruby run_regression_tests.rb
```

### Ejecutar API Suite

```bash
bundle exec ruby run_api_tests.rb
```

---

## 🌐 Ejecución Cross Browser

Chrome:

```bash
BROWSER=chrome bundle exec ruby run_tests.rb
```

Firefox:

```bash
BROWSER=firefox bundle exec ruby run_tests.rb
```

---

## 🐳 Docker Support

Construir imagen:

```bash
docker build -t qa-ruby-selenium-framework .
```

Ejecutar framework:

```bash
docker run --rm qa-ruby-selenium-framework
```

Docker Compose:

```bash
docker compose up
```

---

## ⚙️ Integración Jenkins

Pipeline implementado:

* Install Dependencies
* Run UI Tests - Chrome
* Run UI Tests - Firefox
* Run API Tests
* Generate HTML Report
* Generate Metrics Dashboard
* Archive Artifacts

Validado exitosamente mediante Jenkins CI/CD.

---

## 📊 Reportes y Métricas

### HTML Reports

Resumen de ejecución y resultados.

### Allure Reports

Reportes avanzados con detalle de ejecución.

### Execution Metrics Dashboard

Métricas disponibles:

* Fecha de ejecución
* Entorno
* Navegador
* Total de pruebas
* Pruebas exitosas
* Pruebas fallidas
* Porcentaje de éxito
* Estado de ejecución

---

## ✅ Estado de Validación

Validado en:

* Entorno Local
* Docker
* GitHub Actions
* Jenkins
* Chrome
* Firefox

Estado actual:

**Estable**

---

## 📦 Historial de Releases

* v2.8.1 – Success Rate Format Fix
* v2.8 – Execution Metrics Dashboard
* v2.7 – Jenkins Cross Browser Validation
* v2.6 – Jenkins CI/CD & Reporting Integration
* v2.5 – Docker Support
* v2.4 – Framework Enhancements
* v2.3 – Cross Browser Execution
* v2.2 – Advanced HTML Reports
* v2.1 – API Testing Integration
* v2.0 – Dependency Management & Selenium Upgrade

Historial completo disponible en:

`docs/releases-roadmap.md`

---

## 📚 Documentación

* docs/framework-architecture.md
* docs/releases-roadmap.md

---

## 🚀 Próxima Release

### v2.9 - Framework Final Release

Objetivos:

* Consolidación documental
* Estructura de evidencias
* Optimización para portfolio profesional
* Cierre de roadmap del framework

---

## 👨‍💻 Autor

**Alberto Alejandro Pedraza**

QA Tester | QA Automation | API Testing | Calidad de Software

📍 Argentina

GitHub: https://github.com/webale65

LinkedIn: https://www.linkedin.com/in/alberto-alejandro-pedraza
