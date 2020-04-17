#! /bin/bash

npm run tsc
npm run build

docker build -t egg-vue-docker .

docker run -d --name egg-vue-docker -p 7002:7001 egg-vue-docker