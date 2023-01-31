# cs460_robotics_course
This repository contains codes for the CS460 course (Introductoin to Mobile Robots) that is offered in the, CCIS college at Prince Sultan University.

# Docker
## ROS 2 Humble
To use ROS 2 humble inside docker
* Switch to the `ros2_humble` branch 
  ```
  cd cs460_robotics_course
  git checkout ros2_humble
  ```
* Copy the [ros2_humble.sh](https://github.com/riotu-lab/cs460_robotics_course/blob/ros2_humble/docker/ros2_humble.sh) script
* Run the above script. It will pull the required docker image and take you inside a docker container with a terminal
* The above script will also create a  directory (volume) that is shared\linked between the container and the host system (your computer). The `dev_ws` will be inside this directory. The default name of this directory (in your computer) is `ros2_humble_shared_volume` and is located at the `$HOME` directory.
* Inside the `ros2_humble_shared_volume`, copy the ros2 installation script [custom_humble_install.sh](https://github.com/riotu-lab/cs460_robotics_course/blob/ros2_humble/scripts/custom_humble_install.sh). Make it executable if not already `chmod +x custom_humble_install.sh`
* Execute the `custom_humble_install.sh` 
  ```bash
  cd ~/ros2_humble_shared_volume
  ./custom_humble_install.sh
  ```
* If the installation is successful, you should be able to execute the `ros2` commands
* To open another terminal in inside the docker container, just execute the `ros2_humble.sh` script again.
