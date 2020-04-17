FROM node:8.11.3-alpine

# RUN apk --update add tzdata \
#     && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
#     && echo "Asia/Shanghai" > /etc/timezone \
#     && apk del tzdata

RUN mkdir -p /usr/local/workspace/egg-vue-docker

WORKDIR /usr/local/workspace/egg-vue-docker

# add npm package
COPY package.json /usr/local/workspace/egg-vue-docker/package.json

RUN npm i --registry=https://registry.npm.taobao.org

# copy code
COPY . /usr/local/workspace/egg-vue-docker

EXPOSE 7001

CMD npm start