# Utiliza una imagen base de Node.js
FROM node:14

# Establece el directorio de trabajo en la imagen
WORKDIR /usr/src/app

# Copia los archivos package.json y package-lock.json a la imagen
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto de los archivos de la aplicación a la imagen
COPY . .

# Expone el puerto 3000 (o el puerto que utilice tu aplicación)
EXPOSE 3000

# Comando para iniciar la aplicación
CMD [ "npm", "start" ]