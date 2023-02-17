import imghdr
from tempfile import NamedTemporaryFile
import os
import cv2 

def load_image(img):
    try:
        # Get the file extension
        file_ext = imghdr.what(None, h=img.getvalue())
        if not file_ext:
            raise ValueError("Invalid image file")

        # Save the BytesIO object to a temporary file
        with NamedTemporaryFile(suffix=f".{file_ext}", delete=False) as f:
            f.write(img.getbuffer())
            tmp_filename = f.name

        # Read the image using OpenCV
        img = cv2.imread(tmp_filename, cv2.COLOR_BGR2RGB)

        # Return the image
        return img    
    except Exception as e:
        print(e)
        print("image could not be opened")
    finally:
        # Delete the temporary file
        os.remove(tmp_filename)
