FROM node:20-alpine

WORKDIR /app
ENV NODE_ENV=development

COPY package*.json ./
RUN npm install --prefer-offline --no-audit --no-fund || npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev"]
