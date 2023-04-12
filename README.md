<p align="center">
    <img src="images/demo_eee_01.gif" alt="EEE_01 VIRAL SLAM" width="33%"/>
    <img src="images/demo_sbs_01.gif" alt="SBS_01 VIRAL SLAM" width="33%"/>
    <img src="images/demo_nya_01.gif" alt="NBA_01 VIRAL SLAM" width="33%"/>
</p>

# [NTU VIRAL: A Visual-Inertial-Ranging-Lidar Dataset for Autonomous Aerial Vehicle](https://ntu-aris.github.io/ntu_viral_dataset/)


This site presents the datasets collected from our research Unmanned Aerial Vehicle (UAV) platform, featuring an extensive set of sensors:

* Two 3D lidars
* Two time-synchronized cameras
* Multiple Inertial Measurement Units (IMUs)
* Four Ultra-wideband (UWB) nodes on UAV, ranging to three anchor nodes.

The comprehensive sensor suite resembles that of an autonomous driving car, but features distinct and challenging characteristics of aerial operations. The flight tests are conducted in a variety of both indoor and outdoor conditions.

# Citation
If you use some resource from this data suite, please cite it as

```
@article{nguyen2022ntu,
  title     = {NTU VIRAL: A Visual-Inertial-Ranging-Lidar Dataset, From an Aerial Vehicle Viewpoint},
  author    = {Nguyen, Thien-Minh and Yuan, Shenghai and Cao, Muqing and Lyu, Yang and Nguyen, Thien Hoang and Xie, Lihua},
  journal   = {The International Journal of Robotics Research},
  volume    = {41},
  number    = {3},
  pages     = {270--280},
  year      = {2022},
  publisher = {SAGE Publications Sage UK: London, England}
}
```
[[Journal](https://journals.sagepub.com/doi/full/10.1177/02783649211052312)][[Preprint](https://github.com/ntu-aris/ntu_viral_dataset/blob/gh-pages/docs/NTU_VIRAL_Dataset_Submission.pdf)]

# Updates

**05/02/2023**: Update works using the datasets

**26/09/2022**: Extra sequences (rtp_01, rtp_02, rtp_03, tnp_01, tnp_02, tnp_03, spms_01, spms_02, spms_03) in more challenging scenarios are added.

**12/07/2022**: The ouster pointcloud and IMU messages are found to jitter due to synchronization issues. A script to regularize the ouster pointcloud and imu topics can be downloaded [here](https://github.com/ntu-aris/ntu_viral_dataset/blob/gh-pages/utils/restamp.py).

# Downloads

Note: The files below are hosted on [NTU Data Repository](https://researchdata.ntu.edu.sg/dataset.xhtml?persistentId=doi:10.21979/N9/X39LEK).
If you experience interuption from the NTU Data Reposity, please try downloading the files from this [Onedrive folder](https://entuedu-my.sharepoint.com/:f:/g/personal/shyuan_staff_main_ntu_edu_sg/EvyxXbi1l5tHonBWIQxueBoByr1-E-w7fgRyHNTsCmwFcg).

Groundtruth is included in the bag. Do check out [this example](https://github.com/brytsknguyen/VINS-Mono/blob/392c8c5732d31445b266b9ca2e2f38a5a4d82d55/vins_estimator/launch/run_one_bag_ntuviral.sh#L68) on how to extract the data into the csv format.

<a name="tab-download"></a>
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-6ibf{border-color:inherit;font-size:18px;text-align:center;vertical-align:top}
.tg .tg-v8dz{border-color:inherit;font-size:18px;text-align:left;vertical-align:top}
.tg .tg-9m02{border-color:inherit;color:#00E;font-size:18px;text-align:center;text-decoration:underline;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-6ibf">Name</th>
    <th class="tg-6ibf">Link</th>
    <th class="tg-6ibf">Size</th>
    <th class="tg-6ibf">Duration</th>
    <th class="tg-6ibf">Remark</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-v8dz">eee_01</td>
    <td class="tg-6ibf"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/68133" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">8.7 GB</td>
    <td class="tg-6ibf">398.7 s</td>
    <td class="tg-v8dz">Collected at the School of EEE central carpark</td>
  </tr>
  <tr>
    <td class="tg-v8dz">eee_02</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/68131" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">7.0 GB</td>
    <td class="tg-6ibf">321.1 s</td>
    <td class="tg-v8dz">Collected at the School of EEE central carpark</td>
  </tr>
  <tr>
    <td class="tg-v8dz">eee_03</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/68132" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">4.3 GB</td>
    <td class="tg-6ibf">181.4 s</td>
    <td class="tg-v8dz">Collected at the School of EEE central carpark</td>
  </tr>
  <tr>
    <td class="tg-v8dz">nya_01</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/68144" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">8.6 GB</td>
    <td class="tg-6ibf">396.3 s</td>
    <td class="tg-v8dz">Collected inside the Nanyang Auditorium</td>
  </tr>
  <tr>
    <td class="tg-v8dz">nya_02</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/68138" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">9.4 GB</td>
    <td class="tg-6ibf">428.7 s</td>
    <td class="tg-v8dz">Collected inside the Nanyang Auditorium</td>
  </tr>
  <tr>
    <td class="tg-v8dz">nya_03</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/68142" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">9.0 GB</td>
    <td class="tg-6ibf">411.2 s</td>
    <td class="tg-v8dz">Collected inside the Nanyang Auditorium</td>
  </tr>
  <tr>
    <td class="tg-v8dz">sbs_01</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/68139" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">7.8 GB</td>
    <td class="tg-6ibf">354.2 s</td>
    <td class="tg-v8dz">Collected at the School of Bio. Science's front square</td>
  </tr>
  <tr>
    <td class="tg-v8dz">sbs_02</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/68140" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">8.2 GB</td>
    <td class="tg-6ibf">373.3 s</td>
    <td class="tg-v8dz">Collected at the School of Bio. Science's front square</td>
  </tr>
  <tr>
    <td class="tg-v8dz">sbs_03</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/68143" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">8.5 GB</td>
    <td class="tg-6ibf">389.3 s</td>
    <td class="tg-v8dz">Collected at the School of Bio. Science's front square</td>
  </tr>
  <tr>
    <td class="tg-v8dz">rtp_01</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/98194" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">5.0 GB</td>
    <td class="tg-6ibf">354.2 s</td>
    <td class="tg-v8dz">Collected at the Research Techno Plaza's carpark</td>
  </tr>
  <tr>
    <td class="tg-v8dz">rtp_02</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/98191" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">5.2 GB</td>
    <td class="tg-6ibf">373.3 s</td>
    <td class="tg-v8dz">Collected at the Research Techno Plaza's carpark</td>
  </tr>
  <tr>
    <td class="tg-v8dz">rtp_03</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/98193" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">4.0 GB</td>
    <td class="tg-6ibf">389.3 s</td>
    <td class="tg-v8dz">Collected at the Research Techno Plaza's carpark</td>
  </tr>
  <tr>
    <td class="tg-v8dz">tnp_01</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/98195" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">8.1 GB</td>
    <td class="tg-6ibf">354.2 s</td>
    <td class="tg-v8dz">Collected inside Research Techno Plaza</td>
  </tr>
  <tr>
    <td class="tg-v8dz">tnp_02</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/98196" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">6.2 GB</td>
    <td class="tg-6ibf">373.3 s</td>
    <td class="tg-v8dz">Collected inside Research Techno Plaza</td>
  </tr>
  <tr>
    <td class="tg-v8dz">tnp_03</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/98189" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">5.5 GB</td>
    <td class="tg-6ibf">389.3 s</td>
    <td class="tg-v8dz">Collected inside Research Techno Plaza</td>
  </tr>
  <tr>
    <td class="tg-v8dz">spms_01</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/98192" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">5.5 GB</td>
    <td class="tg-6ibf">354.2 s</td>
    <td class="tg-v8dz">School of Physical and Mathematical Science's Facade</td>
  </tr>
  <tr>
    <td class="tg-v8dz">spms_02</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/98190" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">4.0 GB</td>
    <td class="tg-6ibf">373.3 s</td>
    <td class="tg-v8dz">School of Physical and Mathematical Science's Facade</td>
  </tr>
  <tr>
    <td class="tg-v8dz">spms_03</td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/98188" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">5.0 GB</td>
    <td class="tg-6ibf">389.3 s</td>
    <td class="tg-v8dz">School of Physical and Mathematical Science's Facade</td>
  </tr>
  <tr>
    <td class="tg-v8dz"><span style="font-weight:400;font-style:normal">calib_stereo</span></td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/58998" target="_blank" rel="noopener noreferrer">.zip</a></td>
    <td class="tg-6ibf">49 MB</td>
    <td class="tg-6ibf"> - </td>
    <td class="tg-v8dz">Image pairs for intrinsic calibration</td>
  </tr>
  <tr>
    <td class="tg-v8dz"><span style="font-weight:400;font-style:normal">calib_stereo_imu</span></td>
    <td class="tg-9m02"><a href="https://researchdata.ntu.edu.sg/api/access/datafile/58978" target="_blank" rel="noopener noreferrer">.bag</a></td>
    <td class="tg-6ibf">0.96 GB</td>
    <td class="tg-6ibf">131.7 s</td>
    <td class="tg-v8dz">Bag file for stereo camera - IMU calibration using Kalibr</td>
  </tr>
</tbody>
</table>

# Quick use

We have done some experiments of state-of-the-art methods on our the datasets. If you are seeking to do the same, please check out the following to get the work done quickly.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-c3ow">Method</th>
    <th class="tg-c3ow">Repository</th>
    <th class="tg-c3ow">Credit</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">Open-VINS</td>
    <td class="tg-0pky"> <a href="https://github.com/brytsknguyen/open_vins"><span style="color:#905">https://github.com/brytsknguyen/open_vins</span></a></td>
    <td class="tg-0pky">Forked from https://github.com/rpng/open_vins</td>
  </tr>
  <tr>
    <td class="tg-0pky">VINS-Fusion</td>
    <td class="tg-0pky"><a href="https://github.com/brytsknguyen/VINS-Fusion"><span style="color:#905">https://github.com/brytsknguyen/VINS-Fusion</span></a></td>
    <td class="tg-0pky">Forked from https://github.com/HKUST-Aerial-Robotics/VINS-Fusion</td>
  </tr>
  <tr>
    <td class="tg-0pky">VINS-Mono</td>
    <td class="tg-0pky"><a href="https://github.com/brytsknguyen/VINS-Mono"><span style="color:#905">https://github.com/brytsknguyen/VINS-Mono</span></a></td>
    <td class="tg-0pky">Forked from https://github.com/HKUST-Aerial-Robotics/VINS-Mono</td>
  </tr>
  <tr>
    <td class="tg-0pky">M-LOAM</td>
    <td class="tg-0pky"><a href="https://github.com/brytsknguyen/M-LOAM"><span style="color:#905">https://github.com/brytsknguyen/M-LOAM</span></a></td>
    <td class="tg-0pky">Forked from https://github.com/gogojjh/M-LOAM</td>
  </tr>
  <tr>
    <td class="tg-0pky">LIO-SAM</td>
    <td class="tg-0pky"><a href="https://github.com/brytsknguyen/LIO-SAM"><span style="color:#905">https://github.com/brytsknguyen/LIO-SAM</span></a></td>
    <td class="tg-0pky">Forked from https://github.com/TixiaoShan/LIO-SAM</td>
  </tr>
  <tr>
    <td class="tg-0pky">A-LOAM</td>
    <td class="tg-0pky"><a href="https://github.com/brytsknguyen/A-LOAM"><span style="color:#905">https://github.com/brytsknguyen/A-LOAM</span></a></td>
    <td class="tg-0pky">Forked from https://github.com/HKUST-Aerial-Robotics/A-LOAM</td>
  </tr>
  <tr>
    <td class="tg-0pky">FAST-LIO</td>
    <td class="tg-0pky"><a href="https://github.com/Kin-Zhang/FAST_LIO"><span style="color:#905">https://github.com/Kin-Zhang/FAST_LIO</span></a></td>
    <td class="tg-0pky">Kindly provided by Kin-Zhang @ KTH RPL</td>
  </tr>
  <tr>
    <td class="tg-0pky">FAST-LIVO</td>
    <td class="tg-0pky"><a href="https://github.com/hku-mars/FAST-LIVO"><span style="color:#905">https://github.com/hku-mars/FAST-LIVO</span></a></td>
    <td class="tg-0pky">MARS Lab, HKU</td>
  </tr>
  <tr>
    <td class="tg-0pky">SLICT</td>
    <td class="tg-0pky"><a href="https://github.com/brytsknguyen/SLICT"><span style="color:#905">https://github.com/brytsknguyen/SLICT</span></a></td>
    <td class="tg-0pky">An NTU-KTH collaboration via Wallenberg-NTU Postdoctoral Fellowship </td>
  </tr>
</tbody>
</table>

# Related works

The datasets were used in the following papers. Please checkout these works if you are interested.
(Please contact us if you would like your work mentioned here).
* [FAST-LIVO: Fast and Tightly-coupled Sparse-Direct LiDAR-Inertial-Visual Odometry](https://github.com/hku-mars/FAST-LIVO)
* [VIRAL SLAM: Tightly Coupled Camera-IMU-UWB-Lidar SLAM](https://arxiv.org/pdf/2105.03296.pdf)
* [MILIOM: Tightly Coupled Multi-Input Lidar-Inertia Odometry and Mapping](https://ieeexplore.ieee.org/document/9431754) (RAL 2021)
* [LIRO: Tightly Coupled Lidar-Inertia-Ranging Odometry](https://arxiv.org/abs/2010.13072) (ICRA 2021)



# Notes:
For more information on the sensors and how to use the dataset, please checkout the other sections.

For resources and other works of our group please checkout our [github](https://github.com/ntu-aris).

If you have some inquiry, please raise an [issue](https://github.com/ntu-aris/ntu_viral_dataset/issues) on github.


# Licence
This work is licensed under a [Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License](https://creativecommons.org/licenses/by-nc-sa/4.0/) and is intended for non-commercial academic use.
If you are interested in using the dataset for commercial purposes please [contact us](mailto:aris.eee.ntu@gmail.com).
