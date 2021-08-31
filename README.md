# M2DGR： a Multi-modal and Multi-scenario Dataset for Ground Robots 
<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/big.png" width="800px">

</div>
<p align="center">Sample Images</p>

## Abstract:

  Intelligent ground robots  have significant application prospects due to their capability to fulfill special missions in complex and dangerous environments.Simultaneous Localization and Mapping (SLAM) is a critical module of robot navigation.Although the research of SLAM has achieved great progress in the past decades,it still has a long way towards mature deployment.Unfortunately, most of the existing datasets of ground robots have limited scenes and scarce categories of sensors, which restricts the development of localization algorithms for ground robots in variable and complex real-world environments,especially in darkness,fog,sharp turns.
Here we introduce M2DGR:a new large-scale dataset collected by a ground robot which contains a full sensor-suite include surrounding and sky-pointing RGB cameras,an infrared camera,an event camera,an inertial measurement unit(IMU),a LIDAR,a consumer grade Global Navigation Satellite System (GNSS) receiver and a GNSS-IMU navigation system with real-time kinematic (RTK) GNSS suite providing centimetre accurate global positioning.The dataset include ample trajectories in highly diverse scenes covering rooms, elevators, streets, parking lots and so on.

  Based on M2DGR, we evaluate the performance of a few state-of-the-art of SLAM algorithms in a few real-world environments, and analyze the scenarios where ground robots are not robust to.For the benefit of the research community,we make the dataset and evaluation results public.Our dataset,development toolkits and more infomation are now available through the link in the footnote.

keywords:Dataset, Multi-model, Multi-scenario,Ground Robot

## 1.Sensor Setup
### 1.1 Sensor parameters
<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/car.png" width="600px">
</div>

* **LIDAR** Velodyne VLP-32C, 360 Horizontal Field of View (FOV),-30 to +10 vertical FOV,10Hz,Max Range 200 m,Range Resolution 3 cm, Horizontal Angular Resolution 0.2°.  

* **RGB Camera** FLIR Pointgrey CM3-U3-13Y3C-CS,fish-eye lens,1280*1024,190 HFOV,190 V-FOV, 15 Hz  
* **GNSS** Ublox M8T, GPS/BeiDou, 1Hz  
* **Infrared Camera**,PLUG 617,640*512,90.2 H-FOV,70.6 V-FOV,25Hz;  
* **V-I Sensor**,Realsense d435i,RGB/Depth 640*480,69H-FOV,42.5V-FOV,15Hz;IMU 6-axix, 200Hz  
* **Event Camera** Inivation DVXplorer, 640*480,15Hz;  
* **IMU**,Handsfree A9,9-axis,150Hz;  
* **GNSS-IMU** Xsens Mti 680G. GNSS-RTK,localization precision 2cm,100Hz;IMU 9-axis,100 Hz;  
* **Laser Scanner** Leica MS60, localization 1mm+1.5ppm  

### 1.2 Rosbag Topics

* LIDAR: `/velodyne_points` 

* RGB Camera: 
`/camera/left/image_raw/compressed `,  
`/camera/right/image_raw/compressed `,  
`/camera/third/image_raw/compressed `,  
`/camera/fourth/image_raw/compressed `,  
`/camera/fifth/image_raw/compressed `,  
`/camera/sixth/image_raw/compressed `,  
`/camera/head/image_raw/compressed `  
* GNSS Ublox M8T:  
`/ublox/aidalm `,  
`/ublox/aideph `,  
`/ublox/fix `,  
`/ublox/fix_velocity `,  
`/ublox/monhw `,  
`/ublox/navclock `,  
`/ublox/navpvt `,  
`/ublox/navsat `,  
`/ublox/navstatus `,  
`/ublox/rxmraw `  


* Infrared Camera:`/thermal_image_raw ` 
* V-I Sensor:  
`/camera/color/image_raw/compressed `,  
`/camera/imu`
* Event Camera:  
`/dvs/events`,  
`/dvs_rendering/compressed`
* IMU: `/handsfree/imu `
 

## 2.Dataset Sequences


<div align=center>

<img src="https://github.com/sjtuyinjie/mypics/blob/main/dynamic.gif" width="500px">
</div>

### 2.1 Outdoors

<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/outdoor.png" width="500px">



Sequence Name|Collection Date|Total Size|Duration|Features|Download Link
--|:--|:--:|--:|--:|--:
gate_01|2021-07-31|16.4g|172s|dark,around gate|[To be done](https://github.com/sjtuyinjie/M2DGR)
gate_02|2021-07-31|27.3g|327s|dark,loop back|[To be done](https://github.com/sjtuyinjie/M2DGR)
gate_03|2021-08-04|21.9g|283s|day|[To be done](https://github.com/sjtuyinjie/M2DGR)


Sequence Name|Collection Date|Total Size|Duration|Features|Download Link
--|:--|:--:|--:|--:|--:
rotation_01|2021-08-03|23.3g|234s|rotation,figure of 8|[To be done](https://github.com/sjtuyinjie/M2DGR)
rotation_02|2021-08-07|27.3g|244s|rotation,figure of 8|[To be done](https://github.com/sjtuyinjie/M2DGR)

Sequence Name|Collection Date|Total Size|Duration|Features|Download Link
--|:--|:--:|--:|--:|--:
street_01|2021-08-06|75.8g|1028s|street and buildings,night,zigzag,long-term|[To be done](https://github.com/sjtuyinjie/M2DGR)
street_02|2021-08-03|83.2g|1227s|day,long-term|[To be done](https://github.com/sjtuyinjie/M2DGR)
street_03|2021-08-06|21.3g|354s|night,back and fourth,full speed|[To be done](https://github.com/sjtuyinjie/M2DGR)
street_04|2021-08-03|48.7g|858s|night,around lawn,loop back|[To be done](https://github.com/sjtuyinjie/M2DGR)
street_05|2021-08-04|27.4g|469s|night,staight line|[To be done](https://github.com/sjtuyinjie/M2DGR)
street_06|2021-08-04|35.0g|494s|night,one turn|[To be done](https://github.com/sjtuyinjie/M2DGR)
street_07|2021-08-06|77.2g|929s|dawn,zigzag,sharp turns|[To be done](https://github.com/sjtuyinjie/M2DGR)
street_08|2021-08-06|31.2g|491s|night,loop back,zigzag|[To be done](https://github.com/sjtuyinjie/M2DGR)
street_09|2021-08-07|83.2g|907s|day,zigzag|[To be done](https://github.com/sjtuyinjie/M2DGR)
street_010|2021-08-07|86.2g|910s|day,zigzag|[To be done](https://github.com/sjtuyinjie/M2DGR)
walk_01|2021-08-04|21.5g|291s|day,back and fourth|[To be done](https://github.com/sjtuyinjie/M2DGR)
</div>
  
### 2.2 Indoors
<div align=center>

Sequence Name|Collection Date|Total Size|Duration|Features|Download Link
--|:--|:--:|--:|--:|--:
hall_01|2021-08-01|29.1g|351s|randon walk|[To be done](https://github.com/sjtuyinjie/M2DGR)
hall_02|2021-08-08|15.0g|128s|randon walk|[To be done](https://github.com/sjtuyinjie/M2DGR)
hall_03|2021-08-08|20.5g|164s|randon walk|[To be done](https://github.com/sjtuyinjie/M2DGR)
hall_04|2021-08-15|17.7g|181s|randon walk|[To be done](https://github.com/sjtuyinjie/M2DGR)
hall_05|2021-08-15|35.1g|402s|circle|[To be done](https://github.com/sjtuyinjie/M2DGR)



<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/lift.jpg" width="500px">


Sequence Name|Collection Date|Total Size|Duration|Features|Download Link
--|:--|:--:|--:|--:|--:
lift_01|2021-08-04|18.4g|225s|lift|[To be done](https://github.com/sjtuyinjie/M2DGR)
lift_02|2021-08-04|43.6g|488s|lift|[To be done](https://github.com/sjtuyinjie/M2DGR)
lift_03|2021-08-15|22.3g|252s|lift|[To be done](https://github.com/sjtuyinjie/M2DGR)
lift_04|2021-08-15|27.8g|299s|lift|[To be done](https://github.com/sjtuyinjie/M2DGR)



<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/room.png" width="500px">


Sequence Name|Collection Date|Total Size|Duration|Features|Download Link
--|:--|:--:|--:|--:|--:
room_01|2021-07-30|14.0g|72s|room,bright|[To be done](https://github.com/sjtuyinjie/M2DGR)
room_02|2021-07-30|15.2g|75s|room,bright|[To be done](https://github.com/sjtuyinjie/M2DGR)|[To be done](https://github.com/sjtuyinjie/M2DGR)
room_03|2021-07-30|26.1g|128s|room,bright|[To be done](https://github.com/sjtuyinjie/M2DGR)
room_dark_01|2021-07-30|20.2g|111s|room,dark|[To be done](https://github.com/sjtuyinjie/M2DGR)
room_dark_02|2021-07-30|30.3g|165s|room,dark|[To be done](https://github.com/sjtuyinjie/M2DGR)
room_dark_03|2021-07-30|22.7g|116s|room,dark|[To be done](https://github.com/sjtuyinjie/M2DGR)
room_dark_04|2021-08-15|29.3g|143s|room,dark|[To be done](https://github.com/sjtuyinjie/M2DGR)
room_dark_05|2021-08-15|33.0g|159s|room,dark|[To be done](https://github.com/sjtuyinjie/M2DGR)
room_dark_06|2021-08-15|35.6g|172s|room,dark|[To be done](https://github.com/sjtuyinjie/M2DGR)
</div>
  
### 2.3 alternative indoors and outdoors
  
<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/door.jpg" width="500px">



Sequence Name|Collection Date|Total Size|Duration|Features|Download Link
--|:--|:--:|--:|--:|--:
door_01|2021-08-04|35.5g|461s|outdoor to indoor to outdoor,long-term|[To be done](https://github.com/sjtuyinjie/M2DGR)
door_02|2021-08-04|10.5g|127s|outdoor to indoor,short-term|[To be done](https://github.com/sjtuyinjie/M2DGR)

</div>



## 3.Development Toolkits
### 3.1 to fetch images
* For rosbag users, first make image view
~~~
roscd image_view
rosmake image_view
sudo apt-get install mjpegtools
~~~

open a terminal,type roscore.And then open another,type
~~~
rosrun image_transport republish compressed in:=/camera/color/image_raw raw out:=/camera/color/image_raw respawn="true"
~~~
* For non-rosbag users,just take advantage of following script  [fetch images](https://github.com/sjtuyinjie/toolkit/blob/main/fetchrgbd.py)
### 3.2 Calibration
For camera intrinsics,visit [Ocamcalib](http://sites.google.com/site/scarabotix/ocamcalib-toolbox) for omnidirectional model.
visit [vinsfusion](https://github.com/HKUST-Aerial-Robotics/VINS-Fusion) for pinhole and MEI model.
use [opencv](https://opencv.org/) for Kannala Brandt model

For IMU intrinsics,visit [imu_utils](https://github.com/gaowenliang/imu_utils)

For extrinsics between cameras and IMU,visit [kalibr](https://github.com/ethz-asl/kalibr)
For extrinsics between Lidar and IMU,visit [lidar imu calib](https://github.com/APRIL-ZJU/lidar_IMU_calib) 
For extrinsics between cameras and Lidar, visit [autoware](https://github.com/Autoware-AI/autoware.ai) 
### 3.3 to get RINEX files
To make use of GNSS raw measurements, we use [Link](https://github.com/TakahashiJinxu/ublox2rinex) toolkit.

### 3.4 ROS drivers for UVC cameras 
We write a ROS driver for UVC cameras to record our thermal-infrared image. 
[UVC ROS driver](https://github.com/sjtuyinjie/toolkit/tree/main/thermal_ws/src)


## 4.License
This work is licensed under MIT license. International License and is provided for academic purpose. If you are interested in our project for commercial purposes, please contact us .

