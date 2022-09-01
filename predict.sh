source activate yolov5_obb
echo Current env : $CONDA_DEFAULT_ENV
echo Current env path : $CONDA_PREFIX
python val.py \
 --data 'dataset/crack/data.yaml' \
 --weights 'runs/train/hazelnut_crack_224_x6_run2/weights/best.pt' \
 --batch-size 4 --img 256 --task 'val' --device 0,1 --save-json --name 'hazelnut_crack_224_x6_val'