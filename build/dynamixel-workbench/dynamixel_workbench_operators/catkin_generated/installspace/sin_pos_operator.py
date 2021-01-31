#!/usr/bin/env python2
import rospy
from std_msgs.msg import Float64

def talker():
    pub = rospy.Publisher('/dynamixel_workbench/sin_pos', Float64, queue_size=10)
    rospy.init_node('dynamixel_workbench_sin_operator', anonymous=True)
    rate = rospy.Rate(30) # 30hz
    i = 0.
    while not rospy.is_shutdown():
        pub.publish(i)
        i += 0.05
        rate.sleep()
        

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass