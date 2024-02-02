# specifiy a base image 
FROM node:alpine


# install some dependencies
WORKDIR /usr/app
COPY ./package.json ./
RUN npm install 
COPY ./ ./

# command to run on a container 
CMD ["npm", "start"]
