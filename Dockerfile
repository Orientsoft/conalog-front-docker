# Version: beta1
FROM node:4
MAINTAINER Xie Di "xiedi@orientsoft.cn"
RUN npm i -g gulp
EXPOSE 9527
ENTRYPOINT ["node", "/conalog-front/bin/www"]
