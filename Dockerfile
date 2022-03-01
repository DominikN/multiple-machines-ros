FROM ros:noetic-ros-core

SHELL ["/bin/bash", "-c"]

RUN apt update && apt install -y \
    ros-noetic-ros-tutorials