# Getting a nodejs version 12 for ubuntu
FROM node:12

# Setting up app path in image
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# Setting up app path in environment variable
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# Copy Web App content in image
COPY ./test-application /usr/src/app

# Install npm and setup app
RUN npm install
RUN npm install -g @angular/cli@1.7.1

# Start angular app, will run on port 4200 by default
CMD ng serve --host 0.0.0.0
