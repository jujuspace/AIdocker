# Run Docker container with following configurations:
# --gpus all          : Enable all available GPUs
# --net=host          : Use host network mode
# --privileged        : Give extended privileges
# -v X11              : Mount X11 socket for GUI
# -e DISPLAY          : Set display for GUI apps
# -v pwd/share        : Mount local share directory
# -w /root/share      : Set working directory
# --name             : Set container name

sudo docker run -it --net=host --privileged \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    -v `pwd`/share:/root/share \
    -w /root/share \
    --name dog_check \
    jusungnow/sample:1.0 \
    bash