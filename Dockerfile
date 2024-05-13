# source image

FROM node:20-alpine

# set working directory

WORKDIR /the/workdir/path

# copy package and lock files

COPY package.json .
COPY package-lock.json .

# install via NPM

RUN npm install -

# copy application files

COPY . .

# expose / open port 7775

EXPOSE 7775

# run the application

CMD ["npm", "run", "start"]