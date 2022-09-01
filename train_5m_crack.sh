source activate yolov5_obb
echo Current env : $CONDA_DEFAULT_ENV
echo Current env path : $CONDA_PREFIX
python train.py \
  --weights 'yolov5m.pt' \
  --data 'dataset/crack/data.yaml' \
  --hyp 'data/hyps/obb/hyp.finetune_dota.yaml' \
  --epochs 10000 \
  --batch-size 128 \
  --img 224 \
  --device 0,1 \
  --patience 300 \
  --name 'hazelnut_crack_224_run'
#  870cc68f3848eaaee11287ef56061f89ea8774df