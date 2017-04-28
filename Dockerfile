# start with official build
FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

# expose the api port
EXPOSE 3000

# install vim
RUN ["apt-get", "update"]
RUN ["apt-get", "install", "-y", "vim"]

# start server
CMD [ "npm", "start" ]
