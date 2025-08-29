## README.md

# Trackit 🧭

> **Sistema de Gestión de Inventario para Pequeñas Empresas**
>
> Administra productos, existencias, ventas y reportes. Incorpora módulos de **IA** para apoyar decisiones (alertas de reposición, predicción de ventas y detección de anomalías).

## Tabla de contenidos

* [Descripción](#descripción)
* [Características](#características)
* [Tecnologías](#tecnologías)
* [Estructura del repositorio](#estructura-del-repositorio)
* [Primeros pasos](#primeros-pasos)

  * [Requisitos](#requisitos)
  * [Base de datos](#base-de-datos)
  * [Backend (Java)](#backend-java)
  * [Frontend (HTML, CSS, JS)](#frontend-html-css-js)
  * [Módulo de IA](#módulo-de-ia)
* [API (borrador)](#api-borrador)
* [Buenas prácticas](#buenas-prácticas)
* [Contribuir](#contribuir)
* [Licencia](#licencia)

---

## Descripción

**Trackit** es una aplicación web pensada para **micro y pequeñas empresas** que necesitan controlar su inventario y sus ventas sin complejidad. El proyecto se desarrolla en el marco de la materia **Diseño de Interfaces de Usuario** y prioriza una **UI accesible, clara y consistente**.

## Características

* 📦 **Inventario**: altas/bajas/edición, SKU, categorías, lotes, mínimos.
* 🧾 **Ventas**: carrito, registro de ventas, actualización automática de stock.
* 🔔 **Alertas**: umbrales de reposición y vencimientos.
* 📊 **Reportes**: ventas por período, rotación, productos top.
* 🤖 **IA (futuro)**: predicción de demanda, detección de anomalías en ventas, recomendación de reorden.
* 👥 **Roles**: admin, vendedor (borrador).

## Tecnologías

* **Frontend**: HTML, CSS (BEM/Utility-first), JavaScript vanilla.
* **Backend**: Java (REST), servidor web (Tomcat/Jetty/Spring Boot *a definir*).
* **Base de datos**: SQL (MySQL/PostgreSQL *a definir*).
* **IA**: prototipos en Python o JS; integración vía API interna.

## Arquitectura

[Pendiente]

> **Nota**: El objetivo del curso es la UI; la arquitectura se mantendrá simple y bien documentada.

## Estructura del repositorio

[Pendiente]

---

## Primeros pasos

### Requisitos

* JDK **17+**
* **Maven** o **Gradle**
* **MySQL** o **PostgreSQL**
* Navegador moderno

### Base de datos

1. Crea la base de datos `trackit`.
2. Ejecuta `database/schema.sql` y luego `database/seed.sql`.

### Backend (Java)

**Maven**

```bash
cd backend
mvn clean package
mvn spring-boot:run  # si usan Spring Boot
```

**Gradle**

```bash
cd backend
./gradlew bootRun      # si usan Spring Boot
```

El backend se expone en `http://localhost:8080` (configurable con `PORT`).

### Frontend (HTML, CSS, JS)

Abrir `frontend/index.html` directamente o servir con un estático simple (por ejemplo `live-server` o `http-server`).

### Módulo de IA

* Prototipos en `ai/scripts/`.
* Exponer funciones como un *endpoint* interno o un servicio que el backend consuma.

---

## API (borrador)

**Productos**

* `GET /api/products` — lista productos
* `POST /api/products` — crea producto
* `GET /api/products/{id}` — detalle
* `PUT /api/products/{id}` — actualiza
* `DELETE /api/products/{id}` — elimina

**Ventas**

* `POST /api/sales` — registra venta
* `GET /api/sales?from=YYYY-MM-DD&to=YYYY-MM-DD` — reportes

**IA**

* `GET /api/ai/reorder-suggestions` — sugerencias de reposición


---

## Buenas prácticas

* Commits con **Conventional Commits** (`feat:`, `fix:`, `docs:`, `refactor:`…)
* Ramas: `main` (estable), `dev` (integración), `feature/*` (funcionalidades)
* **Lint** y formateo (Prettier/ESLint para JS; Checkstyle/Spotless para Java)
* Issues y tableros en **GitHub Projects** (To Do / Doing / Done)

---

## Contribuir

1. Haz *fork* del repositorio
2. Crea una rama `feature/nombre`
3. Envía *pull request* con descripción clara y capturas si aplica

---

## Licencia

Este proyecto está bajo la licencia **MIT**. Ver [LICENSE](./LICENSE) para más información.

---

## Créditos

* Equipo **Trackit** — Diseño de Interfaces de Usuario
* Íconos/recursos: ver carpeta `docs/` y licencias respectivas

---

## LICENSE (MIT)

```
MIT License

Copyright (c) 2025 Valentina Lopez & Camilo Prieto

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

---

### Extra: `.gitignore` sugerido

```
# Java
/target/
/build/
*.class
*.jar
*.war
*.ear

# Maven/Gradle
.mvn/
.settings/
.classpath
.project
.gradle/
**/build/

# IDEs
.vscode/
.idea/
*.iml

# Node (si se usa tooling en frontend)
node_modules/
package-lock.json
npm-debug.log*
yarn.lock

# Python (prototipos IA)
__pycache__/
*.pyc
.venv/

# OS
.DS_Store
Thumbs.db

# Entorno
.env
.env.*
