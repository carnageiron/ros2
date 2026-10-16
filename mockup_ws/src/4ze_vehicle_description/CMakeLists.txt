cmake_minimum_required(VERSION 3.8)
project(4ze_vehicle_description)

find_package(ament_cmake REQUIRED)

install(
  DIRECTORY
    urdf
    launch
    rviz
  DESTINATION share/${PROJECT_NAME}
)

ament_package()
