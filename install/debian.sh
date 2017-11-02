#!/bin/bash
#调用安装脚本
echo "安装环境需要用到管理员权限。请在光标处输入root的密码"
su - root $(cd $(dirname $0); pwd)/debian_install.sh
./config.sh
echo "ALL DONE"