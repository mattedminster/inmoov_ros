#!/usr/bin/env python
# licensed under BSD-3


import rospy

from inmoov_msgs.msg import MotorStatus
from inmoov_msgs.msg import MotorCommand
from inmoov_msgs.srv import MotorParameter
from sensor_msgs.msg import JointState
from std_msgs.msg import Header

import os
import sys
from os.path import dirname, abspath

#hacky way to add include directory to sys path
sys.path.append(os.path.join(dirname(dirname(abspath(__file__))),'include'))

from constants import PROTOCOL
from servos import Servo
from load_config_from_param import load_config_from_param

servos = {}
lookup = {}

joints = {}
jointPos = {}
bus = {}

state = {}

joints = rospy.get_param('/inmoov/joints')
print(joints)
for joint in joints:
    jointPos[joint] = 1.3

#jointstatus = JointState()


def degreestoradians(d):
    return d*(3.1415926/180.0)

def init():
    
    rospy.init_node('joint_status_dispatcher', anonymous=False)
    rate = rospy.Rate(60) # 40hz
    #rospy.sleep(10)

    publisher = rospy.Publisher("joint_states", JointState, queue_size=10)
    rospy.Subscriber('motor_status', MotorStatus, dispatcher)
    

    while not rospy.is_shutdown():

        jointstatus = JointState()
        jointstatus.header = Header()
        jointstatus.header.stamp = rospy.Time.now()
        jointstatus.name = []
        jointstatus.position = []
        jointstatus.velocity = []
        jointstatus.effort = []
        #rospy.sleep(3)

        for j,p in jointPos.items():
            #print(j)
            jointstatus.name.append(j)
            jointstatus.position.append(p)
            jointstatus.velocity.append(0)

        if jointstatus.name.count > 0:
            publisher.publish(jointstatus)

        joints.clear()
        rate.sleep()

    rospy.spin()

def dispatcher(data):
    try:
        #print "OHAI! bus:" + str(bus) + " servo:" + str(data.id)
        #key = lookup[((int(bus)*255)+int(data.servoPin))]
        jointPos[data.joint] = degreestoradians(data.position)
    except:
        rospy.logwarn('joint_status_dispatcher:  unknown servo at bus:'+str(bus)+' servo on pin:'+str(data.servoPin))
    



if __name__ == '__main__':
    try:
        init()
    except rospy.ROSInterruptException:
        pass