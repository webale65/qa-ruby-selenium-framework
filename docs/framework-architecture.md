# QA Ruby Selenium Framework - Arquitectura

## Descripción General

QA Ruby Selenium Framework es un framework de automatización de pruebas desarrollado con Ruby, Selenium WebDriver y Minitest.

El proyecto fue diseñado para aplicar buenas prácticas de QA Automation, patrones de diseño mantenibles, integración CI/CD y capacidades de reportería profesional.

---

## Tecnologías Principales

* Ruby
* Selenium WebDriver
* Minitest
* HTTParty
* Bundler
* Git
* GitHub

---

## Arquitectura de Automatización

### Patrón de Diseño

El framework implementa el patrón **Page Object Model (POM)**.

Beneficios:

* Mayor mantenibilidad
* Reutilización de componentes
* Reducción de código duplicado
* Escalabilidad de los tests

---

## Capacidades de Testing

### Automatización UI

Aplicaciones soportadas:

* SauceDemo
* DemoQA

Pruebas implementadas:

* Login
* Purchase Flow
* Forms
* Web Tables
* Check Boxes
* Radio Buttons
* Buttons

### Automatización de APIs

Implementada con HTTParty.

Operaciones cubiertas:

* GET
* POST
* Validación de respuestas

---

## Suites de Ejecución

### Smoke Suite

Validación rápida de funcionalidades críticas.

### Regression Suite

Validación completa de todos los escenarios automatizados.

---

## Compatibilidad de Navegadores

* Chrome
* Firefox

La selección del navegador se realiza mediante variables de entorno.

---

## Reportería

### HTML Reports

Reportes de ejecución con resumen de resultados.

### Allure Reports

Reportes avanzados con detalle de ejecución.

### Execution Metrics Dashboard

Métricas disponibles:

* Entorno de ejecución
* Navegador utilizado
* Total de pruebas
* Pruebas exitosas
* Pruebas fallidas
* Porcentaje de éxito
* Estado de la ejecución

---

## Integración CI/CD

### GitHub Actions

* Ejecución automática
* Validación de Pull Requests
* Integración Continua

### Jenkins

Etapas implementadas:

* Install Dependencies
* Run UI Tests - Chrome
* Run UI Tests - Firefox
* Run API Tests
* Generate HTML Report
* Generate Metrics Dashboard
* Archive Artifacts

---

## Contenerización

### Docker

Características:

* Entorno aislado
* Ejecución reproducible
* Gestión simplificada de dependencias

---

## Estructura del Proyecto

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

## Estado Actual

Versión del Framework: v2.8.1

Validado en:

* Entorno Local
* Docker
* GitHub Actions
* Jenkins
* Chrome
* Firefox

Estado: Estable
