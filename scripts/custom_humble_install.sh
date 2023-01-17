#!/usr/bin/env bash

# Regular Colors
Red='\033[0;31m'          # Red
White='\033[0;37m'        # White

#Installation starts here
CHOOSE_ROS_DISTRO=humble # or humble, etc...
INSTALL_PACKAGE=desktop # or ros-base

#Set locale
sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8

#Setup Sources
sudo apt install -y software-properties-common
sudo add-apt-repository -y universe

#add the ROS 2 GPG key with apt.
sudo apt update && sudo apt install -y curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg

#add the repository to your sources list.
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null

#Install editors
sudo apt update
sudo apt install -y nano
sudo apt install -y gedit
#Install vscode
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code 

#Install ROS 2 packages
sudo apt update
sudo apt upgrade -y
sudo apt install -y ros-$CHOOSE_ROS_DISTRO-$INSTALL_PACKAGE 
sudo apt install -y python3-argcomplete
sudo apt install -y python3-colcon-common-extensions
sudo apt install -y python3-rosdep python3-vcstool


echo "source /opt/ros/$CHOOSE_ROS_DISTRO/setup.bash" >> ~/.bashrc
echo "-----------------------------------------------------------"
echo "success installing ROS2 $CHOOSE_ROS_DISTRO"
echo "-----------------------------------------------------------"
echo "Have a good time with ${Red}ROS2 and don't forget to drop a ${White}star on my github for this repo  :')"
