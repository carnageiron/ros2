FROM osrf/ros:jazzy-desktop

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install -y \
    python3-colcon-common-extensions \
    python3-rosdep \
    git \
    nano \
    vim \
    ros-jazzy-ros-gz \
    ros-jazzy-joint-state-publisher \
    ros-jazzy-joint-state-publisher-gui \
    && rm -rf /var/lib/apt/lists/*

RUN rosdep init || true
RUN rosdep update

RUN echo "source /opt/ros/jazzy/setup.bash" >> /root/.bashrc

WORKDIR /driverless_ws

CMD ["bash"]
