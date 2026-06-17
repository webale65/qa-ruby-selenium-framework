# 🚀 Framework QA Automation con Ruby, Selenium y Minitest

## 📋 Descripción

Este repositorio contiene un Framework de Automatización de Pruebas desarrollado con Ruby, Selenium WebDriver y Minitest.

El proyecto fue construido con fines de aprendizaje práctico y para aplicar conceptos fundamentales de QA Automation utilizados en entornos profesionales.

---

## 🎯 Objetivos

* Automatizar pruebas funcionales de interfaz web.
* Implementar buenas prácticas de automatización.
* Aplicar el patrón Page Object Model (POM).
* Gestionar datos de prueba de forma independiente.
* Generar evidencias automáticas ante fallos.
* Construir una base escalable para futuros proyectos QA.

---

## 🛠 Tecnologías Utilizadas

* Ruby
* Selenium WebDriver
* Minitest
* Git
* GitHub

---

## 📂 Estructura del Proyecto

```text
config/
data/
pages/
reports/
screenshots/
selenium/
selenium_tests/
utils/
run_tests.rb
```

### Descripción de carpetas

| Carpeta        | Función                             |
| -------------- | ----------------------------------- |
| config         | Configuración general del framework |
| data           | Datos de prueba                     |
| pages          | Implementación de Page Objects      |
| reports        | Reportes de ejecución               |
| screenshots    | Evidencias automáticas de fallos    |
| selenium_tests | Casos de prueba automatizados       |
| utils          | Utilidades y clases auxiliares      |

---

## ⚙️ Funcionalidades Implementadas

### ✅ Selenium WebDriver

Automatización de interacciones con navegador web.

### ✅ Minitest

Framework utilizado para la ejecución y validación de pruebas.

### ✅ Page Object Model (POM)

Separación entre lógica de pruebas y elementos de interfaz para mejorar la mantenibilidad.

### ✅ Explicit Waits

Sincronización de elementos evitando el uso excesivo de `sleep`.

### ✅ Data Driven Testing

Separación de datos de prueba respecto a la lógica de automatización.

### ✅ Captura Automática de Evidencias

Generación automática de screenshots cuando una prueba falla.

### ✅ Reportes HTML

Generación de reportes básicos de ejecución.

### ✅ Test Runner

Ejecución centralizada de todos los casos de prueba.

---

## ▶️ Ejecución de Pruebas

Ejecutar todos los tests:

```bash
ruby run_tests.rb
```

Ejecutar una prueba específica:

```bash
ruby selenium_tests/saludo_test.rb
```

---

## 📊 Capacidades Actuales del Framework

* Automatización UI
* Page Object Model
* Gestión de Datos de Prueba
* Evidencias Automáticas
* Reportes HTML
* Configuración Centralizada
* Esperas Explícitas

---

## 🚧 Próximas Mejoras

* Integración continua con GitHub Actions
* Ejecución Cross Browser
* Reportes HTML avanzados
* Automatización sobre sitios reales
* Ejecución Headless
* Integración con Jenkins
* Métricas de ejecución

---

## 👨‍💻 Autor

**Alberto Alejandro Pedraza**

QA Tester | Testing Manual | Testing de APIs | QA Automation

📍 Argentina

GitHub: https://github.com/webale65

LinkedIn: https://www.linkedin.com/in/alberto-alejandro-pedraza
