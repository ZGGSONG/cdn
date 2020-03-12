#!/bin/bash

echo -e "\n- $1: https://cdn.jsdelivr.net/gh/ZGGSONG/cdn@master/hexo/$1" >> README.md

echo "添加完成"

git add .

git commit -m "add $1"

git push origin master

echo "提交完成"

echo -e "\n https://cdn.jsdelivr.net/gh/ZGGSONG/cdn@master/hexo/$1"

exit 0
