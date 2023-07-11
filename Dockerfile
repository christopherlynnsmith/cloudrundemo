FROM docker.io/library/node:14 AS build
 
COPY * /app/
 
WORKDIR /app
 
# Where does npm install run?
RUN npm install
 
ENTRYPOINT [ "npm", "start" ]