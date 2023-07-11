#!/bin/bash
echo "Training YOLOv7"

# Variables
num_epochs=12
batch_size=2

data="./hyp/data/SeaDronesSee_real.yaml"
config="./hyp/cfg/yolov7_SeaDronesSee_real.yaml"
weights="./yolov7_training.pt"

hyper="./hyp/hyp/hyp_evolved.yaml"

###################
# Every 8 epochs
###################
python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_angle_8epochs_1e-3 \
    --project results_angle \
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
    --name custom_angle_8epochs_5e-3 \
    --project results_angle \
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
    --name custom_angle_8epochs_1e-2 \
    --project results_angle \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 8 \
    --angle_alpha 0.01

###################
# Every 4 epochs
###################
python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_angle_4epochs_1e-3 \
    --project results_angle \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 4 \
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
    --name custom_angle_4epochs_5e-3 \
    --project results_angle \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 4 \
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
    --name custom_angle_4epochs_1e-2 \
    --project results_angle \
    --weights $weights \
    --cache-images \
    --seed 0 \
    --interval 4 \
    --angle_alpha 0.01

# ########################
# # BEST RUN
# ########################
python3 ./adapt/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name custom_angle_best-seed42 \
    --project results_angle \
    --weights $weights \
    --cache-images \
    --seed 42 \
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
    --name custom_altitude_angle-seed821 \
    --project results_angle \
    --weights $weights \
    --cache-images \
    --seed 821 \
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
    --name custom_angle_best-seed1765 \
    --project results_angle \
    --weights $weights \
    --cache-images \
    --seed 1765 \
    --interval 8 \
    --altitude_alpha 0.005
    