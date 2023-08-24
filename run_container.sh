#!/usr/bin/env bash
DIR=$(pwd)/
xhost + && docker run -it --rm \
	-m 16g \
	--gpus all \
	--ipc=host \
	--network=host \
	--name se3_tracknet \
	--cap-add=SYS_PTRACE \
	--security-opt seccomp=unconfined \
	-e GIT_INDEX_FILE \
	-e DISPLAY=${DISPLAY} \
	-e NVIDIA_DISABLE_REQUIRE=1 \
	-v /tmp:/tmp \
	-v $DIR:/home/se3_tracknet \
	wenbowen123/se3_tracknet bash
