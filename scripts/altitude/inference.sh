#!/bin/bash
box_confidence=0.25

pretrained_path="/home/samuh/Desktop/results_altitude/custom_altitude_8epochs_1e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude-e8_1e-3" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_altitude/custom_altitude_8epochs_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude-e8_5e-3" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_altitude/custom_altitude_8epochs_1e-2/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude-e8_1e-2" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_altitude/custom_altitude_4epochs_1e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude-e4_1e-3" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_altitude/custom_altitude_4epochs_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude-e4_5e-3" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_altitude/custom_altitude_4epochs_1e-2/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude-e4_1e-2" \
    --save-txt

## BEST RUNS
pretrained_path="/home/samuh/Desktop/results_altitude/custom_altitude_best-seed42/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude_best-seed42" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_altitude/custom_altitude_best-seed821/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude_best-seed821" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_altitude/custom_altitude_best-seed1765/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude_best-seed1765" \
    --save-txt
