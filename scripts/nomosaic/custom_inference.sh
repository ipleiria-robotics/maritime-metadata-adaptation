#!/bin/bash
box_confidence=0.25

################
# Angle
################
pretrained_path="./results_nomosaic/custom_angle_nomoisaic_8_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle_nomoisaic_8_5e-3" \
    --save-txt

pretrained_path="./results_nomosaic/custom_angle_nomoisaic_8_1e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle_nomoisaic_8_1e-3" \
    --save-txt

pretrained_path="./results_nomosaic/custom_angle_nomoisaic_28_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle_nomoisaic_28_5e-3" \
    --save-txt

pretrained_path="./results_nomosaic/custom_angle_nomoisaic_28_1e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_angle_nomoisaic_28_1e-3" \
    --save-txt

################
# Altitude
################
pretrained_path="./results_nomosaic/custom_altitude_nomoisaic_8_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude_nomoisaic_8_5e-3" \
    --save-txt

pretrained_path="./results_nomosaic/custom_altitude_nomoisaic_8_1e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude_nomoisaic_8_1e-3" \
    --save-txt

pretrained_path="./results_nomosaic/custom_altitude_nomoisaic_28_5e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude_nomoisaic_28_5e-3" \
    --save-txt

pretrained_path="./results_nomosaic/custom_altitude_nomoisaic_28_1e-3/weights/best.pt"
python3 ./adapt/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "custom_altitude_nomoisaic_28_1e-3" \
    --save-txt