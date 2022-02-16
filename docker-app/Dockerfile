#SOURCE node:14
##revisar bien la imagen de node a utilizar en dockerhub
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#### la manera en la que esta argumentado el COPY esta mak argumentado

COPY package*.json ./

# If you are building your code for production
# RUN npm ci --only=production

RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]

