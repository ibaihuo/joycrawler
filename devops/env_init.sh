#!/bin/bash
######################################################################
## Filename:      env_init.sh
##                
## Copyright (C) 2014,  renewjoy
## Version:       
## Author:        renewjoy <oyea9le@gmail.com>
## Created at:    Mon Sep 22 22:51:21 2014
##                
## Modified by:   renewjoy <oyea9le@gmail.com>
## Modified at:   Mon Sep 22 23:31:10 2014
## Description:   环境初始化脚本
##                
######################################################################

# for lxml
sudo apt-get install libffi-dev libxml2-dev libxslt1-dev

# for mysql
sudo apt-get install mysql-server mysql-client

# for mysql-python
sudo apt-get install libmysqld-dev libmysqlclient-dev

# 创建库
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS joycrawler; show databases;"

ENV_DIR=~/Templates/gpjenv
virtualenv ${ENV_DIR}

source ${ENV_DIR}/bin/acvivate

cd ${ENV_DIR}/devops
pip install -r requirements.txt -i http://pypi.douban.com/simple/
