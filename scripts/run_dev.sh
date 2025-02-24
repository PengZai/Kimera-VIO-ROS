#!/bin/bash



IMAGE_NAME="kimera-vio:noetic-ros"
DATA_PATH="/media/${USER}/zhipeng_usb/datasets"
# Pick up config image key if specified
if [[ ! -z "${CONFIG_DATA_PATH}" ]]; then
    DATA_PATH=$CONFIG_DATA_PATH
fi


PROJECT_DIR=$(pwd)
PROJECT_NAME=$(basename "$PWD")



# Check if the image exists
# if docker inspect --type=image "$IMAGE_NAME" &>/dev/null; then
#   echo "Docker image $IMAGE_NAME exists. skip"
# else
#   echo "Docker image $IMAGE_NAME does not exist., then build from docker file"
#   docker build -t $IMAGE_NAME $PROJECT_DIR
# fi


docker build -t $IMAGE_NAME -f "$HOME/vscode_projects/Kimera-VIO-ROS/catkin_ws/src/Kimera-VIO-ROS/Dockerfile_for_dev" .

xhost +local:docker

docker run  \
  -e "DISPLAY=$DISPLAY"  \
  -e "QT_X11_NO_MITSHM=1" \
  -e "XAUTHORITY=$XAUTH"  \
  -v "/tmp/.X11-unix:/tmp/.X11-unix:rw"  \
  -v "$DATA_PATH:/root/datasets" \
  -v $HOME/vscode_projects/Kimera-VIO-ROS/catkin_ws:/root/catkin_ws \
  --ipc=host  --network host  \
  --runtime=nvidia --gpus=all  \
  --privileged  \
  --name kimera-vio-noetic-container \
  -it kimera-vio:noetic-ros

xhost -local:docker




