from src.pred.models.tf_pred import load_image, tf_predict
# from pred.models.tf_pred import load_image, tf_predict
from typing import Any

# response resualt prediction
def tf_run_classifier(image) -> Any:
    img = load_image(image)
    if img is None:
        return None
    pred_results = tf_predict(img)
    pred_results["status_code"] = 200
    return pred_results
