FROM node:latest
ENV LANG C.UTF-8
MAINTAINER Alycat Lee, lucas@alycat.cn
LABEL author=alycat email=lucas@alycat.cn site=https://www.alycat.cn version="1.0"
RUN npm install hexo-cli -g
WORKDIR /blog
ADD hexo.sh /root/
VOLUME ["/blog/source/_posts","/blog/public","/blog/config","/blog/themes"]
ENTRYPOINT ["/bin/bash","/root/hexo.sh"]
