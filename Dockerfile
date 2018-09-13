FROM node:9
MAINTAINER László Tóth

COPY app /www/app
COPY package.json /www
COPY package-lock.json /www

WORKDIR www

RUN npm set progress=false && \
    npm install --progress=false

EXPOSE 3000

CMD ["npm", "start"]
