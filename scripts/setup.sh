#!/bin/bash

# Set up the ROS 2 development environment

set -e

echo "======================================"
echo "4ZE Racing ROS 2 Environment Setup"
echo "======================================"

echo "[1/4] Checking ROS 2..."

if [ ! -d "/opt/ros/jazzy" ]; then
    echo "ERROR: ROS 2 Jazzy is not available."
    exit 1
fi

source /opt/ros/jazzy/setup.bash

echo "ROS 2 Jazzy detected."

echo "[2/4] Checking workspaces..."

if [ ! -d "/driverless_ws/src" ]; then
    echo "ERROR: /driverless_ws/src not found."
    exit 1
fi

if [ ! -d "/mockup_ws/src" ]; then
    echo "ERROR: /mockup_ws/src not found."
    exit 1
fi

echo "Workspaces detected."

echo "[3/4] Building mockup workspace..."

cd /mockup_ws

colcon build

source install/setup.bash

echo "[4/4] Setup complete."

echo ""
echo "Driverless workspace:"
echo "  /driverless_ws"

echo ""
echo "Mockup workspace:"
echo "  /mockup_ws"

echo ""
echo "ROS 2 Jazzy environment is ready."
