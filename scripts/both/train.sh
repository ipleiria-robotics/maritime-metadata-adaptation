#!/bin/bash
echo "Training YOLOv7"

# Variables
num_epochs=20
batch_size=4

data="./hyp/data/SeaDronesSee_real.yaml"
config="./hyp/cfg/yolov7_SeaDronesSee_real.yaml"
weights="./yolov7_training.pt"

hyper="./hyp/hyp/hyp_evolved.yaml"

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom8_1e-3_angle_1e-3 \
    --project results_both \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --altitude_alpha 0.001 \
    --angle_alpha 0.001 \

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom8_1e-3_angle_5e-3 \
    --project results_both \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --altitude_alpha 0.001 \
    --angle_alpha 0.005 \

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom8_5e-3_angle_5e-3 \
    --project results_both \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --altitude_alpha 0.005 \
    --angle_alpha 0.005 \

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom8_5e-3_angle_1e-3 \
    --project results_both \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --altitude_alpha 0.005 \
    --angle_alpha 0.001 \

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom8_5e-4_angle_5e-4 \
    --project results_both \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --altitude_alpha 0.0005 \
    --angle_alpha 0.0005 \