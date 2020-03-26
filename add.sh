#!/bin/sh

#cdn address
str="https://cdn.jsdelivr.net/gh/ZGGSONG/cdn/"
hexo="hexo"
blog="blog"
i=1
while [ $i -eq 1 ]
do
	echo -e "\033[41;37m================ \033[0m"
	echo -e "\033[41;37m添加文件(y/n)? \033[0m"
	read ans
	if [ $ans == y ]
	then
		echo "请输入文件名:"
		read filename
		echo "存放至哪个目录下(h/b)"
		read choice
		case "$choice" in
			'h'|'H'|'hexo'|'HEXO')
				echo - $filename: $str$hexo'/'$filename >> ~/gitR/cdn/hexo/README.md
				mv ./$filename ~/gitR/cdn/hexo/
				;;
			'b'|'B'|'blog'|'BLOG')
				echo - $filename: $str$blog'/'$filename >> ~/gitR/cdn/blog/README.md
				mv ./$filename ~/gitR/cdn/blog/
		esac
	else
		break
	fi
done

#推送仓库
echo -e "\033[42;37m推送到仓库？(y/n) \033[0m" 
read git
if [ $git == y ]
then
	cd ~/gitR/cdn
	git add .
	git commit -m "update"
	git push origin master
	echo -e "\033[42;37m推送成功 \033[0m" 
else
	echo -e "\033[41;36m取消推送 \033[0m" 
fi
