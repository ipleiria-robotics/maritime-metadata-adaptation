#!/bin/bash
# Default values for flags
box_confidence=0.25

pretrained_path="./results_both/custom8_1e-3_angle_1e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom8_1e-3_angle_1e-3" \
    --save-txt

pretrained_path="./results_both/custom8_1e-3_angle_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom8_1e-3_angle_5e-3" \
    --save-txt

pretrained_path="./results_both/custom8_5e-3_angle_1e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom8_5e-3_angle_1e-3" \
    --save-txt
    
pretrained_path="./results_both/custom8_5e-3_angle_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom8_5e-3_angle_5e-3" \
    --save-txt

pretrained_path="./results_both/custom8_5e-4_angle_5e-4/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom8_5e-4_angle_5e-4" \
    --save-txt


