FROM node:18-alpine

# de mi contenedor vamos a trabajar con la carpeta app
WORKDIR /app 

# vamos a copiar los .json a la carpeta app 
COPY package.json package-lock.json ./ 

# 
RUN npm install

# vamos a copiar todos los archivos que estan en la raiz
COPY . .

# Exponemos el puerto que utilizamos, en este caso es el 3000. Ahi es donde va a correr la aplicacion
EXPOSE 3000

# run varios, cmd solo uno.
CMD ["node", "app.js"]
