FROM zenika/alpine-node

RUN npm install -g yarn

RUN adduser -D foo
RUN chown -R foo /home/foo
RUN chown -R foo /usr/src/app

USER foo
ONBUILD COPY . /usr/src/app

CMD [ "yarn", "start" ]
