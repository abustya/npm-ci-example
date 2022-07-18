FROM node:lts
MAINTAINER László Tóth

COPY app /www/app
COPY package.json /www
COPY package-lock.json /www

WORKDIR www

RUN npm config set update-notifier false && \
    npm ci --omit=dev --ignore-scripts

EXPOSE 3000

CMD ["node", "app/server.js"]
