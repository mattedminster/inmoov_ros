#!/usr/bin/env python
# licensed under BSD-3


import rospy

from inmoov_msgs.msg import MotorStatus
from inmoov_msgs.msg import MotorCommand
from inmoov_msgs.srv import MotorParameter
from sensor_msgs.msg import JointState
from std_msgs.msg import Header
from control_msgs.msg import JointTrajectoryAction
import actionlib

import os
import sys
from os.path import dirname, abspath

#hacky way to add include directory to sys path
sys.path.append(os.path.join(dirname(dirname(abspath(__file__))),'include'))

from constants import PROTOCOL
from servos import Servo
from load_config_from_param import load_config_from_param

servos = {}     # servo configuration data for robot
joints = {}     # dict of joint names and position values

bus = {}        # dict of motorcommand busses indexed by ordinal

def init():
    jta = actionlib.SimpleActionClient('/inmoov_controller/follow_joint_trajectory',
                                                    JointTrajectoryAction)
    rospy.loginfo('Waiting for joint trajectory action')
    jta.wait_for_server()
    rospy.loginfo('Found joint trajectory action!')
    
    rospy.spin()

def dispatcher(js):
    #print "OHAI!"
    print (js)
    # iterate through array and stuff name + position into dict object
    #for x in range(0, len(js.name)):
    #    joints[js.name[x]] = js.position[x]
    #    print"YATZEE"




if __name__ == '__main__':
    try:
        rospy.init_node('joint_position_tester')
        init()
    except rospy.ROSInterruptException:
        pass