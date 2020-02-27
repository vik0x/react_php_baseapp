FROM node

WORKDIR /var/www/front
COPY package-lock.json package.json ./

RUN apt update -y && apt upgrade -y
RUN node -v && npm -v

COPY . /var/www/front
RUN npm install

EXPOSE 4000
CMD npm run start