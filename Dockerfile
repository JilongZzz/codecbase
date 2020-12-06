# FROM ubuntu:16.04
# # WORKDIR /src
# RUN sed -i "s/archive.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
#   sed -i "s/security.ubuntu.com/mirrors.aliyun.com/g" /etc/apt/sources.list && \
#   apt update
# RUN apt-get install -y build-essential cmake
# RUN apt-get install -y vim
FROM cpp:base
WORKDIR /src
ENV TZ=Asia/Shanghai \
    DEBIAN_FRONTEND=noninteractive

RUN apt update \
    && apt install -y tzdata \
    && ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime \
    && echo ${TZ} > /etc/timezone \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/*
RUN apt-get update && apt-get install -y gdb
RUN apt install -y rsync
CMD [ "tail","-f","/dev/null" ]
