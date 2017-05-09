FROM zenika/alpine-node

RUN npm install -g yarn

ONBUILD COPY package.json yarn.lock /usr/src/app/
ONBUILD RUN yarn 
ONBUILD COPY . /usr/src/app

CMD [ "yarn", "start" ]
