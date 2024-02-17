FROM node:21.6.2-alpine3.18

WORKDIR /app

RUN npm i -g xunit-viewer

CMD ["sleep", "infinity"]
