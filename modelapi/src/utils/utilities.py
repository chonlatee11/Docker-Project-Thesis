from PIL import Image
from io import BytesIO
import base64
import os
import requests

# def load_image(img_url):
#     try:
#         img = Image.open(requests.get(img_url, stream=True).raw)
#         return img
#     except Exception as e:
#         print(e)
#         print("image could not be opened")

def load_image(img):
    try:
        img = Image.open(img)
        return img    
    except Exception as e:
        print(e)
        print("image could not be opened")
