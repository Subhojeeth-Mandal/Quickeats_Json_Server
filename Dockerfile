FROM node:22.12-slim

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install --omit=dev

COPY db.json ./

EXPOSE 8000

CMD ["npx", "json-server", "db.json", "--host", "0.0.0.0", "--port", "8000"]