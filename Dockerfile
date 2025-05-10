FROM node:18

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

# If using TypeScript:
# RUN npm run build

EXPOSE 4000

CMD ["node", "server.js"]
# Or if you're using a start script:
# CMD ["npm", "start"]
