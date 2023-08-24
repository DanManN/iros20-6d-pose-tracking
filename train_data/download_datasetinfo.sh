#!/usr/bin/env bash
URL='https://archive.cs.rutgers.edu/archive/a/2020/pracsys/Bowen/iros2020/YCB_traindata/'
for x in $(rclone lsf --http-url $URL :http: 2> /dev/null)
do
	NAME=${x:0:-7}
	if [ ! -d $NAME ]
	then
		echo "curl -o - $URL$x | tar -xz $NAME/dataset_info.yml"
		curl -o - $URL$x | tar -xz $NAME/dataset_info.yml
	fi
	echo "sed -i 's#/media/.*/YCB_Video_Dataset#/home/se3_tracknet/YCB#' $NAME/dataset_info.yml"
	sed -i 's#/media/.*/YCB_Video_Dataset#/home/se3_tracknet/YCB#' $NAME/dataset_info.yml
done
