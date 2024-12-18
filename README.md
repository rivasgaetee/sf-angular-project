# Proyecto Angular con Docker y Makefile

Este proyecto es una aplicación Angular que se ejecuta y desarrolla dentro de un contenedor Docker.
Cuenta con soporte para entornos de desarrollo (ng serve), producción (ng build + NGINX) y herramientas adicionales
para facilitar el trabajo a futuros desarrolladores.

---

## 📦 Requisitos Previos

Antes de comenzar, asegúrate de tener instalados los siguientes programas en tu sistema:

1. **Docker**: https://www.docker.com/get-started
2. **Docker Compose**: https://docs.docker.com/compose/
3. **Make**:
  - Linux/macOS: Viene preinstalado o se puede instalar fácilmente.
  - Windows:
    - Git Bash (viene con `make`): https://git-scm.com/
    - WSL (Windows Subsystem for Linux): https://docs.microsoft.com/en-us/windows/wsl/
    - Chocolatey: `choco install make`

---

## 🚀 Instalación y Configuración del Proyecto

1. **Clona el repositorio**:
   ```bash
   git clone <url-del-repositorio>
   cd <nombre-del-repositorio>
   
2. **Levanta el entorno de desarrollo:**
   ```bash
   make dev
   ```
   Esto construirá la imagen Docker y ejecutará el servidor de desarrollo Angular (ng serve) en el puerto 4200.

---

## 🛠️ Comandos Disponibles con Makefile

### 1. **Levantar entorno de desarrollo**:
   ```bash
   make dev
   ```
   Accede a la aplicación en:
   ```bash
   http://localhost:4200
   ```

### 2. **Generar Build de Producción**:
   Genera la versión optimizada de la aplicación Angular en la carpeta dist/.
   ```bash
   make dev
   ```

### 3. **Desplegar la Aplicación en Producción**:
   ```bash
   make deploy
   ```
   Accede a la aplicación en:
   ```bash
   http://localhost:8080
   ```

### 4. **Acceder al Contenedor Docker (Shell)**:
Abre una terminal dentro del contenedor Docker para instalar dependencias o depurar.
   ```bash
   make shell
   ```

### 5. **Ver Logs del Contenedor**:
Muestra los logs en tiempo real del contenedor.
   ```bash
   make logs
   ```

### 6. **Ejecuta pruebas unitarias (TODO)**:
Ejecuta las pruebas unitarias de Angular en modo Headless (Chrome sin interfaz). (TODO)
   ```bash
   make test
   ```

### 7. **Detener los Contenedores**:
Detiene y elimina los contenedores.
   ```bash
   make stop
   ```

---

## 🐳 Estructura del Proyecto
  ```
  .
├── Dockerfile                # Archivo para construir la imagen Docker
├── docker-compose.yml        # Configuración de Docker Compose
├── Makefile                  # Comandos de automatización
├── nginx.conf                # Configuración de NGINX para producción
├── package.json              # Dependencias del proyecto Angular
├── src/                      # Código fuente de Angular
├── angular.json              # Configuración de Angular CLI
└── README.txt                # Documentación del proyecto
```

