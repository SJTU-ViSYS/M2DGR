## Code modification instructions
Since the coordinate system of the sensor used by M2DGR is different from the data of LVI-SAM, it needs to be slightly modified in the internal code, the modification is as follows: 

**1.src/visual_odometry/visual_estimator/initial/initial_alignment.h**
``` c++
    // n(n_in)
    // {
    //     q_lidar_to_cam = tf::Quaternion(0, 1, 0, 0); 
    //     q_lidar_to_cam_eigen = Eigen::Quaterniond(0, 0, 0, 1); 
    // }
     n(n_in)
    {
        q_lidar_to_cam = tf::Quaternion(0, 0, 0, 1);
        q_lidar_to_cam_eigen = Eigen::Quaterniond(1,0,0,0); 
    }
```
``` c++
    // tf::Quaternion q_odom_cam = tf::createQuaternionFromRPY(0, 0, M_PI) * (q_odom_lidar * q_lidar_to_cam);
    tf::Quaternion q_odom_cam = tf::createQuaternionFromRPY(0, 0, M_PI / 2.0) * (q_odom_lidar * q_lidar_to_cam); 
```
**2.src/visual_odometry/visual_estimator/utility/visualization.cpp**
``` c++
// tf::Quaternion q_cam_to_lidar(0, 1, 0, 0);
tf::Quaternion q_cam_to_lidar(0, 0, 0, 1); 
```
``` c++
// static tf::Transform t_odom_world = tf::Transform(tf::createQuaternionFromRPY(0, 0, M_PI), tf::Vector3(0, 0, 0));
static tf::Transform t_odom_world = tf::Transform(tf::createQuaternionFromRPY(0, 0, 0), tf::Vector3(0, 0, 0));
```
**3.src/visual_odometry/visual_feature/feature_tracker_node.cpp**
```c++
    // Comment the following code
    
    // pcl::PointCloud<PointType>::Ptr laser_cloud_offset(new pcl::PointCloud<PointType>());
    // Eigen::Affine3f transOffset = pcl::getTransformation(L_C_TX, L_C_TY, L_C_TZ, L_C_RX, L_C_RY, L_C_RZ);
    // pcl::transformPointCloud(*laser_cloud_in, *laser_cloud_offset, transOffset);
    // *laser_cloud_in = *laser_cloud_offset;
```
