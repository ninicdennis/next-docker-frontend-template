
FROM node:10

WORKDIR /usr/src/app/

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000
# hot reload port
EXPOSE 49153 

CMD ["npm", "run", "dev"]