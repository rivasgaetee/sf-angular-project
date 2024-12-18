# Variables
DOCKER_COMPOSE = docker-compose
SERVICE = angular-dev

# Ayuda (lista todos los comandos disponibles)
.PHONY: help
help:
	@echo "Comandos disponibles:"
	@echo "  make dev           - Levanta el entorno de desarrollo (ng serve)"
	@echo "  make prod          - Genera el build de producción"
	@echo "  make deploy        - Genera el build y lo despliega en el contenedor"
	@echo "  make shell         - Accede al terminal del contenedor Docker"
	@echo "  make logs          - Muestra los logs del contenedor"
	@echo "  make test          - Ejecuta pruebas de Angular"
	@echo "  make stop          - Detiene todos los contenedores"

# Modo desarrollo
.PHONY: dev
dev:
	@$(DOCKER_COMPOSE) up --build

# Generar build de producción
.PHONY: prod
prod:
	@$(DOCKER_COMPOSE) run --rm $(SERVICE) ng build --configuration production

# Generar y desplegar en producción
.PHONY: deploy
deploy:
	@$(DOCKER_COMPOSE) down
	@$(DOCKER_COMPOSE) up --build

# Acceder al terminal dentro del contenedor
.PHONY: shell
shell:
	@$(DOCKER_COMPOSE) exec $(SERVICE) sh

# Mostrar logs del contenedor
.PHONY: logs
logs:
	@$(DOCKER_COMPOSE) logs -f $(SERVICE)

# Ejecutar pruebas unitarias
.PHONY: test
test:
	@$(DOCKER_COMPOSE) run --rm $(SERVICE) ng test --watch=false --browsers ChromeHeadless

# Detener todos los contenedores
.PHONY: stop
stop:
	@$(DOCKER_COMPOSE) down