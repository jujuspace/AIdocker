# Install required libraries
# pip install torch torchvision numpy opencv-python ultralytics

import cv2
from ultralytics import YOLO

# Load the YOLO model (using pre-trained YOLOv5s weights)
model = YOLO("yolov5s.pt")  # You can replace 'yolov5s.pt' with your custom-trained model if available

# Load an image
image_path = "sample_dog.jpg"
image = cv2.imread(image_path)

# Run inference on CPU
results = model.predict(source=image, device="cpu", save=False)

# Draw bounding boxes on the image
for result in results:
    for box in result.boxes.data.tolist():
        x1, y1, x2, y2, confidence, class_id = box
        label = f"{model.names[int(class_id)]}: {confidence:.2f}"
        
        # Draw the box
        cv2.rectangle(image, (int(x1), int(y1)), (int(x2), int(y2)), (0, 255, 0), 2)
        # Add label
        cv2.putText(image, label, (int(x1), int(y1) - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)

# Save the output image
cv2.imwrite('output.jpg', image)