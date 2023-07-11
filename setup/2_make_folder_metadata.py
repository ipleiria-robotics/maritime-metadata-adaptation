import json
import os

train_metadata_annotation = '../real/annotations/instances_train_metadata.json'
train_metadata_data = json.load(open(train_metadata_annotation, 'r'))

def create_metadata_folder(data):
    folder_path = "../real/train/meta_data/"
    os.makedirs(folder_path)
    for image in data['images']:
        filename = os.path.join(folder_path, str(image['id']) + '.txt')

        with open(filename, 'w') as f:
            f.write(str(image['meta']))

create_metadata_folder(train_metadata_data)

import json
import os

val_metadata_annotation = '../real/annotations/instances_val_metadata.json'
val_metadata_data = json.load(open(val_metadata_annotation, 'r'))

def create_metadata_folder(data):
    folder_path = "../real/val/meta_data/"
    os.makedirs(folder_path)
    for image in data['images']:
        filename = os.path.join(folder_path, str(image['id']) + '.txt')

        with open(filename, 'w') as f:
            f.write(str(image['meta']))

create_metadata_folder(val_metadata_data)