#!/bin/sh

#cdn address
str="https://cdn.jsdelivr.net/gh/ZGGSONG/cdn/"
hexo="hexo"
blog="blog"
time=$(date "+%Y/%m/%d_%X")
i=1
while [ $i -eq 1 ]
do
	echo -e "\033[41;37m-------------\033[0m"
	echo -e "\033[41;37m添加文件(y/n)\033[0m"
	echo -e "\033[41;37m-------------\033[0m"
	read ans
	if [ $ans == y ]
	then
		open .
		open ~/gitR/cdn/
	else
		break
	fi
done

#推送仓库
echo -e "\033[42;37m---------------\033[0m" 
echo -e "\033[42;37m推送到仓库(y/n)\033[0m" 
echo -e "\033[42;37m---------------\033[0m" 
read git
if [ $git == y ]
then
	cd ~/gitR/cdn
	git add .
	git status
	git commit -m "update $time"
	git push
	echo -e "\033[42;37m推送成功 \033[0m" 
else
	echo -e "\033[41;36m取消推送 \033[0m" 
fi
exit 0
