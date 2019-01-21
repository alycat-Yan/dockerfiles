#!/bin/bash
if [[ ! -f "/blog/config/config.yml" ]];then
	mkdir -p /temp
	cd /temp
	hexo init
	cp -r /temp/* /blog/ 
	mv /blog/_config.yml /blog/config/config.yml
	cd /blog
	rm -rf /temp
fi
hexo hook --config /blog/config/config.yml

