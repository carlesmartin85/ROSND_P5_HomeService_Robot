
#include <ros/ros.h>
#include <visualization_msgs/Marker.h>

int main( int argc, char** argv )
{
  ros::init(argc, argv, "new_add_markers");
  ros::NodeHandle n;
  
  ros::Publisher marker_pub = n.advertise<visualization_msgs::Marker>("visualization_marker", 1);

  // Set our initial shape type to be a cube
  uint32_t shape = visualization_msgs::Marker::CUBE;


    visualization_msgs::Marker marker;
    // Set the frame ID and timestamp.  See the TF tutorials for information on these.
    marker.header.frame_id = "map";
    marker.header.stamp = ros::Time::now();

    // Set the namespace and id for this marker.  This serves to create a unique ID
    // Any marker sent with the same namespace and id will overwrite the old one
    marker.ns = "new_add_markers";
    marker.id = 0;

    // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
    marker.type = shape;

    // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
    marker.action = visualization_msgs::Marker::ADD;

    // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
    marker.pose.position.x = -9.4;
    marker.pose.position.y = 1.0;
    marker.pose.position.z = 0;
    marker.pose.orientation.x = 0.0;
    marker.pose.orientation.y = 0.0;
    marker.pose.orientation.z = 0.0;
    marker.pose.orientation.w = 1.0;

    // Set the scale of the marker -- 1x1x1 here means 1m on a side
    marker.scale.x = 0.3;
    marker.scale.y = 0.3;
    marker.scale.z = 0.3;

    // Set the color -- be sure to set alpha to something non-zero!
    marker.color.r = 0.0f;
    marker.color.g = 1.0f;
    marker.color.b = 0.0f;
    marker.color.a = 1.0;

    marker.lifetime = ros::Duration();

    // Publish the marker
    while (marker_pub.getNumSubscribers() < 1)
    {
      if (!ros::ok())
      {
        return 0;
      }
      ROS_WARN_ONCE("Create a subscriber to the marker");
      sleep(1);
    }
    // Publish marker to pickup zone for 5 seconds
    ROS_INFO("Publishing marker to pickup location...");
    ROS_INFO("Published marker to pickup location");
    marker_pub.publish(marker);

    //For rosparam get
    std::string robot_pose;
    ros::Rate r(1);

  while (ros::ok())
  {

    if (ros::param::get("/robot_pose", robot_pose))
    {

      if (robot_pose=="arrived_at_pickup"){

          // delete the marker
          marker.action = visualization_msgs::Marker::DELETE;
          // Publish the delete process
          marker_pub.publish(marker);
          ROS_INFO("Object picked up by robot");

          // Sleep for 5 sec
          sleep(5);
      }
      if (robot_pose=="arrived_at_drop-off"){

          // Set the drop-off location
          marker.pose.position.x = -3.4;
          marker.pose.position.y = 1.0;
          marker.pose.position.z = 0;
          marker.pose.orientation.w = 1.0;

          // Add the new marker
          marker.action = visualization_msgs::Marker::ADD;
          // Publish the add process
          marker_pub.publish(marker);
          ROS_INFO("Marker dropped at drop-off point");

      }
     
    }

    r.sleep();
  }
}
