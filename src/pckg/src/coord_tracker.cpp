#include <ros/ros.h>
#include <ros/time.h>
#include <cmath>
#include <string>
#include <geometry_msgs/Point.h>
#include <geometry_msgs/TransformStamped.h>
#include <pckg/track_frame.h>
#include <pckg/move_pos_simu.h>
#include <pckg/move_pos_group.h>
#include <tf2_ros/transform_broadcaster.h>
#include <tf2_ros/transform_listener.h>
#include <sensor_msgs/JointState.h>
#include <iostream>
#include <std_msgs/Float32MultiArray.h>
#include <std_srvs/Empty.h>
#include <pckg/track_coord.h>
#include <tf2_ros/static_transform_broadcaster.h>


bool flag_stop=false;
bool real;
bool flag=false;
bool inside_inf_limit=true;
bool inside_sup_limit=true;
float mid_angle_inf;
float mid_angle_sup;
std::string target_frame;
float move_pan;
float move_tilt;
sensor_msgs::JointState pantilt_state;
geometry_msgs::TransformStamped absolute_pos;
geometry_msgs::TransformStamped relative_pos;
geometry_msgs::TransformStamped camera_pos;
geometry_msgs::TransformStamped coordTransform;
float last_x=0;
float last_y=0;
float last_z=0;
float tolerance=0.015;
float centerX=320.0;
float centerY=200.0;
int srv_mode=0;


ros::ServiceClient client;
ros::ServiceClient clientReal;
tf2_ros::Buffer tfBuffer;


#define FRAME_TRACKER_flag 1
#define COORDINATE_TRACKER_flag 2





/***********************************LOOP FUNCTIONS****************************************** */
// This function calculates the distance between two points in 3D space
float distancia(float x1, float y1, float z1, float x2, float y2, float z2) {
    return sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2) + pow(z2 - z1, 2));
}

// This function is called when a request to track a frame is received.
void track_frame(std::string frame){
    target_frame= frame; // sets the target frame
    tf2_ros::TransformListener tfListener(tfBuffer); // Initialize the transform listener
    tfBuffer.clear(); // Clear the buffer of previous transforms
    
    // Lookup the relative position of the target frame with respect to the "oakd_color_frame" frame
    try{
        relative_pos = tfBuffer.lookupTransform("oakd_color_frame",target_frame, ros::Time(0), ros::Duration(4.0));
    } catch(tf2::TransformException& ex){
        ROS_WARN("%s", ex.what()); // Log a warning message if the transform lookup fails
    }
    
    // Lookup the absolute position of the target frame with respect to the "world" frame
    try{
        absolute_pos = tfBuffer.lookupTransform("world",target_frame, ros::Time(0), ros::Duration(4.0));
    } catch(tf2::TransformException& ex){
        ROS_WARN("%s", ex.what()); // Log a warning message if the transform lookup fails
    }
    // get the position of the target frame relative to the "oakd_color_frame"
    float xp=relative_pos.transform.translation.x;
    float yp=relative_pos.transform.translation.y;
    float zp=relative_pos.transform.translation.z;
    
    
    bool movimiento_x=true;
    bool movimiento_y=true;
    bool movimiento_z=true;
    ros::spinOnce();
    //Loop while the frame is not centered or while the frame is moving.
    while (((yp<-tolerance || yp>tolerance || zp<-tolerance || zp>tolerance) || (movimiento_x|| movimiento_y|| movimiento_z))&& flag_stop){
        try{
            relative_pos = tfBuffer.lookupTransform("oakd_color_frame",target_frame, ros::Time(0), ros::Duration(4.0));}
                catch(tf2::TransformException& ex){
                    ROS_WARN("%s", ex.what());
            }
       // Store the position of the target frame relative to the "world" frame before looking up the transform again     
        last_x=absolute_pos.transform.translation.x;
        last_y=absolute_pos.transform.translation.y;
        last_z=absolute_pos.transform.translation.z;
        // Get the position of the target frame relative to the "oakd_color_frame"
        xp=relative_pos.transform.translation.x;
        yp=relative_pos.transform.translation.y;
        zp=relative_pos.transform.translation.z;
        
        try{
        absolute_pos = tfBuffer.lookupTransform("world",target_frame, ros::Time(0), ros::Duration(4.0));}
                catch(tf2::TransformException& ex){
                    ROS_WARN("%s", ex.what());
                }
        try{
        camera_pos = tfBuffer.lookupTransform("world","oakd_color_frame", ros::Time(0), ros::Duration(4.0));}
                catch(tf2::TransformException& ex){
                    ROS_WARN("%s", ex.what());
            }
            
            
        float distance = distancia(camera_pos.transform.translation.x,
                                    camera_pos.transform.translation.y,
                                    camera_pos.transform.translation.z,
                                    xp=relative_pos.transform.translation.x,
                                    yp=relative_pos.transform.translation.y,
                                    zp=relative_pos.transform.translation.z
                                );
        // Check if the y position (pan) is outside a tolerance range (-0.01 to 0.01)
        if(yp<-tolerance || yp>tolerance){  //0.01
            // Check if the pan angle is within the upper and lower limits
            // If the target angle is greater than the upper limit, calculate a new position and set the flag to false
            if(inside_sup_limit && inside_inf_limit){
                if(((pantilt_state.position[0])+atan2(yp,distance))>3.1388){
                    mid_angle_sup=-M_PI+(pantilt_state.position[0])+atan2(yp,distance);
                    move_pan=mid_angle_sup-0.01;
                    inside_sup_limit=false;
            // If the target angle is less than the lower limit, calculate a new position and set the flag to false
                }else if(((pantilt_state.position[0])+atan2(yp,distance))<-3.1388){
                    mid_angle_inf=M_PI+(pantilt_state.position[0])+atan2(yp,distance);
                    move_pan=mid_angle_inf+0.01;
                    inside_inf_limit=false;
            // If the angle is within the limits, calculate the new position
                }else{
                move_pan=((pantilt_state.position[0]))+atan2(yp,distance);
                }
                ros::Duration(0.1).sleep();
            }   
        }
        // Check if the pan angle is within the upper and lower limits after repositioning, and set the flags accordingly
        if(pantilt_state.position[0]<mid_angle_sup && !inside_sup_limit){
        inside_sup_limit=true; 
        }
        
        if(pantilt_state.position[0]>mid_angle_inf && !inside_inf_limit){
        inside_inf_limit=true;  
        }
        
        // Check if the z position (tilt) is outside a tolerance range (-0.01 to 0.01)
        if(zp<-tolerance || zp>tolerance){  //0.01
            // Calculate the tilt target angle based on the z position and distance
            move_tilt=pantilt_state.position[1]-atan2(zp,distance);
        }
        // If the system is running in the real environment, send a request to move the camera to the new position using the real service
        if(real){
            pckg::move_pos_group srv;
            srv.request.pos.resize(2);
            srv.request.pos[0]=move_pan;
            srv.request.pos[1]=move_tilt;    
            if (!clientReal.call(srv))
                {
                    ROS_ERROR("Failed to call service");
                }   
        // If the system is running in the simulation environment, send a request to move the camera to the new position using the simulated service
        }else{
            pckg::move_pos_simu srv;
            srv.request.pos.resize(2);
            srv.request.pos[0]=move_pan;
            srv.request.pos[1]=move_tilt;    
            if (!client.call(srv))
                {
                    ROS_ERROR("Failed to call service");
                }
        }
            ros::spinOnce();
        // Validates if the object is moving by comparing the distance between last positions
        movimiento_x=abs(last_x-absolute_pos.transform.translation.x)>0.005;
        movimiento_y=abs(last_y-absolute_pos.transform.translation.y)>0.005;
        movimiento_z=abs(last_z-absolute_pos.transform.translation.z)>0.005;    
            }
    //Reset values
    flag_stop=false;
    last_x=0;
    last_y=0;
    last_z=0;
}







/***********************************SERVICE CALLBACKS****************************************** */
// This function is a callback for the joint states of the pan-tilt unit, it updates the current state of the unit
void posCallback(sensor_msgs::JointState msg_state){
    pantilt_state=msg_state;
}

// This function is a callback for the coordinates of the center of the detected object, it updates the centerX and centerY variables
void centerCallback(const std_msgs::Float32MultiArray::ConstPtr& msg){
    centerX = msg->data[0];
    centerY = msg->data[1];
}

// This function is a service callback for stopping the tracking, it sets flag_stop to false
bool stopCB(std_srvs::Empty::Request& req, std_srvs::Empty::Response& res){
    flag_stop=false;
    return true;
}
// This function is a service callback for tracking a frame, it sets target_frame to the requested frame and srv_mode to FRAME_TRACKER_flag, and sets flag_stop to true
bool trk_frameCB(pckg::track_frame::Request &req,
                 pckg::track_frame::Response &res){
    flag_stop=true;
    // Set the target frame to the requested frame
    target_frame= req.frame;
    srv_mode=FRAME_TRACKER_flag;
    return true;
}


bool trk_coordCB(pckg::track_coord::Request &req,
                 pckg::track_coord::Response &res) {
  // Extract position coordinates from the request message
  double x = req.pos[0];
  double y = req.pos[1];
  double z = req.pos[2];
  
  // Set the transform header
  coordTransform.header.frame_id = "world";
  coordTransform.child_frame_id = "coordFrame";
  
  // Set orientation angles (in degrees)
  int roll = 0;
  int pitch = 0;
  int yaw = 0;
  
  // Create a quaternion from the orientation angles using tf2 library
  tf2::Quaternion q;
  q.setRPY(roll, pitch, yaw);
  
  // Set the transform rotation using the quaternion
  coordTransform.transform.rotation.x = q.x();
  coordTransform.transform.rotation.y = q.y();
  coordTransform.transform.rotation.z = q.z();
  coordTransform.transform.rotation.w = q.w();
  
  // Set the transform translation using the extracted position coordinates
  coordTransform.transform.translation.x = x;
  coordTransform.transform.translation.y = y;
  coordTransform.transform.translation.z = z;
  
  // Set the service mode and response message
  srv_mode = COORDINATE_TRACKER_flag;
  res.ret = true;
  flag_stop=true;
  // Return true to indicate successful service call
  return true;
}





// Main function to run the program
int main(int argc, char** argv){
    // Initialize the ROS node
    ros::init(argc, argv, "coord_tracker");
    ros::NodeHandle nh;
    
    // Subscribe to the joint_states topic to receive the current position of the robot's pan-tilt mechanism
    ros::Subscriber sub = nh.subscribe("wxxms/joint_states", 1000, posCallback);
    // Subscribe to the center topic to receive the coordinates of the target object
    ros::Subscriber subCenter = nh.subscribe("/center", 1000, centerCallback);
    // Initialize the client for the move_robot service in simulation mode
    client = nh.serviceClient<pckg::move_pos_simu>("move_robot");
    // Initialize the client for the move_pos_group service in real robot mode
    clientReal = nh.serviceClient<pckg::move_pos_group>("move_pos_group");
    // Advertise the track_frame service to track an object with a specific frame id
    ros::ServiceServer service = nh.advertiseService("track_frame", trk_frameCB);
    // Advertise the stop service to stop the tracking process
    ros::ServiceServer stopTracker = nh.advertiseService("stop", stopCB);
    // Advertise the track_coord service
    ros::ServiceServer serviceCoord = nh.advertiseService("track_coord", trk_coordCB);
    // Check if the robot is in real or simulation mode
    ros::param::get("/is_real", real);
    // Initialize the coordinate transform message header
    coordTransform.header.stamp = ros::Time::now();
    // Initialize the static transform broadcaster for the coordinate transform
    static tf2_ros::StaticTransformBroadcaster broadcaster;

    
    // Main loop
while (ros::ok()) {
   // Check the current tracking mode and execute the corresponding tracking function
    switch (srv_mode) {
  case FRAME_TRACKER_flag:
    std::cout << "FRAME TRACKER";
    track_frame(target_frame);
    srv_mode=0;
    break;
  case COORDINATE_TRACKER_flag:
    std::cout << "COORDINATE TRACKER";
    broadcaster.sendTransform(coordTransform);
    track_frame(coordTransform.child_frame_id);
    srv_mode=0;
    break;
  case 0:
    ros::spinOnce();
    break;
    }
}
    
    
    
    ros::spin();
    return 0;
}
