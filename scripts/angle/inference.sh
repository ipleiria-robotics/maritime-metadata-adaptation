#!/bin/bash
box_confidence=0.25

pretrained_path="./results_angle/custom_angle_6epochs_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle-e8_1e-3" \
    --save-txt

pretrained_path="./results_angle/custom_angle_8epochs_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle-e8_5e-3" \
    --save-txt

pretrained_path="./results_angle/custom_angle_8epochs_1e-2/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle-e8_1e-2" \
    --save-txt

pretrained_path="./results_angle/custom_angle_4epochs_1e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle-e4_1e-3" \
    --save-txt

pretrained_path="./results_angle/custom_angle_4epochs_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle-e4_5e-3" \
    --save-txt

pretrained_path="./results_angle/custom_angle_4epochs_1e-2/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle-e4_1e-2" \
    --save-txt


## BEST RUNS
pretrained_path="./results_angle/custom_angle_4epochs_1e-2/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle-e4_1e-2" \
    --save-txt

pretrained_path="./results_angle/custom_angle_best-seed42/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle_best-seed42" \
    --save-txt

pretrained_path="./results_angle/custom_angle_best-seed821/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle_best-seed821" \
    --save-txt

pretrained_path="./results_angle/custom_angle_best-seed1765/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle_best-seed1765" \
    --save-txt
