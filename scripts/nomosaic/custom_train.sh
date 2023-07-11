#!/bin/bash

echo "Training YOLOv7"
# Variables
num_epochs=80
batch_size=4

data="./hyp/data/SeaDronesSee_real.yaml"
config="./hyp/cfg/yolov7_SeaDronesSee_real.yaml"
weights="./yolov7_training.pt"

hyper="./hyp/hyp/hyp_evolved_nomoisaic.yaml"

###############
# ANGLE
###############
python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_angle_nomoisaic_8_5e-3 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --angle_alpha 0.005

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_angle_nomoisaic_8_1e-3 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --angle_alpha 0.001

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_angle_nomoisaic_28_5e-3 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 28 \
    --angle_alpha 0.005

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_angle_nomoisaic_28_1e-3 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 28 \
    --angle_alpha 0.001

###############
# ALTITUDE
###############
python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_altitude_nomoisaic_8_5e-3 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --altitude_alpha 0.005

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_altitude_nomoisaic_8_1e-3 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --altitude_alpha 0.001


python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_altitude_nomoisaic_28_5e-3 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 28 \
    --altitude_alpha 0.005

python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_altitude_nomoisaic_28_1e-3 \
    --project results_nomosaic \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 28 \
    --altitude_alpha 0.001