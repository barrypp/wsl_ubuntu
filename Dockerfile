FROM ubuntu:21.10

LABEL authors="Barrypp.zzx"
LABEL description="for wsl"

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && apt-get install -y \
 nano rsync socat xz-utils \
 git gcc g++ gdb \
 iperf iperf3 iproute2 iputils-ping traceroute \
 openssh-server \
 && apt-get autoclean && rm -rf /var/lib/apt/lists/*

WORKDIR /root