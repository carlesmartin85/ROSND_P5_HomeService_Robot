#!/bin/sh
export TURTLEBOT_3D_SENSOR=kinect
ws_path="/home/workspace"

xterm -e "cd ${ws_path} && source devel/setup.bash && roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 10
xterm -e "cd ${ws_path} && source devel/setup.bash && roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 10
xterm -e "cd ${ws_path} && source devel/setup.bash && roslaunch turtlebot_rviz_launchers view_navigation.launch" &
