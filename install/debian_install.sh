#!/bin/bash
# 更新系统到最新
apt-get update -y
apt-get upgrade -y
# 安装一些需要的工具
apt-get install wget
apt-get install net-tools
# 安装i3桌面
apt-get install i3 -y
apt-get install i3status -y
apt-get install i3lock -y
# 安装X11环境
apt-get install xserver-xorg -y
apt-get install xinit -y
apt-get install x11-xserver-utils -y
# 安装字体，否则某些软件的汉字会显示问号
#!/bin/bash
apt-get install ttf-wqy-zenhei -y
# 安装字符界面的浏览器
apt-get install w3m -y
apt-get install lynx -y
# 安装桌面环境下的浏览器
apt-get install qupzilla -y
apt-get install midori -y
# 安装xterm，用于替换默认的桌面环境下的控制台
apt-get install xterm -y
# 安装编辑器
apt-get install vim -y
apt-get install gvim-gtk -y
apt-get install emacs -y
# 安装git。普通环境下用户安装vim插件
apt-get install git -y
# 安装输入法
apt-get install fcitx -y
apt-get install fcitx-sunpinyin -y
apt-get install fcitx-libpinyin -y
apt-get install fcitx-googlepinyin -y
# 安装pdf阅读器
apt-get install zathura
apt-get install evince

# 配置vim插件
vundle=/usr/share/vim/vundle
if [ -d "$vundle" ] 
then
	rm -rf $vundle
fi
git clone https://github.com/gmarik/vundle.git $vundle
echo -e "filetype off\n\tset rtp+=/usr/share/vim/vundle\ncall vundle#rc()\nlet g:mkdp_path_to_chrome = \"mifori\"\nBundle 'plasticboy/vim-markdown'\nBundle 'iamcco/markdown-preview.vim'\nBundle 'iamcco/mathjax-support-for-mkdp'\nBundle 'tpope/vim-fugitive'" > /etc/vim/vimrc.local
# 下载xterm的配置文件。主要是修改了xterm的配色
wget https://raw.githubusercontent.com/mmCAtE/Arcee/master/install/XTerm-color -O /etc/X11/app-defaults/XTerm-color

echo "INTALL DONE"