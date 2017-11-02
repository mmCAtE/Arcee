echo -e "选择使用的包管理器：\n 1.apt \n 2. yum \n 3. pacman \n 4. ..."
read -n 1 -s pak
echo $pak
echo -e "选择要配置的桌面环境：\n 1. i3wm \n 2. awesome"
read -n 1 -s key
echo $key

if [ $pak -eq 1 -a $key -eq 1 ]
then
	./debian.sh
fi