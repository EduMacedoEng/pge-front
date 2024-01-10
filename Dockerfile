# Usar a imagem oficial do Node.js como a imagem base
FROM node:16.10.0

# Definir o diretório de trabalho dentro do container para /app
WORKDIR /app

# Copiar o package.json e o package-lock.json (se disponível)
COPY package.json package-lock.json* ./

# Instalar as dependências do projeto
RUN npm install

# Copiar os arquivos do projeto para o diretório de trabalho
COPY . .

# Expor a porta 4200, que é a porta padrão que o servidor do Angular usa
EXPOSE 4200

# Iniciar o servidor de desenvolvimento do Angular
CMD ["npm", "start"]
