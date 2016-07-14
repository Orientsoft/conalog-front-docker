# Version: beta2
FROM node:4
MAINTAINER Xie Di "xiedi@orientsoft.cn"
RUN apt-get update
RUN apt-get install -y libtool pkg-config build-essential autoconf automake uuid-dev
RUN git clone https://github.com/zeromq/libzmq
WORKDIR /libzmq
RUN ./autogen.sh
RUN ./configure
RUN make
RUN make install
RUN ldconfig
WORKDIR /
RUN npm config set registry https://registry.npm.taobao.org
RUN npm i -g gulp
EXPOSE 9527
ENTRYPOINT ["node", "/conalog-front/bin/www"]
