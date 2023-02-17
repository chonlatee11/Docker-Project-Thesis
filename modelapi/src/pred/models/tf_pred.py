from src.utils.utilities import *
# from utils.utilities import *
import tensorflow as tf
import numpy as np 
import cv2

IMAGE_SHAPE = (128, 128)

#load model
def load_model():
    classifier = tf.keras.models.load_model('src/pred/models/model')
    print("Model loaded")
    return classifier

#preprocess image
def preprocess_img(img):

    rimg = cv2.resize(img, (128, 128))
    oimg = np.array(rimg)
    oimg = oimg.astype('float32')
    oimg /= 255.00
    oimg = np.reshape(oimg ,(1,128,128,3))
    return oimg

#load labels
def load_labels():
    imagenet_labels = ['BlackDot', 'BlackWhip','LeafBurn','RedLine','RingLeaf','RustMold','StreakMosaic','YellowLeaf']
    print("Labels loaded")
    # print(imagenet_labels)
    return imagenet_labels

#prediction
def tf_predict(img_original):
    img = preprocess_img(img_original)
    model = load_model()
    result = model.predict(img)
    print(result)
    probability = np.max(result * 100)

    imagenet_labels = load_labels()
    print(imagenet_labels)
    print(model)
    predicted_class_name = imagenet_labels[np.argmax(result)]

    return {"predicted_label": predicted_class_name,
            "probability": probability.item()}
