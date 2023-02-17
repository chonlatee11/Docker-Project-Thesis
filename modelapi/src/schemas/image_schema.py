from pydantic import BaseModel
class Img(BaseModel):
    uri: str
    type: str
    name: str
    cropRect: str
    # img_url: str