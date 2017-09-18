#! /usr/local/bin/zsh

IFS_bak=$IFS
IFS=$'\n'

num_img=$(ls -1 | grep img | grep jpg | wc -l)
echo '適応済みファイル数' + $num_img
num_cvt=$(ls -1 | grep -v img | wc -l)
echo '未適応済みファイル数' + $num_cvt
cvt_files=($(ls | grep -v img))
for i in ${cvt_files[@]}
	do
		((num_img++))
		mv $i "img${num_img}.jpg"
	done
