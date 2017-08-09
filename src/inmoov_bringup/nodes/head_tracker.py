#!/usr/bin/env python
# licensed under BSD-3


import rospy

from inmoov_msgs.msg import MotorStatus
from inmoov_msgs.msg import MotorCommand
from inmoov_msgs.srv import MotorParameter
from sensor_msgs.msg import JointState
from std_msgs.msg import Header
from cob_perception_msgs.msg import DetectionArray


import os
import sys
from os.path import dirname, abspath

#hacky way to add include directory to sys path
sys.path.append(os.path.join(dirname(dirname(abspath(__file__))),'include'))

from constants import PROTOCOL
from servos import Servo
from load_config_from_param import load_config_from_param
from sensor_msgs.msg import JointState
from std_msgs.msg import Header

jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)

def sendJointCommand(name,val):

    jointcommand = JointState()
    jointcommand.header = Header()
    jointcommand.header.stamp = rospy.Time.now()
    jointcommand.name.append(name)
    jointcommand.position.append(val)
    jointcommand.velocity = []
    jointcommand.effort= []
    jointPublisher.publish(jointcommand)
    #print(jointcommand)


def init():

    rospy.init_node('inmoov_head_tracking', anonymous=False)
    rate = rospy.Rate(rospy.get_param('/inmoov/bringup/hz')) # 40hz
    print("joint command init at: " + str(rate) + "hz")

    rospy.Subscriber("detection_tracker/face_position_array", DetectionArray, detection)

   

    rospy.spin()

def detection(data):
    #print(data)
    xPhyMin = 50
    xPhyMax = -50
    for head in data.detections:
        print(head.pose.pose)
        val = head.pose.pose.position.x * 50
        sendJointCommand("head_pan_joint", val)






if __name__ == '__main__':
    try:
        init()
    except rospy.ROSInterruptException:
        pass