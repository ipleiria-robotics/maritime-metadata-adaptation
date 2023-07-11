import json

def train_metadata_only():
    with open('../real/annotations/instances_train.json') as f:
        data = json.load(f)

    # Print all the keys in the data dictionary
    valid = 0
    image_list = []
    for image in data['images']:
        if image['meta'] != None: 
            if ('height_above_takeoff(meter)' in image['meta']):
                valid +=1
                image['meta'] = str(image['meta']['height_above_takeoff(meter)']) + ' ' + str(image['meta']['gimbal_pitch(degrees)'])
                image_list.append(image)

            elif ('altitude' in image['meta']):
                valid +=1
                image['meta'] = str(image['meta']['altitude']) + ' ' + str(image['meta']['gimbal_pitch'])
                image_list.append(image)

    data['images'] = image_list
    print(len(data['images']))
    
    # Save the updated JSON file
    with open('../real/annotations/instances_train_metadata.json', 'w') as f:
        json.dump(data, f)

def val_metadata_only():
    with open('../real/annotations/instances_val.json') as f:
        data = json.load(f)

    # Print all the keys in the data dictionary
    valid = 0
    image_list = []
    for image in data['images']:
        if image['meta'] != None: 
            if ('height_above_takeoff(meter)' in image['meta']):
                valid +=1
                image['meta'] = str(image['meta']['height_above_takeoff(meter)']) + ' ' + str(image['meta']['gimbal_pitch(degrees)'])
                image_list.append(image)

            elif ('altitude' in image['meta']):
                valid +=1
                image['meta'] = str(image['meta']['altitude']) + ' ' + str(image['meta']['gimbal_pitch'])
                image_list.append(image)

    data['images'] = image_list
    print(len(data['images']))
    
    # Save the updated JSON file
    with open('../real/annotations/instances_val_metadata.json', 'w') as f:
        json.dump(data, f)

if __name__ == "__main__":
    train_metadata_only()
    val_metadata_only()