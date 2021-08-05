DATA_ROOT=/kaggle/input/coco2017

cd coco

ln -s $DATA_ROOT/train2017 ./
ln -s $DATA_ROOT/val2017 ./
ln -s $DATA_ROOT/annotations ./

python3 1_split_filter.py /kaggle/input/coco2017
#python3 2_balance.py /kaggle/input/coco2017
python3 3_gen_support_pool.py /kaggle/input/coco2017
python3 4_gen_support_pool_10_shot.py /kaggle/input/coco2017
