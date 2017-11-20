FROM node:8

RUN set -ex \
	&& echo "Asia/Shanghai" > /etc/timezone \
	&& dpkg-reconfigure -f noninteractive tzdata \
    && apt-get update \
    && apt-get install -y git-all vim

WORKDIR /opt

RUN git clone https://github.com/xzdbd/hugo-blog-theme.git \
    && npm install grunt-cli -g \
    && cd hugo-blog-theme \
    && npm install

