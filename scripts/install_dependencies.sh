#!/bin/bash

# Check if the script is being run with sudo
if [ "$EUID" -ne 0 ]; then
   echo -e "\e[31mOops! This script must be run with sudo. Please run with sudo.\e[0m"
   exit 1
fi

# Check if ROS Noetic is installed
if ! [ -f "/opt/ros/noetic/setup.bash" ]; then
    echo -e "\e[33mHold on! It seems like ROS Noetic is not installed. Please install ROS Noetic first before running this script. Have you tried asking a robot to do it for you?\e[0m"
    echo -e "\e[33mIf you need help installing ROS Noetic, you can run the following script with: './scripts/install_noetic.sh'\e[0m"
    exit 1
fi

# Source ROS setup.bash
source /opt/ros/noetic/setup.bash

# Update package lists and upgrade existing packages
apt-get update && apt-get upgrade -y

# Install required dependencies
apt-get install -y lsb-core g++ git build-essential
apt-get install -y python3-vcstool python3-rosdep python3-catkin-tools ros-noetic-catkin

# Initialize and update rosdep
rosdep init
rosdep update

echo -e "\e[32mDependencies installed successfully! You're one step closer to ruling the world with your robot army. Good luck!\e[0m"