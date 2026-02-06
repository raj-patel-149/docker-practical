FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install --production

COPY . .

ENV PORT=5006

EXPOSE 5006

CMD ["npm", "start"]
