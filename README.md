# M2DGR： a Multi-modal and Multi-scenario Dataset for Ground Robots 
<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/big.png" width="800px">

</div>
<p align="center">Sample Images</p>

## Abstract:

  Intelligent ground robots  have significant application prospects due to their capability to fulfill special missions in complex and dangerous environments.Simultaneous Localization and Mapping (SLAM) is a critical module of robot navigation.Although the research of SLAM has achieved great progress in the past decades,it still has a long way towards mature deployment.Unfortunately, most of the existing datasets of ground robots have limited scenes and scarce categories of sensors, which restricts the development of localization algorithms for ground robots in variable and complex real-world environments,especially in darkness,fog,sharp turns.
Here we introduce M2DGR:a new large-scale dataset collected by a ground robot which contains a full sensor-suite include surrounding and sky-pointing RGB cameras,an infrared camera,an event camera,an inertial measurement unit(IMU),a LIDAR,a consumer grade Global Navigation Satellite System (GNSS) receiver and a GNSS-IMU navigation system with real-time kinematic (RTK) GNSS suite providing centimetre accurate global positioning.The dataset include ample trajectories in highly diverse scenes covering rooms, elevators, streets, parking lots and so on.

  Based on M2DGR, we evaluate the performance of a few state-of-the-art of SLAM algorithms in a few real-world environments, and analyze the scenarios where ground robots are not robust to.For the benefit of the research community,we make the dataset and evaluation results public.Our dataset,development toolkits and more infomation are now available through the link in the footnote.

Keywords:Dataset, Multi-model, Multi-scenario,Ground Robot

## Main Contributions:
* We collected long-term challenging sequences for ground robots both indoors and outdoors with a complete sensor suite, which includes six surround-view fish-eye cameras, a sky-pointing fish-eye camera, a perspective color camera, an event camera, an infrared camera, a 32-beam LIDAR, two GNSS receivers, and two IMUs. To our knowledge, this is the first SLAM dataset focusing on ground robot navigation with such rich sensory information.
* The forward-looking infrared camera and event camera enable researchers to develop initiative methods to address the challenges of dark and highly dynamic scenes. Furthermore, a Ublox M8T is used to receive GNSS raw signals outdoors, and a fish-eye camera is used to capture the sky view. With sky image information, it is possible to detect the number of visible satellites via image segmentation, thus monitoring the quality of real-time GNSS signals. Therefore, our dataset can support SLAM research relevant to GNSS signals.
* We launched a comprehensive benchmark for ground robot navigation. On this benchmark, we evaluated existing state-of-the-art SLAM algorithms of various designs and analyzed their characteristics and defects individually.




## 1.Sensor Setup
### 1.1 Sensor parameters
<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/car.png" width="400px">
</div>

<p align="left">The GAEA Ground Robot Equipped with a Full Sensor Suite.The directions of the sensors are marked in different colors,red for X,green for Y and blue for Z.</p>



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


**We make public ALL THE SEQUENCES now.**

<div align=center>

<img src="https://github.com/sjtuyinjie/mypics/blob/main/dynamic.gif" width="400px">
</div>

<p align="left">A sample video with fish-eye image(both forward-looking and sky-pointing),perspective image,thermal-infrared image,event image and lidar odometry</p>

### 2.1 Indoors
<div align=center>

<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/lift.jpg" width="400px">

<p align="left">Lift Sequences:The robot hang around a hall on the first floor and then went to the second floor by lift.A laser scanner track the trajectory outside the lift</p>
  

  

Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag
--|:--|:--:|--:|--:|--:
lift_01|2021-08-04|18.4g|225s|lift|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZp-yCPxrxNBg5cM_aWualABVCNktGm29u0RA2UGVmyp2Q?e=BChvEN)
lift_02|2021-08-04|43.6g|488s|lift|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EfXP5V6Yi3tEvQL-Gbaq4QcBEVNxqacC-tltlzYnFnW7zQ?e=vgyEzS)
lift_03|2021-08-15|22.3g|252s|lift|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EWWG7OgCmTpIj_VZixYTkzsBew8ONoMrI13acbZ_8svV3g?e=1OVDYA)
lift_04|2021-08-15|27.8g|299s|lift|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/ETrPaBIVaV1EtTVUG9effPIBK1LiJ3pGK93jAdhLZU_Pjg?e=ekVtWl)

  
  
  

Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag
--|:--|:--:|--:|--:|--:
hall_01|2021-08-01|29.1g|351s|randon walk|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EWQ2bcxWRgZLtK_eSIgnNmoB_ozAyXeEU_MmlVqPZeiB7Q?e=BKghlK)
hall_02|2021-08-08|15.0g|128s|randon walk|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EaAEMKhvsgJCn0bSvlNOENkB-jVOOH4gxrxATSCbwPdUng?e=xCXoXE)
hall_03|2021-08-08|20.5g|164s|randon walk|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EWyFq_niW4xIkk9pg2tLVfMBfT9JaC0ZUa0CogD6sND6Ew?e=ODUNxq)
hall_04|2021-08-15|17.7g|181s|randon walk|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EV0oYa2MNi1HqmhvCM1pbboBAqQlij03bPifdyd_cqZUDA?e=P56O61)
hall_05|2021-08-15|35.1g|402s|circle|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EQRFrzmO2BxFmeAZV_ifTpsBJjdIM7XjQAnmnuDdhE9-Vg?e=WDZwUt)





<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/room.png" width="400px">

<p align="center">Room Sequences:under a Motion-capture system with twelve cameras.</p>
  
Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag
--|:--|:--:|--:|--:|--:
room_01|2021-07-30|14.0g|72s|room,bright|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EfG372xf9h9Dl0xjm5XcDgoB7JP0SsWJfAfpfO2CU-QOmw?e=XINjaC)
room_02|2021-07-30|15.2g|75s|room,bright|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EaVK6tu2gs5NnOpAhhWrTPEBK_cpPGiq_1vDXET2GTCeNQ?e=2QpXCE)
room_03|2021-07-30|26.1g|128s|room,bright|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZfZZNphLARHl0H4zLbM_kABbwkgl5efzhVqUeia8T-adQ?e=aWHDbk)
room_dark_01|2021-07-30|20.2g|111s|room,dark|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EXx8PoEtySBCvzFbYnQrFIkBDnjodZJ97_EVvXeSHW3snw?e=ZVsp9L)
room_dark_02|2021-07-30|30.3g|165s|room,dark|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/ERbnfghuh-NFo9W0Sev8cggBQQiTQLzjFiQy5So7j3J9tw?e=KEbKXr)
room_dark_03|2021-07-30|22.7g|116s|room,dark|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EXwiG7vYnsdKh2OotVeQKYsByEtckw39FPXiWLXBrA5kqw?e=0ZR9jg)
room_dark_04|2021-08-15|29.3g|143s|room,dark|[Rosbag]()
room_dark_05|2021-08-15|33.0g|159s|room,dark|[Rosbag]()
room_dark_06|2021-08-15|35.6g|172s|room,dark|[Rosbag]()
</div>



### 2.2 Outdoors

<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/outdoor.png" width="400px">
<p align="center">Outdoor Sequences:all trajectories are mapped in different colors.</p>
  


Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag
--|:--|:--:|--:|--:|--:
gate_01|2021-07-31|16.4g|172s|dark,around gate|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/ET3mU1rvdTpEl8VYvC25q7YB5pmPQlwru0jBbQ9iu0oAMA?e=LrKUpJ)
gate_02|2021-07-31|27.3g|327s|dark,loop back|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EY7fHSh4NnxBvemze1JS8TEBy5beLh_xlJ6mdi2IYmeY9w?e=xIcvDe)
gate_03|2021-08-04|21.9g|283s|day|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EUthdjvVIVdFmFxR82jzVqUBQTpsfvvb26pYtb0yj-_hlw?e=6MWwmJ)


Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag
--|:--|:--:|--:|--:|--:
rotation_01|2021-08-03|23.3g|234s|rotation,figure of 8|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EUVwex_LapBFrWV4ZtXocoYBE29aoQkPVdwWGhSFcioEtQ?e=YRRV9L)
rotation_02|2021-08-07|27.3g|244s|rotation,figure of 8|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EeVG96IFCfxDlDLH8xefa3EBEMjCm4_8__V8JZ4ivMGoww?e=FVgjhB)

Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag
--|:--|:--:|--:|--:|--:
street_01|2021-08-06|75.8g|1028s|street and buildings,night,zigzag,long-term|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EeVG96IFCfxDlDLH8xefa3EBEMjCm4_8__V8JZ4ivMGoww?e=FVgjhB)
street_02|2021-08-03|83.2g|1227s|day,long-term|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EQj5QBBHONpFj-hlvXOQBr0BM0NP9nhNuw-X9UtwOMMuNw?e=ZrxudN)
street_03|2021-08-06|21.3g|354s|night,back and fourth,full speed|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EQU95R6TOAZIkaoFuHJLU-kB9qJEIDeEsECB3Gjc9Nmx8A?e=J1AKwY)
street_04|2021-08-03|48.7g|858s|night,around lawn,loop back|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/Ea72BxSXFYhDrp_FGNlJ2ukBx3CQSlv0Wah5nFUJtIntrw?e=4rwi7H)
street_05|2021-08-04|27.4g|469s|night,staight line|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EUClV6vL2zhAicOwwO1WiroBK-fPzTu8K8NtMfgdMAxIqw?e=r50mNo)
street_06|2021-08-04|35.0g|494s|night,one turn|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZ4HAXvNQXRCgRKSLpE3yX0BsM24PkXwAd-NopVc7ueNzA?e=oUw91h)
street_07|2021-08-06|77.2g|929s|dawn,zigzag,sharp turns|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZ4HAXvNQXRCgRKSLpE3yX0BsM24PkXwAd-NopVc7ueNzA?e=oUw91h)
street_08|2021-08-06|31.2g|491s|night,loop back,zigzag|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZ4HAXvNQXRCgRKSLpE3yX0BsM24PkXwAd-NopVc7ueNzA?e=oUw91h)
street_09|2021-08-07|83.2g|907s|day,zigzag|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZ4HAXvNQXRCgRKSLpE3yX0BsM24PkXwAd-NopVc7ueNzA?e=oUw91h)
street_010|2021-08-07|86.2g|910s|day,zigzag|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZ4HAXvNQXRCgRKSLpE3yX0BsM24PkXwAd-NopVc7ueNzA?e=oUw91h)
walk_01|2021-08-04|21.5g|291s|day,back and fourth|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EZn2REI4E2BLurJXTaTDpYcBIMOoO3CKh9dsPbcMeMYTKg?e=R4cSKy)
</div>
  

  
### 2.3 alternative indoors and outdoors
  
<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/door.jpg" width="400px">
<p align="center">Door Sequences:A laser scanner track the robot through a door from indoors to outdoors.</p>


Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag
--|:--|:--:|--:|--:|--:
door_01|2021-08-04|35.5g|461s|outdoor to indoor to outdoor,long-term|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/ERxIk8o_HwlAgbqJ2wwgHl8Br3uBZhyuBbxM2bG_0A6QYA?e=uQr94R)
door_02|2021-08-04|10.5g|127s|outdoor to indoor,short-term|[Rosbag](https://sjtueducn-my.sharepoint.com/:u:/g/personal/594666_sjtu_edu_cn/EWCKNoEfAmxGsahwnJDYWS4BfgEPoONQKR8HAuZA4ng5eg?e=KB9PYF)

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
This work is licensed under MIT license. International License and is provided for academic purpose. If you are interested in our project for commercial purposes, please contact us for further communication.

