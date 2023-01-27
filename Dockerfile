FROM node:lts-buster-slim
ENV NODE_OPTIONS=--openssl-legacy-provider
ENV CI = 'true' 
RUN mkdir /usr/src/Test
COPY ./ /usr/src/Test
WORKDIR /usr/src/Test
EXPOSE 3000
CMD npm install && npm run build && npm start