# Imagen base Node
FROM node:18

# Carpeta de trabajo
WORKDIR /app

# Copiar package.json
COPY package.json .

# Instalar dependencias
RUN npm install

# Copiar todos los files restantes
COPY . .

# Puerto
EXPOSE 8080

CMD ["node", "index.js"]
