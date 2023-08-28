# Usa una imagen oficial de Node.js como imagen base
FROM node:16

# Establece el directorio de trabajo en el contenedor como /app
WORKDIR /app

# Copia el contenido del directorio actual en el contenedor en /app
COPY . /app

# Instala los paquetes necesarios especificados en package.json
# (no tenemos ninguno para este servidor simple, pero es una buena práctica)
RUN npm init -y

# Hace que el puerto 3000 esté disponible fuera de este contenedor
EXPOSE 3000

# Define variables de entorno (Opcional, aquí puedes definir NODE_ENV u otras variables de entorno)
# ENV NAME World

# Ejecuta server.js cuando se inicie el contenedor
CMD ["node", "server.js"]
