#!/bin/bash
#调用安装脚本
su - root $(cd $(dirname $0); pwd)/debian_install.sh
./config.sh
echo "ALL DONE"