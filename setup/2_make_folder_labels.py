import json
import argparse
import os

# The following link contains the math behind this function
# https://haobin-tan.netlify.app/ai/computer-vision/object-detection/coco-json-to-yolo-txt/
def convertToYolo(x_coco, y_coco, w_coco, h_coco, w_img, h_img):
    x_yolo = (x_coco + w_coco/2)/w_img
    y_yolo = (y_coco + h_coco/2)/h_img
    w_yolo = w_coco/w_img
    h_yolo = h_coco/h_img
    return [x_yolo, y_yolo, w_yolo, h_yolo]

def computeInput(annotationPath, outputPath):
    CocoFormat = open(annotationPath)
    data = json.load(CocoFormat)
    for key in data['annotations']:
        for image in data['images']:
            if (key['image_id'] == image['id']):
                h_img = image['height']
                w_img = image['width']
                yoloFormat = convertToYolo(key['bbox'][0], key['bbox'][1], key['bbox'][2], key['bbox'][3], w_img, h_img)
                f = open("./" + outputPath + "/" + str(key['image_id']) + ".txt", "a")  
                f.write(str(key['category_id']) + " " + str(yoloFormat[0]) + " " + str(yoloFormat[1]) + " " + str(yoloFormat[2]) + " " + str(yoloFormat[3]) + "\n")
                f.close()
                break
    CocoFormat.close()

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument('--val', action='store_true', help='convert the val annotation')
    parser.add_argument('--train', action='store_true', help='convert the train annotation')
    parser.add_argument('--test', action='store_true', help='convert the test annotation')
    options = parser.parse_args()

    annotations = "../real/annotations"
    labels = "../real"

    if (options.val):
        os.makedirs("../real/val/labels")
        computeInput(annotations + "/instances_val.json", labels + "/val/labels")
    if (options.train):
        os.makedirs("../real/train/labels")
        computeInput(annotations + "/instances_train.json", labels + "/train/labels")
    if (options.test):
        os.makedirs("../real/test/labels")
        computeInput(annotations + "/instances_test.json", labels + "/test/labels")
    print("Finished the conversion to YOLO format")