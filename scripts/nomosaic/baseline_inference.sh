#!/bin/bash
box_confidence=0.25

pretrained_path="/home/samuh/Desktop/results_nomosaic/baseline_evolved-seed0/weights/best.pt"
python3 ./baseline/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "baseline_nomosaic_evolved-seed0" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_nomosaic/baseline_evolved-seed42/weights/best.pt"
python3 ./baseline/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "baseline_nomosaic_evolved-seed42" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_nomosaic/baseline_evolved-seed821/weights/best.pt"
python3 ./baseline/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "baseline_nomosaic_evolved-seed821" \
    --save-txt

pretrained_path="/home/samuh/Desktop/results_nomosaic/baseline_evolved-seed1765/weights/best.pt"
python3 ./baseline/detect_SeaDronesSeeDataset.py \
    --weights $pretrained_path \
    --conf $box_confidence \
    --img-size 640 \
    --source ../real/test/images \
    --name "baseline_nomosaic_evolved-seed1765" \
    --save-txt
