---
sort: 1
---
# Sensors & Usage

## Overview

The sensor setup is illustrated in [Fig. 1](#fig-harware). The corresponding ROS topics are reported in [Tab. 1](#tab-sensor-and-topic).

<a name="fig-hardware"></a>
<p align="center">
    <img src="./images/hardware.jpg" alt="Hardware Setup" width="50%"/>
</p>
<p style="text-align: center;">Fig 1. The research UAV with its sensors and corresponding coordinate frames </p>

<br>

<a name="tab-sensor-and-topic"></a>
<p style="text-align: center;">Table 1. Sensors and their ROS topics</p>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:middle}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:middle}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-c3ow">No.</th>
    <th class="tg-c3ow">Sensor</th>
    <th class="tg-c3ow">Manufacturer<br>&amp; Product name</th>
    <th class="tg-c3ow">ROS topic name</th>
    <th class="tg-c3ow">Message Type</th>
    <th class="tg-c3ow">Nominal Rate</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-c3ow" rowspan="3">1</td>
    <td class="tg-c3ow" rowspan="3">IMU</td>
    <td class="tg-c3ow" rowspan="3">VectorNav<br>VN100</td>
    <td class="tg-0pky">/imu/imu</td>
    <td class="tg-0pky">sensor_msgs/Imu</td>
    <td class="tg-c3ow">385 Hz</td>
  </tr>
  <tr>
    <td class="tg-0pky">/imu/magnetic_field</td>
    <td class="tg-0pky">sensor_msgs/MagneticField</td>
    <td class="tg-c3ow">385 Hz</td>
  </tr>
  <tr>
    <td class="tg-0pky">/imu/temperature</td>
    <td class="tg-0pky">sensor_msgs/Temperature</td>
    <td class="tg-c3ow">385 Hz</td>
  </tr>
  <tr>
    <td class="tg-c3ow" rowspan="2">2</td>
    <td class="tg-c3ow" rowspan="2">Horizontal Lidar</td>
    <td class="tg-c3ow" rowspan="2">Ouster<br>OS1-16 gen 1</td>
    <td class="tg-0pky">/os1_cloud_node1/imu</td>
    <td class="tg-0pky">sensor_msgs/Imu</td>
    <td class="tg-c3ow">100 Hz</td>
  </tr>
  <tr>
    <td class="tg-0pky">/os1_cloud_node1/points</td>
    <td class="tg-0pky">sensor_msgs/PointCloud2</td>
    <td class="tg-c3ow">10 Hz</td>
  </tr>
  <tr>
    <td class="tg-c3ow" rowspan="2">3</td>
    <td class="tg-c3ow" rowspan="2">Vertical Lidar</td>
    <td class="tg-c3ow" rowspan="2">Ouster<br>OS1-16 gen 1</td>
    <td class="tg-0pky">/os1_cloud_node2/imu</td>
    <td class="tg-0pky">sensor_msgs/Imu</td>
    <td class="tg-c3ow">100 Hz</td>
  </tr>
  <tr>
    <td class="tg-0pky">/os1_cloud_node2/points</td>
    <td class="tg-0pky">sensor_msgs/PointCloud2</td>
    <td class="tg-c3ow">10 Hz</td>
  </tr>
  <tr>
    <td class="tg-c3ow">4</td>
    <td class="tg-c3ow">Camera 1</td>
    <td class="tg-c3ow">uEye 1221 LE<br>(monochome)</td>
    <td class="tg-0pky">/left/image_raw</td>
    <td class="tg-0pky">sensor_msgs/Image</td>
    <td class="tg-c3ow">10 Hz</td>
  </tr>
  <tr>
    <td class="tg-c3ow">5</td>
    <td class="tg-c3ow">Camera 2</td>
    <td class="tg-c3ow">uEye 1221 LE<br>(monochome)</td>
    <td class="tg-0pky">/right/image_raw</td>
    <td class="tg-0pky">sensor_msgs/Image</td>
    <td class="tg-c3ow">10 Hz</td>
  </tr>
  <tr>
    <td class="tg-c3ow" rowspan="3">6</td>
    <td class="tg-c3ow" rowspan="3">UWB</td>
    <td class="tg-c3ow" rowspan="3">Humatic P440</td>
    <td class="tg-0pky">/uwb_endorange_info</td>
    <td class="tg-0pky">uwb_driver/UwbRange</td>
    <td class="tg-c3ow">68.571 Hz</td>
  </tr>
  <tr>
    <td class="tg-0pky">/uwb_exorange_info</td>
    <td class="tg-0pky">uwb_driver/UwbEcho</td>
    <td class="tg-c3ow">5.714 Hz</td>
  </tr>
  <tr>
    <td class="tg-0pky">/node_pos_sc</td>
    <td class="tg-0pky">nav_msgs/Path</td>
    <td class="tg-c3ow">5.714 Hz</td>
  </tr>
  <tr>
    <td class="tg-c3ow">7</td>
    <td class="tg-c3ow">3D Laser Tracker</td>
    <td class="tg-c3ow">Leica MS60<br>TotalStation</td>
    <td class="tg-0pky">/leica/pose/relative</td>
    <td class="tg-0pky">geometry_msgs/PoseStamped</td>
    <td class="tg-c3ow">20 Hz</td>
  </tr>
</tbody>
</table>

## IMU

The IMU being used here is a 9-DoF inertia sensor. The frame of reference attached to this sensor is considered the _body frame_ of the whole setup.

<p align="center">
    <img src="./images/vn100.jpg" alt="Hardware Setup" width="30%"/>
</p>
<p style="text-align: center;">Fig 2. The IMU frame of reference </p> <a name="fig-hardware"></a>

Internally, a filter fuses gyroscope, acceleration, and magnetic field measurements and outputs the orientation result on the `/imu/imu` topic. Though our dataset does not have orientation groundtruth, user can consider this orientation estimate as one.

## Cameras
The two cameras are externally triggered to capture images at the same time. For images triggered at the same time, their time stamps are different by **at most 3 ms**. This satisfies the default hardcoded threshold in VINS-Fusion. See our tutorial on how to run VINS-Fusion with the dataset [here]().

## Lidar

The Lidar model used for this dataset is OS1-16 gen 1 from Ouster. Each message under the topic `/os1_cloud_node1/points` or `/os1_cloud_node2/points` corresponds to a full 360&deg; scan, which can be converted to a pointcloud of resolution 16x1014. Notice that besides the common x, y, z, intensity fields, each point in the pointcloud also contains time, reflectivity, ring, noise, range information of the laser firing.
To fully access these information, add the following definition of the Ouster point type to your code:

```cpp
struct PointXYZIRT
{
    PCL_ADD_POINT4D;
    float intensity;
    uint32_t t;
    uint16_t reflectivity;
    uint8_t  ring;          // The channel index
    uint16_t noise;
    uint32_t range;         // The distance measurement
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW
} EIGEN_ALIGN16;

POINT_CLOUD_REGISTER_POINT_STRUCT(PointXYZIRT,
                                  (float, x, x)
                                  (float, y, y)
                                  (float, z, z)
                                  (float, intensity, intensity)
                                  (uint32_t, t, t)
                                  (uint16_t, reflectivity, reflectivity)
                                  (uint8_t,  ring, ring)
                                  (uint16_t, noise, noise)
                                  (uint32_t, range, range))
```

Below is an example callback that converts the ros message `sensor_msgs/PointCloud2` to an object of type `pcl::Pointcloud<PointXYZIRT>` defined above:

```cpp
// Global variable to store the cloud data
pcl::PointCloud<PointXYZIRT>::Ptr laserCloudIn;

// Callback of topic /os1_cloud_node1/points
void cloudHandler(const sensor_msgs::PointCloud2::ConstPtr &msg)
{
    laserCloudIn->clear();
    pcl::fromROSMsg(*msg, *laserCloudIn);
}

// Subscribe to /os1_cloud_node1/points and allocate memory for the pointcloud somewhere in the main function
// Example: laserCloudIn = pcl::PointCloud<PointXYZIRT>::Ptr(new pcl::PointCloud<PointXYZIRT>());
```

## UWB

The UWB sensors used in this work are the P440 UWB Ranging and Communication sensor by Humatics.
We converted the driver's custom message types to ROS messages, with some additional fields. The definitions can be found in the following [package](https://github.com/ntu-aris/uwb_driver). You can simply `git clone` the package to your workspace and do `catkin_make`. The following headers can be included in your code

```cpp
#include "uwb_driver/UwbRange.h"
#include "uwb_driver/UwbEcho.h"
```

<p align="center">
    <img src="./images/ranging_scheme.jpg" alt="Ranging Scheme" width="60%"/>
</p>
<p style="text-align: center;">Fig 3. Illustration of the ranging scheme </p> <a name="fig-ranging"></a>

[Fig. 3](#fig-harware) illustrates our ranging scheme with 4 onboard UWB ranging nodes 200.A, 200.B, 201.A, 201.B, called requesters; and 3 anchor nodes with ID number 100, 101, 102, called responders. Each range measurement contains the IDs of both requester ID and the responder ID. By our subjective design in [Fig. 3](#fig-ranging) above, the three anchor nodes create a coordinate frame of referece {W}, where the anchor 100 is 1.5 m above the origin, the anchor 100 is 1.5 m above the +x axis, and anchor 101 is at the same height and on the -y side of the space.

Let us take the example of the distance measurement from the onboard node 201.A and the anchor 101 (in the absence of noise) as follows
<p align="center">
<a href="https://www.codecogs.com/eqnedit.php?latex=d_{201.A\to&space;101}&space;=&space;\left\|\bf{p}&space;&plus;&space;\bf{R}.\bf{x}_{201.A}&space;-&space;\bf{y}_{101}&space;\right\|" target="_blank"><img src="https://latex.codecogs.com/png.latex?d_{201.A\to&space;101}&space;=&space;\left\|\bf{p}&space;&plus;&space;\bf{R}.\bf{p}_{201.A}&space;-&space;\bf{p}_{101}&space;\right\|" title="d_{201.A\to 101} = \left\|\bf{p} + \bf{R}.\bf{x}_{201.A} - \bf{y}_{101} \right\|" /></a>
</p>

In this case <img src="https://latex.codecogs.com/png.latex?\bf{p}"/> is the position of the UAV's body center, <img src="https://latex.codecogs.com/png.latex?\bf{R}"/> is its orientation, <img src="https://latex.codecogs.com/png.latex?\bf{p}_{201.A}"/> is the position of the requester node in the _body frame_, and <img src="https://latex.codecogs.com/png.latex?\bf{p}_{101}"/> is the position of the responder node in the user-defined frame {W}.

In a typical navigation system, <img src="https://latex.codecogs.com/png.latex?\bf{p}"/> and <img src="https://latex.codecogs.com/png.latex?\bf{R}"/> will be the unknown quantities that one needs to estimate, while <img src="https://latex.codecogs.com/png.latex?\bf{p}_{201.A}"/> and <img src="https://latex.codecogs.com/png.latex?\bf{p}_{101}"/> are priors that can be retrieved from the `uwb_driver::UwbRange` message. [Fig. 4](#fig-range-msg) shows where these priors can be obtained in a message under the topic `/uwb_endorange_info`.

<p align="center">
    <img src="./images/uwb_range_msg.jpg" alt="range message" width="25%"/>
</p>
<p style="text-align: center;">Fig 4. The content of a range message </p> <a name="fig-range-msg"></a>

Note that the anchor positions are calculated by simple triangulation of anchor-to-anchor distance under the topic `/uwb_exorange_info` at the beginning of the data collection test. User can opt to estimating these on their own by subscribing to the topic `/uwb_exorange_info`.