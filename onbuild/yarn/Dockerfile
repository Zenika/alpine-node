FROM zenika/alpine-node

RUN npm install -g yarn

# hack for the issue: https://github.com/yarnpkg/yarn/issues/918
# create a fake user to handle yarn cache process
RUN adduser -D foo
RUN chown -R foo /home/foo
RUN chown -R foo /usr/src/app

USER foo
# end hack https://github.com/yarnpkg/yarn/issues/918

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN yarn --pure-lockfile
ONBUILD COPY . /usr/src/app

CMD [ "yarn", "start" ]
