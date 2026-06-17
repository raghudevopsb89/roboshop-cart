FROM node:20-alpine
WORKDIR /app
COPY package.json server.js metrics.js ./
RUN npm install --production
EXPOSE 8003
CMD ["node", "server.js"]
