
# Simple grid visualizer,
import matplotlib.pyplot as plt
import os
from math import ceil
valid_image_ext = ['.jpg', '.png', '.jpeg', '.ppm']

def visualize_images(image_dir, num_cols=4, num_images=10):
    output_path = os.path.join(os.environ['USER_EXPERIMENT_DIR'], image_dir)
    num_rows = int(ceil(float(num_images) / float(num_cols)))
    f, axarr = plt.subplots(num_rows, num_cols, figsize=[80,30])
    f.tight_layout()
    a = [os.path.join(output_path, image) for image in os.listdir(output_path) 
         if os.path.splitext(image)[1].lower() in valid_image_ext]
    for idx, img_path in enumerate(a[:num_images]):
        col_id = idx % num_cols
        row_id = int(idx / num_cols)
        img = plt.imread(img_path)
        axarr[row_id, col_id].imshow(img)

OUTPUT_PATH = "/data/infer_output"
COLS = 4
IMAGES = 10
visualize_images(OUTPUT_PATH, num_cols=COLS, num_images=IMAGES)

