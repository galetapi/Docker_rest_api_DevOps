FROM node

# Define default ports and host for app and db || Definir puertos y host predeterminados para la aplicación y la base de datos
ARG app_port=3000
ARG db_host=mysql_db
ARG db_port=3306

# Add important environment variables that the server consumes || Agregar variables de entorno importantes que consume el servidor
ENV APP_PORT=${app_port}
ENV DB_HOST=${db_host}}
ENV DB_PORT=${db_port}}

# Add dependencies for the node modules (to be installed) || Agregar dependencias para los módulos del nodo (a instalar)
COPY ["package.json", "package-lock.json", "/usr/src/"]

# Specify working directory for the container || Especifique el directorio de trabajo para el contenedor
WORKDIR /usr/src

# Install node dependencies via npm
RUN npm install

# Add main app functionalities || Agregar funcionalidades principales de la aplicación
COPY ["app.js", "/usr/src/"]
COPY ["./config/db.config.js", "/usr/src/config/"]
COPY ["./db/model.js", "/usr/src/db/"]
COPY ["./routes/developers.js", "/usr/src/routes/"]

EXPOSE ${app_port}

CMD ["node", "app.js"]
