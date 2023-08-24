CUDA_VISIBLE_DEVICES=0 \
python predict.py \
  --train_data_path ./train_data/cracker_box/train_data_blender_cycles \
  --ckpt_dir ./weights/YCB_weights/cracker_box/model_best_val.pth.tar \
  --mean_std_path ./weights/YCB_weights/cracker_box \
  --class_id 2 \
  --ycb_dir ./YCB \
