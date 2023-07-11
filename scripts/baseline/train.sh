#!/bin/bash

echo "Training YOLOv7"
# Variables
num_epochs=20
batch_size=16

data="./hyp/data/SeaDronesSee_real.yaml"
config="./hyp/cfg/yolov7_SeaDronesSee_real.yaml"
weights="./yolov7_training.pt"

#########################
# Default
#########################
hyper="./hyp/hyp/hyp.scratch.default.yaml"
python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_default-seed0 \
    --project results_baseline \
    --weights $weights \
    --cache-images \
    --seed 0

python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_default-seed42 \
    --project results_baseline \
    --weights $weights \
    --cache-images \
    --seed 42

python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_default-seed821 \
    --project results_baseline \
    --weights $weights \
    --cache-images \
    --seed 821

python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_default-seed1765 \
    --project results_baseline \
    --weights $weights \
    --cache-images \
    --seed 1765

#########################
# Evolved
#########################
hyper="./hyp/hyp/hyp_evolved.yaml"
python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_evolved-seed0 \
    --project results_baseline \
    --weights $weights \
    --cache-images \
    --seed 0

python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_evolved-seed42 \
    --project results_baseline \
    --weights $weights \
    --cache-images \
    --seed 42

python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_evolved-seed821 \
    --project results_baseline \
    --weights $weights \
    --cache-images \
    --seed 821

python3 ./baseline/train.py \
    --workers 4 \
    --device 0 \
    --batch-size $batch_size \
    --epochs $num_epochs \
    --img-size 640 \
    --data $data \
    --hyp $hyper \
    --cfg $config \
    --name baseline_evolved-seed1765 \
    --project results_baseline \
    --weights $weights \
    --cache-images \
    --seed 1765
    