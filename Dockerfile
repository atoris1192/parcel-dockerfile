# hub.docker.comから公式で用意されたイメージをベースとする
FROM node:10.13-alpine

RUN ["apk", "upgrade"]
RUN ["apk", "update"]

# カレントディレクトリを app に
WORKDIR /app
RUN ["npm", "init", "-y"]
RUN ["npm", "install", "yarn"]
RUN ["yarn", "add", "parcel-bundler"]
RUN ["yarn", "add", "pug"]
RUN ["yarn", "add", "typescript"]
RUN ["yarn", "add", "stylus"]
# デフォルトで node が起動するので sh を代わりに起動
CMD ["sh"]

