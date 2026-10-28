


# [RA-L & ICRA2022]M2DGR： a Multi-modal and Multi-scenario SLAM Dataset for Ground Robots 

<div align="center">

💎 First Author: [**Jie Yin 殷杰**](https://sjtuyinjie.github.io/)
&emsp;
📝 [[Paper]](https://arxiv.org/abs/2112.13659)
&emsp;
➡️ [[Dataset Extension]](https://github.com/SJTU-ViSYS/M2DGR-plus)
&emsp;
⭐️[[Presentation Video]](https://www.youtube.com/watch?v=73enWUwxJ1k)
&emsp;
🔥[[News]](https://mp.weixin.qq.com/s/J6872xPeBHaxl39jbsHYxg)

[![Author](https://img.shields.io/badge/Author-Jie%20Yin-blue)](https://sjtuyinjie.github.io/)
[![Paper](https://img.shields.io/badge/Paper-M2DGR-yellow)](https://ieeexplore.ieee.org/abstract/document/9664374)
[![Preprint](https://img.shields.io/badge/Preprint-Arxiv-purple)](https://arxiv.org/abs/2112.13659/)
[![Dataset](https://img.shields.io/badge/DatasetExtension-M2DGR+%2B-green)](https://github.com/SJTU-ViSYS/M2DGR-plus)
[![License](https://img.shields.io/badge/License-MIT-cyan)]()
[![Video](https://img.shields.io/badge/Video-red)](https://www.youtube.com/watch?v=73enWUwxJ1k)
[![News](https://img.shields.io/badge/News-orange)](https://mp.weixin.qq.com/s/J6872xPeBHaxl39jbsHYx)

[![stars](https://img.shields.io/github/stars/SJTU-ViSYS/M2DGR.svg)](https://github.com/SJTU-ViSYS/M2DGR)
[![forks](https://img.shields.io/github/forks/SJTU-ViSYS/M2DGR.svg)](https://github.com/SJTU-ViSYS/M2DGR)
[![open issues](https://img.shields.io/github/issues-raw/SJTU-ViSYS/M2DGR)](https://github.com/SJTU-ViSYS/M2DGR/issues)
[![issue resolution](https://img.shields.io/github/issues-closed-raw/SJTU-ViSYS/M2DGR)](https://github.com/SJTU-ViSYS/M2DGR/issues)

</div>

<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/bigsix.jpg" width="800px">

</div>
<p align="center">Figure 1. Sample Images</p>

# 🎯 Notice
## 2026.10.22: Old download links are not working, I'm uploading these bags to a new onedrive account as soon as possible! We will try to solve this in one or two weeks!




## 🎯 Notice


We strongly recommend that the newly proposed SLAM algorithm be tested on our [M2DGR](https://github.com/SJTU-ViSYS/M2DGR) / [M2DGR-plus](https://github.com/SJTU-ViSYS/M2DGR-plus) /[M3DGR](https://github.com/sjtuyinjie/M3DGR)/ [Ground-Challenge](https://github.com/sjtuyinjie/Ground-Challenge) benchmark, because our data has following features:

1. **Rich sensory information** including vision, lidar, IMU, GNSS,event, thermal-infrared images and so on
2. **Various scenarios** in real-world environments including lifts, streets, rooms, halls and so on.
3. Our dataset brings **great challenge** to existing cutting-edge SLAM algorithms including [LIO-SAM](https://github.com/TixiaoShan/LIO-SAM) and [ORB-SLAM3](https://github.com/UZ-SLAMLab/ORB_SLAM3). If your proposed algorihm outperforms these SOTA systems on our benchmark, your paper will be much more convincing and valuable.
4. 🔥 Extensive excellent **open-source** projects have been built or evaluated on M2DGR/M2DGR-plus so far, for examples, [**Ground-Fusion**](https://github.com/SJTU-ViSYS/Ground-Fusion), [LVI-SAM-Easyused](https://github.com/Cc19245/LVI-SAM-Easyused), [SI-LIO](https://github.com/USTC-AIS-Lab/SI-LIO), [MM-LINS](https://github.com/lian-yue0515/MM-LINS/), [Log-LIO](https://github.com/tiev-tongji/LOG-LIO), [LIGO](https://github.com/Joanna-HE/LIGO.), [Swarm-SLAM](https://github.com/MISTLab/Swarm-SLAM), [VoxelMap++](https://github.com/uestc-icsp/VoxelMapPlus_Public), [GRIL-Cali](https://github.com/Taeyoung96/GRIL-Calib), [LINK3d](https://github.com/YungeCui/LinK3D), [i-Octree](https://github.com/zhujun3753/i-octree), [LIO-EKF](https://github.com/YibinWu/LIO-EKF), [Fast-LIO ROS2](https://github.com/Lee-JaeWon/FAST_LIO_ROS2), [HC-LIO](https://github.com/piluohong/hc_lio), [LIO-RF](https://github.com/YJZLuckyBoy/liorf), [PIN-SLAM](https://github.com/PRBonn/PIN_SLAM), [LOG-LIO2](https://github.com/tiev-tongji/LOG-LIO2), [Section-LIO](https://github.com/mengkai98/Section-LIO), [I2EKF-LO](https://github.com/YWL0720/I2EKF-LO), [Liloc](https://github.com/Yixin-F/LiLoc), [BMBL](https://github.com/YixFeng/Block-Map-Based-Localization), [Light-LOAM](https://github.com/BrenYi/Light-LOAM), [faster_lio_localization](https://github.com/Liansheng-Wang/faster_lio_localization), [Fast-LIVO2](https://github.com/1391741823/FAST-LIVO2-SE-CN), [D-Li-Init](https://github.com/lian-yue0515/d-li-init) and so on!


## Table of Contents
1. 🚩 [**News & Updates**](#news--updates)
2. [Introduction](#introduction)
   - [Abstract](#abstract)
   - [Main Contributions](#main-contributions)
   - [Video](#video)
6. [License](#license)
7. [Sensor Setup](#sensor-setup)
    - [Acquisition Platform](#acquisition-platform)
    - [Sensor Parameters](#sensor-parameters)
8. ⭐️ [**Dataset Sequences**](#dataset-sequences)
    - [Outdoors](#outdoors)
    - [Indoors](#indoors)
    - [Alternative Indoors and Outdoors](#alternative-indoors-and-outdoors)
9. 📝 [**Configuration Files**](#configuration-files)
10. [Development Toolkits](#development-toolkits)
    - [Extracting Images](#extracting-images)
    - [Evaluation](#evaluation)
    - [Calibration](#calibration)
    - [Getting RINEX Files](#getting-rinex-files)
    - [ROS Drivers for UVC Cameras](#ros-drivers-for-uvc-cameras)
11. [Star History](#star-history)
11. [Acknowledgement](#acknowlegement)


> [!TIP]
> Check the table of contents above for a quick overview. And check the below news for lateset updates, especially the list of projects based on M2DGR.



## News & Updates

- **🔥`2026/06/14`**: We are excited to release a preview version of **[Ultra-Fusion](https://github.com/sjtuyinjie/Ultra-Fusion)** system,which unifies WIO, VIO, LIO, and LVIO in one configurable optimization framework, with optional wheel/GNSS fusion and online calibration.

- **`2026/03/22`**: We are excited to see that M2DGR continues to inspire a growing body of follow-up works. To facilitate tracking the latest developments, we provide a time-sorted list of papers citing M2DGR: **[Latest Works Citing M2DGR](https://scholar.google.com/scholar?hl=en&as_sdt=2005&sciodt=0,5&cites=8389972487590610075&scipsc=&q=&scisbd=1)**.

- **🔥`2025/06/16`**: Introducing our new paper on IROS2025:"Towards Robust Sensor-Fusion Ground SLAM: A Comprehensive Benchmark and A Resilient Framework" is accepted to IROS2025!. code: **[Ground-Fusion++](https://github.com/sjtuyinjie/Ground-Fusion2)**, dataset: **[M3DGR](https://github.com/sjtuyinjie/M3DGR)**!
- **🏆 `2025/01/08`** M2DGR is awarded **ESI HIGHLY CITED PAPER (TOP 1%)**!
- **`2024/10/11`**: Introducing **[M2DGR-benchmark](https://github.com/sjtuyinjie/M2DGR-Benchmark)**, benchmarking newest SOTA LiDAR-visual SLAM alrogithms on both M2DGR and M2DGR-plus!

- **`2024/07/15`**: Introducing a list of LiDAR-Visual SLAM systems at [awesome-LiDAR-Visual-SLAM](https://github.com/sjtuyinjie/awesome-LiDAR-Visual-SLAM), wheel-based SLAM systems at [awesome-wheel-slam](https://github.com/sjtuyinjie/awesome-wheel-slam), and Isaac Sim resources at [awesome-isaac-sim](https://github.com/sjtuyinjie/awesome-isaac-sim) (keep updating)

- **⭐️`2024/03/05`**:
A quantity of cutting-edge SLAM systems have been tested on M2DGR by lovely users. [Here](https://blog.csdn.net/zardforever123/article/details/129194673) are the configuration files for [ORB-SLAM2](https://github.com/raulmur/ORB_SLAM2), [ORB-SLAM3](https://github.com/UZ-SLAMLab/ORB_SLAM3), [VINS-Mono](https://github.com/HKUST-Aerial-Robotics/VINS-Mono),[DM-VIO](https://github.com/lukasvst/dm-vio), [A-LOAM](https://github.com/HKUST-Aerial-Robotics/A-LOAM), [Lego-LOAM](https://github.com/RobustFieldAutonomyLab/LeGO-LOAM), [LIO-SAM](https://github.com/TixiaoShan/LIO-SAM), [LVI-SAM](https://github.com/TixiaoShan/LVI-SAM), [LINS](https://github.com/ChaoqinRobotics/LINS---LiDAR-inertial-SLAM), [FastLIO2](https://github.com/hku-mars/FAST_LIO),[Fast-LIVO](https://github.com/hku-mars/FAST-LIVO), [Faster-LIO](https://github.com/gaoxiang12/faster-lio) and [hdl_graph_slam](https://github.com/koide3/hdl_graph_slam). Welcome to test! If you have more configuration files, please contact me and I will post it on this website ~

- **🚀 `2024/02/22`**:
New paper has been accepted by ICRA2024! The dataset is [**M2DGR-plus**](https://github.com/SJTU-ViSYS/M2DGR-plus) and [**Ground-Challenge**](https://github.com/sjtuyinjie/Ground-Challenge). And the algorithm code is [**Ground-Fusion**](https://github.com/SJTU-ViSYS/Ground-Fusion). The preprint paper is [here](http://arxiv.org/abs/2402.14308).





- **⭐️`2022/06/20`**:
Thanks Jialin Liu (Fudan University) for his work to test LVI-SAM on M2DGR. Check out [**Here**](https://github.com/electech6/LVI-SAM_detailed_comments) for a [**modified LVI-SAM version**] for M2DGR. 




<div align=center>
<img src="https://github.com/shuttworth/Record_Datasets_For_LVI-SAM/blob/main/img/gate_01_v1.gif" width="70%">
</div>

<div align=center>
<img src="https://github.com/shuttworth/Record_Datasets_For_LVI-SAM/blob/main/img/street_08_v1.gif" width="70%">
</div>
<p align="center">>LVI-SAM on M2DGR</p>

- **⭐️`2022/02/18`**:   We have upload a brand new SLAM dataset with GNSS, vision and IMU information. Here is our link [**SJTU-GVI**](https://github.com/sjtuyinjie/SJTU_GVI). Different from M2DGR, new data is captured on a real car and it records GNSS raw measurements with a Ublox ZED-F9P device to facilitate GNSS-SLAM. Give us a star and folk the project if you like it.


- **📄 `2022/02/01`**:   The paper has been accepted by both [**RA-L**](https://www.ieee-ras.org/publications/ra-l/) and [**ICRA 2022**](https://icra2022.org/). The paper is provided in [Arxiv version](https://arxiv.org/abs/2112.13659) and [IEEE RA-L version](https://ieeexplore.ieee.org/document/9664374).

> [!NOTE]
> If you build your open-source project based on M2DGR or test a cutting-edge SLAM system on M2DGR, please write a issue to remind me of updating your contributions.



## INTRODUCTION

### ABSTRACT:

We introduce M2DGR: a novel large-scale dataset collected by a ground robot with a full sensor-suite including six fish-eye and one sky-pointing RGB cameras, an infrared camera, an event camera, a Visual-Inertial Sensor (VI-sensor), an inertial measurement unit (IMU), a LiDAR, a consumer-grade Global Navigation Satellite System (GNSS) receiver and a GNSS-IMU navigation system with real-time kinematic (RTK) signals. All those sensors were well-calibrated and synchronized, and their data were recorded simultaneously. The ground truth trajectories were obtained by the motion capture device, a laser 3D tracker, and an RTK receiver.  The dataset comprises 36 sequences (about 1TB) captured in diverse scenarios including both indoor and outdoor environments. We evaluate state-of-the-art SLAM algorithms on M2DGR. Results show that existing solutions perform poorly in some scenarios. For the benefit of the research community, we make the dataset and tools public.

Keywords:Dataset, Multi-model, Multi-scenario,Ground Robot

### MAIN CONTRIBUTIONS:
* We collected long-term challenging sequences for ground robots both indoors and outdoors with a complete sensor suite, which includes six surround-view fish-eye cameras, a sky-pointing fish-eye camera, a perspective color camera, an event camera, an infrared camera, a 32-beam LIDAR, two GNSS receivers, and two IMUs. To our knowledge, this is the first SLAM dataset focusing on ground robot navigation with such rich sensory information.
* We recorded trajectories in a few challenging scenarios like lifts, complete darkness, which can easily fail existing localization solutions. These situations are commonly faced in ground robot applications, while they are seldom discussed in previous datasets.
* We launched a comprehensive benchmark for ground robot navigation. On this benchmark, we evaluated existing state-of-the-art SLAM algorithms of various designs and analyzed their characteristics and defects individually.


### VIDEO
[![ICRA2022 Presentation](cover.png)](https://www.youtube.com/watch?v=73enWUwxJ1k)



For Chinese users, try [![bilibili](cover.png)](https://www.bilibili.com/video/BV1q3411G7iF/)










## LICENSE
This work is licensed under MIT license. International License and is provided for academic purpose. If you are interested in our project for commercial purposes, please contact us on robot_yinjie@outlook.com for further communication. 

If you face any problem when using this dataset, feel free to propose an issue. And if you find our dataset helpful in your research, simply give this project a star. If you use M2DGR in an academic work, please cite:
~~~
@article{yin2021m2dgr,
  title={M2dgr: A multi-sensor and multi-scenario slam dataset for ground robots},
  author={Yin, Jie and Li, Ang and Li, Tao and Yu, Wenxian and Zou, Danping},
  journal={IEEE Robotics and Automation Letters},
  volume={7},
  number={2},
  pages={2266--2273},
  year={2021},
  publisher={IEEE}
}
@article{yin2024ground,
  title={Ground-Fusion: A Low-cost Ground SLAM System Robust to Corner Cases},
  author={Yin, Jie and Li, Ang and Xi, Wei and Yu, Wenxian and Zou, Danping},
  journal={arXiv preprint arXiv:2402.14308},
  year={2024}
}
~~~



## SENSOR SETUP
### Acquisition Platform
Physical drawings and schematics of the ground robot is given below. The unit of the figures is centimeter.

<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/newcar4.png" width="800px">
</div>

<p align="left">Figure 2. The GAEA Ground Robot Equipped with a Full Sensor Suite.The directions of the sensors are marked in different colors,red for X,green for Y and blue for Z.</p>









### Sensor parameters

All the sensors and track devices and their most important parameters are listed as below:

* **LIDAR** Velodyne VLP-32C, 360 Horizontal Field of View (FOV),-30 to +10 vertical FOV,10Hz,Max Range 200 m,Range Resolution 3 cm, Horizontal Angular Resolution 0.2°.  

* **RGB Camera** FLIR Pointgrey CM3-U3-13Y3C-CS,fish-eye lens,1280*1024,190 HFOV,190 V-FOV, 15 Hz  
* **GNSS** Ublox M8T, GPS/BeiDou, 1Hz  
* **Infrared Camera**,PLUG 617,640*512,90.2 H-FOV,70.6 V-FOV,25Hz;  
* **V-I Sensor**,Realsense d435i,RGB/Depth 640*480,69H-FOV,42.5V-FOV,15Hz;IMU 6-axix, 200Hz  
* **Event Camera** Inivation DVXplorer, 640*480,15Hz;  
* **IMU**,Handsfree A9,9-axis,150Hz;  
* **GNSS-IMU** Xsens Mti 680G. GNSS-RTK,localization precision 2cm,100Hz;IMU 9-axis,100 Hz;  
* **Laser Scanner** Leica MS60, localization 1mm+1.5ppm  
* **Motion-capture System** Vicon Vero 2.2, localization accuracy 1mm, 50 Hz;

The rostopics of our rosbag sequences are listed as follows:

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
 

## DATASET SEQUENCES


**We make public ALL THE SEQUENCES with their GT now.**

> **OneDrive folder:** [Browse all rosbags](https://1drv.ms/f/c/3e825cd7abd6dff7/IgCW90ge__sjSrGsFdArjCYMATtrrylG05J8lD1npWwmEAQ) | **GT (GitHub):** [Download GT](https://github.com/SJTU-ViSYS/M2DGR/tree/main/GT)
>
> Individual download links below point to specific `.bag` files.


> [!NOTE]
> **Download update (Oct 2025):** Rosbags are being migrated to a new OneDrive account (~1.2 TB, actively uploading). **[Browse all sequences](https://1drv.ms/f/c/3e825cd7abd6dff7/IgCW90ge__sjSrGsFdArjCYMATtrrylG05J8lD1npWwmEAQ)** on OneDrive, or use per-sequence links below. **Ground truth is available on [GitHub](https://github.com/SJTU-ViSYS/M2DGR/tree/main/GT) now.** Sequences marked *Uploading* will get direct download links as uploads finish (typically within **1–2 weeks**). This dataset is **actively maintained** — links are updated continuously.


<div align=center>

<img src="https://github.com/sjtuyinjie/mypics/blob/main/dynamic.gif" width="600px">
</div>

<p align="left">Figure 3. A sample video with fish-eye image(both forward-looking and sky-pointing),perspective image,thermal-infrared image,event image and lidar odometry</p>


An overview of M2DGR is given in the table below:
Scenario|Street|Circle|Gate|Walk|Hall|Door|Lift|Room|Roomdark|TOTAL
--|:--|:--:|--:|--:|--:|--:|--:|--:|--:|--:
Number | 10|2|3|1|5|2|4|3|6|36
Size/GB|590.7|50.6| 65.9|21.5| 117.4 |46.0|112.1|45.3|171.1|1220.6
Duration/s |7958 | 478| 782 |291 |1226|588|1224|275|866|13688
Dist/m |7727.72| 618.03| 248.40|263.17|845.15|200.14|266.27|144.13|395.66|10708.67
Ground Truth  |RTK/INS |RTK/INS |RTK/INS |RTK/INS |Leica |Leica |Leica |Mocap|Mocap| ---



### Outdoors

<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/outdoor.png" width="600px">
<p align="center">Figure 4. Outdoor Sequences:all trajectories are mapped in different colors.</p>
  


Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag|GT
--|:--|:--:|--:|--:|--:|--:
gate_01|2021-07-31|16.4g|172s|dark,around gate|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQCJ-bCAU-oCQKCGyVUfR94lAZyvNsvenbkCjhgTJ0tN_Ho)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/gate_01.txt)
gate_02|2021-07-31|27.3g|327s|dark,loop back|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/gate_02.txt)
gate_03|2021-08-04|21.9g|283s|day|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/gate_03.txt)


Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag|GT
--|:--|:--:|--:|--:|--:|--:
Circle_01|2021-08-03|23.3g|234s|Circle|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/rotation_01.txt)
Circle_02|2021-08-07|27.3g|244s|Circle|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/rotation_02.txt)

Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag|GT
--|:--|:--:|--:|--:|--:|--:
street_01|2021-08-06|75.8g|1028s|street and buildings,night,zigzag,long-term|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_01.txt)
street_02|2021-08-03|83.2g|1227s|day,long-term|*Uploading (link within ~1 week)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_02.txt)
street_03|2021-08-06|21.3g|354s|night,back and fourth,full speed|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_03.txt)
street_04|2021-08-03|48.7g|858s|night,around lawn,loop back|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_04.txt)
street_05|2021-08-04|27.4g|469s|night,staight line|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_05.txt)
street_06|2021-08-04|35.0g|494s|night,one turn|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQDxaRd_mzchTLbuyYGZLU5ZAamviCxfxp9ClQKj4bM_Od4)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_06.txt)
street_07|2021-08-06|77.2g|929s|dawn,zigzag,sharp turns|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQAwFgbl0s_aQarCUtRs4IOeAZ_1kB_6buyIJBcyHZxdOK8)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_07.txt)
street_08|2021-08-06|31.2g|491s|night,loop back,zigzag|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_08.txt)
street_09|2021-08-07|83.2g|907s|day,zigzag|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_09.txt)
street_010|2021-08-07|86.2g|910s|day,zigzag|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/street_10.txt)
walk_01|2021-08-04|21.5g|291s|day,back and fourth|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/walk_01.txt)
</div>


### Indoors
<div align=center>

<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/lift.jpg" width="600px">

<p align="left">Figure 5. Lift Sequences:The robot hang around a hall on the first floor and then went to the second floor by lift.A laser scanner track the trajectory outside the lift</p>
  

  

Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag|GT
--|:--|:--:|--:|--:|--:|--:
lift_01|2021-08-04|18.4g|225s|lift|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/lift_01.txt)
lift_02|2021-08-04|43.6g|488s|lift|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/lift_02.txt)
lift_03|2021-08-15|22.3g|252s|lift|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/lift_03.txt)
lift_04|2021-08-15|27.8g|299s|lift|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQCzf4RlJDuySavz69rbintgAQ9TijMhmK66adGlCGiI17w)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/lift_04.txt)

  
  
  

Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag|GT
--|:--|:--:|--:|--:|--:|--:
hall_01|2021-08-01|29.1g|351s|randon walk|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/hall_01.txt)
hall_02|2021-08-08|15.0g|128s|randon walk|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQDmT1pmLXbmS5qjSXA62sG0AQr1g5NI8-9sio7P5pM75to)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/hall_02.txt)
hall_03|2021-08-08|20.5g|164s|randon walk|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/hall_03.txt)
hall_04|2021-08-15|17.7g|181s|randon walk|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/hall_04.txt)
hall_05|2021-08-15|35.1g|402s|circle|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQC9pAd7i7cSRaHZ6AG0TNIsAVbHimMAWfnV2QKjlqeHmlM)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/hall_05.txt)





<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/room.png" width="600px">

<p align="center">Figure 6. Room Sequences:under a Motion-capture system with twelve cameras.</p>
  
Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag|GT
--|:--|:--:|--:|--:|--:|--:
room_01|2021-07-30|14.0g|72s|room,bright|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQB39IpjQq6wRbVi0lxLp4vqAUQEUQs6SjcEByCj0t9gOlg)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/room_01.txt)
room_02|2021-07-30|15.2g|75s|room,bright|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQCirPkVnERRS6Ij-56RiBTEAQpmhukrCtxCySKwf9S9jrs)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/room_02.txt)
room_03|2021-07-30|26.1g|128s|room,bright|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/room_03.txt)
room_dark_01|2021-07-30|20.2g|111s|room,dark|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/room_dark_01.txt)
room_dark_02|2021-07-30|30.3g|165s|room,dark|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/room_dark_02.txt)
room_dark_03|2021-07-30|22.7g|116s|room,dark|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/room_dark_03.txt)
room_dark_04|2021-08-15|29.3g|143s|room,dark|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/room_dark_04.txt)
room_dark_05|2021-08-15|33.0g|159s|room,dark|*Uploading (link within ~1–2 weeks)*|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/room_dark_05.txt)
room_dark_06|2021-08-15|35.6g|172s|room,dark|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQDbLUaiNb2vTITPS9hIwb8AAS1WAWhm4lDhqsJ24ulHys4)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/room_dark_06.txt)
</div>




  

  
### Alternative indoors and outdoors
  
<div align=center>
<img src="https://github.com/sjtuyinjie/mypics/blob/main/forgithub/door.jpg" width="600px">
<p align="center">Figure 7. Door Sequences:A laser scanner track the robot through a door from indoors to outdoors.</p>


Sequence Name|Collection Date|Total Size|Duration|Features|Rosbag|GT
--|:--|:--:|--:|--:|--:|--:
door_01|2021-08-04|35.5g|461s|outdoor to indoor to outdoor,long-term|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQBjiP664IuXRZV7SrvnNg3VAe7e-Yw29Leet0voti2zRG0)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/door_01.txt)
door_02|2021-08-04|10.5g|127s|outdoor to indoor,short-term|[Rosbag](https://1drv.ms/u/c/3e825cd7abd6dff7/IQBgBi18HmJxS6b69nemY6qxAR3FYvurL1a9rQ21JCu5uEA)|[GT](https://github.com/SJTU-ViSYS/M2DGR/blob/main/GT/door_02.txt)

</div>


## CONFIGURATION FILES
For convenience of evaluation, we provide configuration files of some well-known SLAM systems as below:

[A-LOAM](https://github.com/sjtuyinjie/toolkit/blob/main/config_files/aloam/aloam_velodyne_HDL_32.launch), [LeGO-LOAM](https://github.com/sjtuyinjie/toolkit/blob/main/config_files/legoloam/run.launch), [LINS](https://github.com/sjtuyinjie/toolkit/blob/main/config_files/lins/exp_port.yaml), [LIO-SAM](https://github.com/sjtuyinjie/toolkit/blob/main/config_files/liosam/params.yaml), [VINS-MONO](https://github.com/sjtuyinjie/toolkit/blob/main/config_files/vins/mytest.launch), [ORB-Pinhole](https://github.com/sjtuyinjie/toolkit/blob/main/config_files/orb3/paperd435i.yaml), [ORB-Fisheye](https://github.com/sjtuyinjie/toolkit/blob/main/config_files/orb3/paperleft.yaml), [ORB-Thermal](https://github.com/sjtuyinjie/toolkit/blob/main/config_files/orb3/paperthermal.yaml), and [CUBMAPSLAM](https://github.com/sjtuyinjie/toolkit/blob/main/config_files/cubemapslam/runCubemapstreet_06.sh).

Furthermore, a quantity of cutting-edge SLAM systems have been tested on M2DGR by lovely users. [**Here**](https://blog.csdn.net/zardforever123/article/details/129194673) are the configuration files for [ORB-SLAM2](https://github.com/raulmur/ORB_SLAM2), [ORB-SLAM3](https://github.com/UZ-SLAMLab/ORB_SLAM3), [VINS-Mono](https://github.com/HKUST-Aerial-Robotics/VINS-Mono),[DM-VIO](https://github.com/lukasvst/dm-vio), [A-LOAM](https://github.com/HKUST-Aerial-Robotics/A-LOAM), [Lego-LOAM](https://github.com/RobustFieldAutonomyLab/LeGO-LOAM), [LIO-SAM](https://github.com/TixiaoShan/LIO-SAM), [LVI-SAM](https://github.com/TixiaoShan/LVI-SAM), [LINS](https://github.com/ChaoqinRobotics/LINS---LiDAR-inertial-SLAM), [FastLIO2](https://github.com/hku-mars/FAST_LIO), [Fast-LIVO](https://github.com/hku-mars/FAST-LIVO), [Faster-LIO](https://github.com/gaoxiang12/faster-lio) and [hdl_graph_slam](https://github.com/koide3/hdl_graph_slam). Welcome to test! If you have more configuration files, please contact me and I will post it on this website ~

## Development Toolkits
### Extracting Images
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
* For non-rosbag users,just take advantage of following script  [export_tum](https://github.com/sjtuyinjie/toolkit/blob/main/export_tum.py),[export_euroc](https://github.com/sjtuyinjie/toolkit/blob/main/export_euroc.py) and [get_csv](https://github.com/sjtuyinjie/toolkit/blob/main/img2csv.py) to get data in formats of Tum or EuRoC.

### Evaluation
We use open-source tool [evo](https://github.com/MichaelGrupp/evo) for evalutation.
To install evo,type
~~~
pip install evo --upgrade --no-binary evo
~~~
To evaluate monocular visual SLAM,type
~~~
evo_ape tum street_07.txt your_result.txt -vaps
~~~
To evaluate LIDAR SLAM,type
~~~
evo_ape tum street_07.txt your_result.txt -vap
~~~
To test GNSS based methods,type
~~~
evo_ape tum street_07.txt your_result.txt -vp
~~~

### Calibration
For camera intrinsics,visit [Ocamcalib](http://sites.google.com/site/scarabotix/ocamcalib-toolbox) for omnidirectional model.
visit [Vins-Fusion](https://github.com/HKUST-Aerial-Robotics/VINS-Fusion) for pinhole and MEI model.
use [Opencv](https://opencv.org/) for Kannala Brandt model

For IMU intrinsics,visit [Imu_utils](https://github.com/gaowenliang/imu_utils)

For extrinsics between cameras and IMU,visit [Kalibr](https://github.com/ethz-asl/kalibr)
For extrinsics between Lidar and IMU,visit [Lidar_IMU_Calib](https://github.com/APRIL-ZJU/lidar_IMU_calib) 
For extrinsics between cameras and Lidar, visit [Autoware](https://github.com/Autoware-AI/autoware.ai) 
### Getting RINEX files
For GNSS based methods like [RTKLIB](http://www.rtklib.com/), we usually need to get data in the format of RINEX. To make use of GNSS raw measurements, we use [Link](https://github.com/TakahashiJinxu/ublox2rinex) toolkit.

### ROS drivers for UVC cameras 
We write a ROS driver for UVC cameras to record our thermal-infrared image. 
[UVC ROS driver](https://github.com/sjtuyinjie/toolkit/tree/main/thermal_ws/src)


## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=SJTU-ViSYS/M2DGR&type=Timeline)](https://star-history.dera.page/#SJTU-ViSYS/M2DGR&Timeline)


## ACKNOWLEGEMENT
This work is supported by NSFC(62073214). Authors from SJTU hereby express our appreciation.

