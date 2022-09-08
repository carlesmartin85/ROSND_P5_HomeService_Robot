# Robotics Software Engineer Nanodegree: Final Project - HOME SERVICE ROBOT

<img src="homeservicerobot"/>

This is the project for the C++ Final Project course in the [Robotics Software Engineer Nanodegree Program](https://www.udacity.com/course/robotics-software-engineer--nd209): Final Project for Course 5. 

Path Planning and Navigation - HOME SERVICE ROBOT

In this capstone project, SLAM package us used to autonomously map an environment being able to interface a robot with a planning and navigation ROS packages to move objects within an environment. Key Skills Demonstrated:
• Advanced ROS and Gazebo integration
• ROS Navigation stack 7
• Path planning

## Dependencies for Running Locally

## Overview on ROS packages
**The following ROS packages are used in the project:**
cd ~/catkin_ws/src
git clone https://github.com/ros-perception/slam_gmapping
git clone https://github.com/turtlebot/turtlebot
git clone https://github.com/turtlebot/turtlebot_interactions
git clone https://github.com/turtlebot/turtlebot_simulator

* gmapping = kinetic ROS distro
  * Source: git https://github.com/ros-perception/slam_gmapping.git (branch: hydro-devel)[here](http://wiki.ros.org/gmapping)
* turtlebot = kinetic ROS distro
  * Source: git https://github.com/turtlebot/turtlebot.git (branch: kinetic)[here](http://wiki.ros.org/turtlebot)
* turtlebot_interactions = kinetic ROS distro
  * Source: git https://github.com/turtlebot/turtlebot_interactions.git (branch: indigo) [here](http://wiki.ros.org/turtlebot_interactions)
* turtlebot_simulator = kinetic ROS distro
  * Source: git https://github.com/turtlebot/turtlebot_simulator.git (branch: indigo) [here](http://wiki.ros.org/turtlebot_simulator)

## Basic Build Instructions

0. git clone this repo
1. `mkdir -p ~/catkin_ws/src`
2. `cd ~/catkin_ws/src`
3. `catkin_init_workspace`
4. `cd ..`
5. `catkin_make`
6. `sudo apt-get update && sudo apt-get upgrade `
7. `cd ~/catkin_ws/src`
8. `git clone https://github.com/ros-perception/slam_gmapping`
9. `git clone https://github.com/turtlebot/turtlebot`
10. `git clone https://github.com/turtlebot/turtlebot_interactions`
11. `git clone https://github.com/turtlebot/turtlebot_simulator`
12. `cd ~/catkin_ws/`
13. `source devel/setup.bash`
14. `rosdep install --from-paths src --ignore-src -r -y`
18. `catkin_make`
19. `source devel/setup.bash`

## Project Description and Shell Scripts

When the project is built a list of 'schedule scripts' can be found at ' ~/catkin_ws/src/scripts', each one with a list of terminal commands that launch the appropiate files set up for the simmulation to begin. (Use `chmod +x [file_name].sh` to allow appropiate permissions to launch each file).

Finally, run the shell scripts:

-/src/scripts/launch.sh: deploys a turtlebot inside our cafe's environment, being able to control it with keyboard commands, interface it with a SLAM package, and visualize the map in rviz.

-/src/scripts/test_slam.sh: makes able to navigate in the environment after a 2D Nav Goal command is issued.

-/src/scripts/test_navigation.sh: makes the robot pick two different goals and test its abilities to reach them and orient itself with respect to them. These goals will later be refered as the pickup and drop off zones.

-/src/scripts/pick_objects.sh: makes the robot travel to the desired pickup zone, display a message that it has reached its destination, wait 5 seconds, travel to the desired drop off zone, and display a message that it reached the drop off zone.

-/src/scripts/add_markers.sh: publishes a marker to rviz. The marker is initially published at the pickup zone. After 5 seconds it is hidden. Then after another 5 seconds it appears at the drop off zone.


-/src/scripts/home_service.sh: models a virtual object with markers in rviz. The virtual object is the one being picked and delivered by the robot, thus it first appears in the pickup zone, and then in its drop off zone once the robot reaches it.

