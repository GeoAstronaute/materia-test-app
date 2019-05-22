FROM node:alpine
MAINTAINER me@company.com

RUN mkdir -p /app

# invalidate cache
RUN uptime

COPY . /app

WORKDIR /app

RUN npm install

ENV MATERIA_MODE production

EXPOSE 8080
CMD ["npm", "start"]