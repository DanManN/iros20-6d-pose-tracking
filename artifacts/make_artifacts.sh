for x in $(ls ../YCB/CADmodels/)
do
	NUM=$(expr ${x:0:3} + 0)
	NAME=${x:4}
	echo $NUM
	echo $NAME
	echo "mkdir -p artifacts-$NUM/code_backup$NUM/"
	mkdir -p artifacts-$NUM/code_backup$NUM/
	echo "cp ../train_data/$NAME/dataset_info.yml artifacts-$NUM/code_backup$NUM/"
	cp ../train_data/$NAME/dataset_info.yml artifacts-$NUM/code_backup$NUM/
	echo "cp ../weights/YCB_weights/$NAME/* artifacts-$NUM/"
	cp ../weights/YCB_weights/$NAME/* artifacts-$NUM/
done
