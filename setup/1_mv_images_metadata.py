### TRAIN
import json
import shutil
import os

train_metadata_annotation = '../real/annotations/instances_train_metadata.json'
train_metadata_data = json.load(open(train_metadata_annotation, 'r'))

def move_folder_train(data):
    train_path = '../real/train/images/'
    train_no_metadata_path = '../real/train_temp/images/'

    for image in data['images']:
        filepath = os.path.join(train_path, image["file_name"])
        shutil.move(filepath, train_no_metadata_path)

    os.rename('../real/train', '../real/train_without_metadata')
    os.rename('../real/train_temp', '../real/train')

move_folder_train(train_metadata_data)

### VAL
import json
import shutil
import os

val_metadata_annotation = '../real/annotations/instances_val_metadata.json'
val_metadata_data = json.load(open(val_metadata_annotation, 'r'))

def move_folder_metadata(data):
    val_path = '../real/val/images/'
    val_no_metadata_path = '../real/val_temp/images/'

    for image in data['images']:
        filepath = os.path.join(val_path, image["file_name"])
        shutil.move(filepath, val_no_metadata_path)

    os.rename('../real/val', '../real/val_without_metadata')
    os.rename('../real/val_temp', '../real/val')

move_folder_metadata(val_metadata_data)