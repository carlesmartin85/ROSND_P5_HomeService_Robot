#!/bin/sh
export TURTLEBOT_3D_SENSOR=kinect
catkin_path="~/workspace/catkin_home"

xterm -e "cd ${ws_path} && source devel/setup.bash && roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 10
xterm -e "cd ${ws_path} && source devel/setup.bash && rosrun gmapping slam_gmapping" &
sleep 10
xterm -e "cd ${ws_path} && source devel/setup.bash && roslaunch turtlebot_rviz_launchers view_navigation.launch" &
sleep 10
xterm -e "cd ${ws_path} && source devel/setup.bash && roslaunch turtlebot_teleop keyboard_teleop.launch"
