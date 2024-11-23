# AI-Powered Object Detection with Docker

A production-ready solution that combines Docker containerization with YOLO (You Only Look Once) AI model for object detection. This project demonstrates how to effectively deploy and run AI models in containerized environments, making it ideal for both development and production deployments.
## Example Images

### Input Image
![Sample Dog Input](share/sample_dog.jpg)

### Output Image (with Detection)
![Detection Result](share/output.jpg)


## Features

- **AI Integration**: Pre-configured YOLOv5 model for state-of-the-art object detection
- **Docker Containerization**: Complete isolation and reproducibility of the AI environment
- **GPU Acceleration**: NVIDIA GPU support for high-performance inference
- **Development Tools**:
  - X11 forwarding for real-time visual output
  - Hot-reload shared volume for code changes
  - Interactive bash shell access
- **Production Ready**: Configurable for both development and production environments

## Prerequisites

- Ubuntu Linux (recommended 20.04 or later)
- NVIDIA GPU with CUDA support (optional but recommended)
- Docker Engine
- X11 for visualization support

## Quick Start

1. **Set up Docker Environment**:
```bash
chmod +x 1_install_env.sh
./1_install_env.sh
```

2. If you encounter permission errors, run the error fix script:
```bash
chmod +x error_install.sh
./error_install.sh
```

3. Build and push your Docker image (optional, if you want to use your own image):
```bash
chmod +x 2_cont2image.sh
./2_cont2image.sh
```

4. Launch the Docker container:
```bash
chmod +x 3_launchdocker.sh
./3_launchdocker.sh
```

## Usage

1. Place your input images in the `share` directory.

2. Run the object detection script:
```python
python check.py
```

The script will:
- Load the pre-trained YOLOv5s model
- Process the input image (`sample_dog.jpg`)
- Draw bounding boxes around detected objects
- Save the result as `output.jpg`

## Project Structure

```
.
├── 1_install_env.sh      # Docker installation script
├── 2_cont2image.sh       # Docker image creation script
├── 3_launchdocker.sh     # Container launch script
├── error_install.sh      # Permission fix script
└── share/
    ├── check.py         # Main detection script
    ├── sample_dog.jpg   # Input image
    └── output.jpg       # Output image with detections
```

## Docker Configuration

The container is launched with the following configurations:
- GPU support enabled
- Host network mode
- X11 forwarding for GUI
- Shared volume mounting
- Custom working directory
- Pre-configured Python environment

## Dependencies

The Python script requires the following packages:
- torch
- torchvision
- numpy
- opencv-python
- ultralytics

These are automatically installed in the Docker container.

## Troubleshooting

If you encounter Docker permission issues:
1. Check Docker group membership
2. Add your user to the Docker group
3. Activate the group changes
4. Reload shell configuration

Run `error_install.sh` to automatically fix these issues.

## License

This project is open-source and available under the MIT License.

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a new Pull Request

## Acknowledgments

- YOLOv5 by Ultralytics
- Docker for containerization
- NVIDIA for GPU support
```

This README provides:
1. Clear installation instructions
2. Usage guidelines
3. Project structure
4. Configuration details
5. Troubleshooting steps
6. All necessary information to get started with the project

Would you like me to modify any section or add more specific details?
