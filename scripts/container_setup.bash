#!/bin/bash


PROJECT_DIR=$(pwd)


cd ${HOME}/catkin_ws/src 
wstool init 
wstool merge Kimera-VIO-ROS/install/kimera_vio_ros_https.rosinstall
wstool update

cd ${HOME}/catkin_ws/src/gtsam && git checkout tags/4.2

cd ${HOME}/catkin_ws

catkin init 
catkin config --cmake-args -DCMAKE_BUILD_TYPE=Release \
    -DGTSAM_USE_SYSTEM_EIGEN=ON \
    -DGTSAM_USE_SYSTEM_METIS=ON \
    -DGTSAM_BUILD_WITH_MARCH_NATIVE=OFF \
    -DGTSAM_BUILD_TESTS=OFF \
    -DGTSAM_BUILD_EXAMPLES_ALWAYS=OFF \
    -DGTSAM_BUILD_UNSTABLE=ON \
    -DGTSAM_ROT3_EXPMAP=ON \
    -DGTSAM_TANGENT_PREINTEGRATION=OFF

# catkin build -j8