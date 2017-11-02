#!/bin/bash
#echo "filetype off" >> /etc/vim/vimrc.local
#echo "    set rtp+=/usr/share/vim/vundle" >> /etc/vim/vimrc.local
#echo "call vundle#rc()" >> /etc/vim/vimrc.local
#echo "let g:mkdp_path_to_chrome = \"mifori\"" >> /etc/vim/vimrc.local
#echo "Bundle 'plasticboy/vim-markdown'" >> /etc/vim/vimrc.local
#echo "Bundle 'imacco/markdown-preview.vim'" >> /etc/vim/vimrc.local
#echo "Bundle 'iamcco/mathjax-support-for-mkdp'" >> /etc/vim/vimrc.local
#echo "Bundle 'tpope/vim-fugitive" >> /etc/vim/vimrc.local
# 配置i3桌面
cd
pwd
echo "exec i3" > .xinitrc
# 下载一个默认的图片作为桌面图片
wget https://github.com/mmCAtE/Arcee/blob/master/install/bg.jpg -O .bg.jpg
# 如果.config目录不存在则创建.config以及.config/i3
if [ ! -d ".config" ]
then
	mkdir ".config"
	mkdir ".config/i3"
elif [ ! -d ".config/i3" ]
then
	mkdir ".config/i3"
else
	echo "All dir exists"
fi
# 下载i3的配置文件
wget https://raw.githubusercontent.com/mmCAtE/Arcee/master/install/i3/config -O .config/i3/config
wget https://raw.githubusercontent.com/mmCAtE/Arcee/master/install/i3/i3status.conf -O .config/i3/i3status.conf
#echo "exec fcitx" >> ".config/i3/config"
#echo "exec --no-startup-id feh --bg-scale .bg.jpg" >> ".config/i3/config"
# 获取i3的版本字符串
#ver=$(i3 -version)
# 从i3的版本字符串中截取字符串数字
#ver=$(expr substr "$ver" 12 1)
#echo $ver
# i3的配置文件可能存在于两个不同的目录
# 高版本使用.config/i3作为配置文件目录
#if [ $ver \> 2 ]
#then
#	mkdir .config
#	mkdir .config/i3
	# 启动桌面时自动启动输入法
#	echo "exec fcitx" >> ".config/i3/config"
	# 设置桌面背景图片
#	echo "exec --no-startup-id feh --bg-scale .bg.jpg" >> ".config/i3/config"
# 低版本使用.i3作为配置文件目录
#else
#	mkdir .i3
	# 启动桌面时自动启动输入法
#	echo "exec fcitx" >> ".i3/config"
	# 设置桌面背景图片
#	echo "exec --no-startup-id feh --bg-scale .bg.jpg" >> ".i3/config"
#fi

echo "CONFIG DONE"