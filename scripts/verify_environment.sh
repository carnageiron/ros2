#!/bin/bash

# Verify the ROS 2 development environment

set -e

echo "======================================"
echo "4ZE Racing ROS 2 Environment Check"
echo "======================================"

echo ""

echo "[1] ROS distribution"

source /opt/ros/jazzy/setup.bash

if [ "$ROS_DISTRO" != "jazzy" ]; then
    echo "ERROR: ROS 2 Jazzy not detected."
    exit 1
fi

echo "PASS: ROS 2 Jazzy"

echo ""

echo "[2] ROS 2 CLI"

if ! command -v ros2 >/dev/null 2>&1; then
    echo "ERROR: ros2 command not found."
    exit 1
fi

echo "PASS: ros2 CLI"

echo ""

echo "[3] Colcon"

if ! command -v colcon >/dev/null 2>&1; then
    echo "ERROR: colcon not found."
    exit 1
fi

echo "PASS: colcon"

echo ""

echo "[4] Driverless workspace"

if [ ! -d "/driverless_ws/src" ]; then
    echo "ERROR: /driverless_ws/src not found."
    exit 1
fi

echo "PASS: /driverless_ws"

echo ""

echo "[5] Mockup workspace"

if [ ! -d "/mockup_ws/src" ]; then
    echo "ERROR: /mockup_ws/src not found."
    exit 1
fi

echo "PASS: /mockup_ws"

echo ""

echo "[6] Vehicle description package"

if [ ! -d "/mockup_ws/src/4ze_vehicle_description" ]; then
    echo "ERROR: 4ze_vehicle_description not found."
    exit 1
fi

echo "PASS: 4ze_vehicle_description"

echo ""

echo "[7] Gazebo"

if ! command -v gz >/dev/null 2>&1; then
    echo "ERROR: Gazebo CLI not found."
    exit 1
fi

echo "PASS: Gazebo"

echo ""

echo "======================================"
echo "ENVIRONMENT CHECK PASSED"
echo "======================================"
