#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <actionlib/client/simple_action_client.h>

// Define a client for to send goal requests to the move_base server through a SimpleActionClient
typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;

int main(int argc, char** argv){
  // Initialize the node to set  the pickup and drop off locations
  ros::init(argc, argv, "pick_objects");

  //tell the action client that we want to spin a thread by default
  MoveBaseClient ac("move_base", true);

  // Add robot position to the parameter server
  ros::param::set("/robot_pose", "initial_position");

  // Wait 5 sec for move_base action server to come up
  while(!ac.waitForServer(ros::Duration(5.0))){
    ROS_INFO("Waiting for the move_base action server to come up");
  }

  move_base_msgs::MoveBaseGoal goal;

  // set up the frame parameters
  // set the frame_id to the robot base frame
  goal.target_pose.header.frame_id = "base_link";
  goal.target_pose.header.stamp = ros::Time::now();

  //Pickup point

  // Define a position and orientation for the robot to reach
  goal.target_pose.pose.position.x = -1.0;
  goal.target_pose.pose.position.y = -3.0;
  goal.target_pose.pose.orientation.w = 0.0;

   // Send the goal position and orientation for the robot to reach
  ROS_INFO("Sending goal");
  ac.sendGoal(goal);

  // Set robot position as moving to pickup location
  ros::param::set("/robot_pose", "approaching_pickup");

  // Wait an infinite time for the results
  ac.waitForResult();

  // Check if the robot reached its goal
  if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
    ROS_INFO("Hooray, the robot moved to its goal!");
    ros::param::set("/robot_pose", "arrived_at_pickup");
    sleep(5);
  }
  else{
    ROS_INFO("The robot failed to reach its goal!");
    ros::param::set("/robot_pose", "could_not_pickup");
  }

//Drop-Off point

  // set up the frame parameters
  // set the frame_id to the robot base frame
  goal.target_pose.header.frame_id = "base_link";
  goal.target_pose.header.stamp = ros::Time::now();
  
  ROS_INFO("Picking up object...");
  // Define a position and orientation for the robot to reach
  goal.target_pose.pose.position.x = 0.0;
  goal.target_pose.pose.position.y = -0.5;
  goal.target_pose.pose.orientation.w = 1.5;

   // Send the goal position and orientation for the robot to reach
  ROS_INFO("Approaching drop-off point");
  ac.sendGoal(goal);

  // Set robot position as moving to drop-off location
  ros::param::set("/robot_pose", "approaching_drop-off");

  // Wait an infinite time for the results
  ac.waitForResult();

  // Check if the robot reached its goal
  if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
    ROS_INFO("The robot has arrived at the drop-off point!");
    // Set robot position as moving to drop-off location
    ros::param::set("/robot_pose", "arrived_at_drop-off");
    // wait for 5 seconds
    sleep(5);
  }
  else{
    ROS_INFO("Robot unable to reach it's drop-off point!!");
    ros::param::set("/robot_pose", "could_not_reach_drop-off");
  }

  
  return 0;
}
