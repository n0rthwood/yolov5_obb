python train.py \
  --weights 'yolov5m.pt' \
  --data 'dataset/hazelnut/data.yaml' \
  --hyp 'data/hyps/obb/hyp.finetune_dota.yaml' \
  --epochs 10000 \
  --batch-size 128 \
  --img 224 \
  --device 0 \
  --name 'hazelnut_224_run'
#  870cc68f3848eaaee11287ef56061f89ea8774df