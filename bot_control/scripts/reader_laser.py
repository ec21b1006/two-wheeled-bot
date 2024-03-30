#! /usr/bin/env python3

import rospy
from sensor_msgs.msg import LaserScan

def callback(msg):
    filtered_ranges = msg.ranges[:120] 
    filtered_msg = LaserScan(
        header=msg.header,
        angle_min=msg.angle_min,
        angle_max=msg.angle_max,
        angle_increment=msg.angle_increment,
        time_increment=msg.time_increment,
        scan_time=msg.scan_time,
        range_min=msg.range_min,
        range_max=msg.range_max,
        ranges=filtered_ranges,
        intensities=msg.intensities
    )
    pub.publish(filtered_msg)

rospy.init_node('scan_values')
sub = rospy.Subscriber('/scan', LaserScan, callback)
pub = rospy.Publisher('/filtered_scan', LaserScan, queue_size=10)
rospy.spin()
