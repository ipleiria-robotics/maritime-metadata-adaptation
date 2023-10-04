#!/bin/bash
box_confidence=0.25

pretrained_path_altitude="./results_altitude/custom_altitude_8epochs_1e-3/weights/best.pt"
pretrained_path_angle="./results_angle/custom_angle_8epochs_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path_altitude $pretrained_path_angle \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "ensemble_altitude_8epochs_1e-3_angle_8epochs_5e-3" \
    --save-txt

pretrained_path_altitude="./results_altitude/custom_altitude_best-seed42/weights/best.pt"
pretrained_path_angle="./results_angle/custom_angle_best-seed42/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path_altitude $pretrained_path_angle \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "ensemble_best_seed42" \
    --save-txt

pretrained_path_altitude="./results_altitude/custom_altitude_best-seed821/weights/best.pt"
pretrained_path_angle="./results_angle/custom_angle_best-seed821/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path_altitude $pretrained_path_angle \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "ensemble_best_seed821" \
    --save-txt

pretrained_path_altitude="./results_altitude/custom_altitude_best-seed1765/weights/best.pt"
pretrained_path_angle="./results_angle/custom_angle_best-seed1765/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path_altitude $pretrained_path_angle \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "ensemble_best_seed1765" \
    --save-txt
