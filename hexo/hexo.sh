#!/bin/bash
workDir=/blog
cd $workDir
hexo init 
mkdir /blog/config
mv /blog/_config.yml /blog/config/config.yml
  # install plugins for hexo
hexo g -dw --config /blog/config/config.yml
