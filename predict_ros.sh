#!/usr/bin/env bash
# CUDA_VISIBLE_DEVICES=0 \
python predict_ros.py \
	--artifact_id ARTIFACT_ID \
	--pose_init_file POSE_INIT_FILE \
	--rgb_topic RGB_TOPIC \
	--depth_topic DEPTH_TOPIC \
	--artifacts_folder ARTIFACTS_FOLDER \
	--camera_frame_name CAMERA_FRAME_NAME \
	--object_frame_name OBJECT_FRAME_NAME \
