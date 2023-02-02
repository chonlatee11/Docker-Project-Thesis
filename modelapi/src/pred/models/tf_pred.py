from src.utils.utilities import *
# from utils.utilities import *
import os
import sys
import tensorflow as tf
import tensorflow_hub as hub
import numpy as np 

IMAGE_SHAPE = (128, 128)

#load model
def load_model():
    # myModel = "/model/model/"
    myModel = ('src/pred/models/model')
    print(myModel)
    classifier_model = myModel
    classifier = tf.keras.Sequential([
        hub.KerasLayer(classifier_model, input_shape=IMAGE_SHAPE + (3,))
    ])
    print("Model loaded")
    return classifier

#preprocess image
def preprocess_img(img):
    img = img.resize(IMAGE_SHAPE)
    img = np.array(img) / 255
    return img

#load labels
def load_labels():
    labels_path = ['BlackDot', 'BlackWhip','LeafBurn','RedLine','RingLeaf','RustMold','StreakMosaic','YellowLeaf']
    imagenet_labels = np.array(labels_path)
    print("Labels loaded")
    # print(imagenet_labels)
    return imagenet_labels

#prediction
def tf_predict(img_original):
    img = preprocess_img(img_original)
    model = load_model()
    result = model.predict(img[np.newaxis, ...])
    predicted_class = tf.math.argmax(result[0], axis=-1)
    scores = tf.nn.softmax(result[0])
    print(scores)
    probability = np.max(scores * 100)

    imagenet_labels = load_labels()
    print(imagenet_labels)
    print(model)
    predicted_class_name = imagenet_labels[predicted_class]

    return {"predicted_label": predicted_class_name,
            "probability": probability.item()}
