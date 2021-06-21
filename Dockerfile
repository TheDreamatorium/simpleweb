# Specify a base image
FROM node:alpine
# Set the working directory for the project
WORKDIR /usr/app

# Copy package.json to working directory
COPY ./package.json ./

# install dependencies from package.json
RUN npm install

# Copy project to working directory
# copy separately to prevent rebuilds
COPY ./ ./

CMD ["npm", "start"]