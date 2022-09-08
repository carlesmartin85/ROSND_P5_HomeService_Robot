#!/bin/sh
export TURTLEBOT_3D_SENSOR=kinect
ws_path="/home/workspace"

xterm -e "cd ${ws_path} && source devel/setup.bash && roslaunch turtlebot_gazebo turtlebot_world.launch" &
sleep 10
xterm -e "cd ${ws_path} && source devel/setup.bash && roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 10
xterm -e "cd ${ws_path} && source devel/setup.bash && roslaunch turtlebot_rviz_launchers new_rviz_configuration.launch" &
sleep 10
xterm -e "cd ${ws_path} && source devel/setup.bash && rosrun add_markers constant_add_markers" &
sleep 10
xterm -e "cd ${ws_path} && source devel/setup.bash && rosrun pick_objects pick_objects" 
