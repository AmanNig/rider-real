FROM node:18


COPY package.json package-lock.json ./
RUN npm install
RUN npm install socket.io

COPY . .

# If using TypeScript:
# RUN npm run build

EXPOSE 4000

CMD ["node", "server.js"]
# Or if you're using a start script:
# CMD ["npm", "start"]
