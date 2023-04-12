# This python script is a utilily for NTU VIRAL dataset
# The timestamps of the ouster messages are jittery, due to some synchronization issues.
# The python script is used to regularize the time stamps. Simply declare the name of
# the bag files at line 14 and 15 and run the script.

import argparse
import sys
import os
import rospy
import rosbag

if __name__ == '__main__':

    inbag  = rosbag.Bag('/media/tmn/mySDSSD/NTU_VIRAL/sbs_01/sbs_01.bag','r')
    outbag = rosbag.Bag('/media/tmn/mySDSSD/NTU_VIRAL/sbs_01/sbs_01_mod.bag', 'w')

    print("Input bag file: %s"%(inbag.filename))
    print("Output bag file: %s"%(outbag.filename))

    start_time = inbag.get_start_time()
    end_time   = inbag.get_end_time()
    duration   = end_time - start_time
    
    print("Duration: %.3f. Start: %.3f. End: %3f"%(duration, start_time, end_time))

    pc1_msgs = 0; pc1_start = -1; pc1_end = -1; pc1_gap = 0
    imu1_msgs = 0; imu1_start = -1; imu1_end = -1; imu1_gap = 0
    
    pc2_msgs = 0; pc2_start = -1; pc2_end = -1; pc2_gap = 0
    imu2_msgs = 0; imu2_start = -1; imu2_end = -1; imu2_gap = 0
    
    last_perc = -1
    last_pc1_time = -1
    last_imu1_time = -1
    last_pc2_time = -1
    last_imu2_time = -1
    
    for topic, msg, t in inbag.read_messages():
        
        if topic == '/os1_cloud_node1/points' :
            pc1_msgs += 1
            msg_stamp = msg.header.stamp.to_sec()
            if pc1_start == -1 :
                pc1_start = msg_stamp
            pc1_end = msg_stamp
            
            if last_pc1_time != -1 and abs(msg_stamp - last_pc1_time) > 0.11 :
                pc1_gap += 1
            last_pc1_time = msg_stamp
        
        if topic == '/os1_cloud_node1/imu' :
            imu1_msgs += 1
            msg_stamp = msg.header.stamp.to_sec()
            if imu1_start == -1 :
                imu1_start = msg_stamp
            imu1_end = msg_stamp
            
            if last_imu1_time != -1 and abs(msg_stamp - last_imu1_time) > 0.015 :
                imu1_gap += 1
            last_imu1_time = msg_stamp
            
        if topic == '/os1_cloud_node2/points' :
            pc2_msgs += 1
            msg_stamp = msg.header.stamp.to_sec()
            if pc2_start == -1 :
                pc2_start = msg_stamp
            pc2_end = msg_stamp
            
            if last_pc2_time != -1 and abs(msg_stamp - last_pc2_time) > 0.11 :
                pc2_gap += 1
            last_pc2_time = msg_stamp
        
        if topic == '/os1_cloud_node2/imu' :
            imu2_msgs += 1
            msg_stamp = msg.header.stamp.to_sec()
            if imu2_start == -1 :
                imu2_start = msg_stamp
            imu2_end = msg_stamp
            
            if last_imu2_time != -1 and abs(msg_stamp - last_imu2_time) > 0.015 :
                imu2_gap += 1
            last_imu2_time = msg_stamp
            
        perc = round((t.to_sec() - start_time)/duration*100)
        if perc != last_perc :
            last_perc = perc
            print("Counting msgs: %2d %%\r"%(last_perc))

    pc1_intv = (pc1_end - pc1_start) / (pc1_msgs - 1)
    pc2_intv = (pc2_end - pc2_start) / (pc2_msgs - 1)
    imu1_intv = (imu1_end - imu1_start) / (imu1_msgs - 1)
    imu2_intv = (imu2_end - imu2_start) / (imu2_msgs - 1)
    
    print("PC1:  %06d. Start: %.3f. End: %.3f. Gap: %03d. Period: %f"%(pc1_msgs,  pc1_start,  pc1_end,  pc1_gap,  pc1_intv))
    print("IMU1: %06d. Start: %.3f. End: %.3f. Gap: %03d. Period: %f"%(imu1_msgs, imu1_start, imu1_end, imu1_gap, imu1_intv))
    print("PC2:  %06d. Start: %.3f. End: %.3f. Gap: %03d. Period: %f"%(pc2_msgs,  pc2_start,  pc2_end,  pc2_gap,  pc2_intv))
    print("IMU2: %06d. Start: %.3f. End: %.3f. Gap: %03d. Period: %f"%(imu2_msgs, imu2_start, imu2_end, imu2_gap, imu2_intv))
    
    last_perc = -1
    # Write the bag with the new stamp
    pc1_count = 0; pc2_count = 0; imu1_count = 0; imu2_count = 0
    for topic, msg, t in inbag.read_messages():
        
        if topic == '/os1_cloud_node1/points' :
            msg.header.stamp = rospy.Time(pc1_start + pc1_count*pc1_intv)
            outbag.write(topic, msg, msg.header.stamp + rospy.Duration(0.001))
            pc1_count += 1
  
        elif topic == '/os1_cloud_node2/points' :
            msg.header.stamp = rospy.Time(pc2_start + pc2_count*pc2_intv)
            outbag.write(topic, msg, msg.header.stamp + rospy.Duration(0.001))
            pc2_count += 1
            
        elif topic == '/os1_cloud_node1/imu' :
            msg.header.stamp = rospy.Time(imu1_start + imu1_count*imu1_intv)
            outbag.write(topic, msg, msg.header.stamp + rospy.Duration(0.001))
            imu1_count += 1
            
        elif topic == '/os1_cloud_node2/imu' :
            msg.header.stamp = rospy.Time(imu2_start + imu2_count*imu2_intv)
            outbag.write(topic, msg, msg.header.stamp + rospy.Duration(0.001))
            imu2_count += 1
        else:
            outbag.write(topic, msg, t)
            
        perc = round((t.to_sec() - start_time)/duration*100)
        if perc != last_perc :
            last_perc = perc
            print("Writing msgs: %2d %%\r"%(last_perc))    
        
    outbag.close()
    
