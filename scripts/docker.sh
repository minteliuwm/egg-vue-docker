#! /bin/bash

npm run tsc
npm run build

# 停止服务
docker stop egg-vue-docker

# 构建镜像
docker build -t egg-vue-docker .

# 启动服务
docker run --rm=true -d --name egg-vue-docker -p 7002:7001 egg-vue-docker

# 删除 id 为 none 的镜像
docker rmi $(docker images | grep "^<none>" | awk "{print $3}")