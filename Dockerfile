# Imagen base con Node.js
FROM node:lts-alpine

# Instala Angular CLI
RUN npm install -g @angular/cli@latest

# Define el directorio de trabajo dentro del contenedor
WORKDIR /app

# Instala las dependencias si existe un package.json (para futuros builds)
COPY package.json package-lock.json ./
RUN if [ -f package.json ]; then npm install; fi

# Expone el puerto 4200 para ng serve
EXPOSE 4200

# Comando por defecto (para desarrollo)
CMD ["ng", "serve", "--host", "0.0.0.0", "--disable-host-check"]
