FROM node:12.18-alpine
# ENV NODE_ENV=production ←を削除
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
# RUN npm install --production --silent && mv node_modules ../ ←を下のよう変更する
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]
