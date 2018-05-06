FROM debian:stretch

RUN apt-get -q update && \
apt-get install -y build-essential libncurses5-dev gawk git \
    subversion libssl-dev gettext unzip zlib1g-dev file \
    python bash-completion nano && \
cd && \
git clone https://github.com/openwrt/openwrt.git lede && \
cd lede && \
./scripts/feeds update -a && \
./scripts/feeds install -a

WORKDIR ~/lede
CMD ["bash"]
