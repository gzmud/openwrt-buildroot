FROM debian:stretch

RUN apt-get -q update && \
apt-get install -y build-essential libncurses5-dev gawk git \
    subversion libssl-dev gettext unzip zlib1g-dev file \
    python bash-completion nano && \
cd

ADD /script/ldcmd /root/ldcmd
WORKDIR /root/lede

CMD ["bash --init-file ../ldcmd"]
