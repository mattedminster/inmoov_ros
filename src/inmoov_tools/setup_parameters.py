#!/usr/bin/env python

import sys
import os
import rospy
import rospkg

leftArmPort  = "/dev/arduinoleftarm" #ADK
rightArmPort = "/dev/arduinorightarm" #MEGA
#torsoPort    = "/dev/ttyACM2"

#rospy.set_param( '/servobus/torso/port', torsoPort)
#rospy.set_param( '/servobus/torso/name', 'servoBus/torso')

rospy.set_param('/joy_node/dev', '/dev/input/js4')

rospy.set_param('/servobus/leftarm/port', leftArmPort)
rospy.set_param('/servobus/leftarm/name', 'servoBus/leftarm')

rospy.set_param( '/servobus/leftarm/servomap/0/name', 'left_thumb')
rospy.set_param( '/servobus/leftarm/servomap/0/rest', 0)
rospy.set_param( '/servobus/leftarm/servomap/1/name', 'left_index')
rospy.set_param( '/servobus/leftarm/servomap/1/rest', 0)
rospy.set_param( '/servobus/leftarm/servomap/2/name', 'left_middle')
rospy.set_param( '/servobus/leftarm/servomap/2/rest', 0)
rospy.set_param( '/servobus/leftarm/servomap/3/name', 'left_ring')
rospy.set_param( '/servobus/leftarm/servomap/3/rest', 0)
rospy.set_param( '/servobus/leftarm/servomap/4/name', 'left_pinky')
rospy.set_param( '/servobus/leftarm/servomap/4/rest', 0)
rospy.set_param( '/servobus/leftarm/servomap/5/name', 'left_hand')
rospy.set_param( '/servobus/leftarm/servomap/5/rest', 0)
rospy.set_param( '/servobus/leftarm/servomap/6/name', 'left_bicep')
rospy.set_param( '/servobus/leftarm/servomap/6/rest', 0)
rospy.set_param( '/servobus/leftarm/servomap/7/name', 'left_bicep_rotate')
rospy.set_param( '/servobus/leftarm/servomap/7/rest', 90)
rospy.set_param( '/servobus/leftarm/servomap/8/name', 'left_shoulder_side')
rospy.set_param( '/servobus/leftarm/servomap/8/rest', 33)
rospy.set_param( '/servobus/leftarm/servomap/9/name', 'left_shoulder_up')
rospy.set_param( '/servobus/leftarm/servomap/9/rest', 15)
rospy.set_param( '/servobus/leftarm/servomap/10/name', 'head_updown')
rospy.set_param( '/servobus/leftarm/servomap/11/name', 'head_leftright')
rospy.set_param( '/servobus/leftarm/servomap/12/name', 'head_tilt')
rospy.set_param( '/servobus/leftarm/servomap/13/name', 'eye_leftright')
rospy.set_param( '/servobus/leftarm/servomap/14/name', 'eyes_updown')
rospy.set_param( '/servobus/leftarm/servomap/15/name', 'jaw')
rospy.set_param( '/servobus/leftarm/servomap/16/name', 'waist_lean')
rospy.set_param( '/servobus/leftarm/servomap/17/name', 'waist_rotate')


rospy.set_param('/servobus/rightarm/port', rightArmPort)
rospy.set_param('/servobus/rightarm/name', 'servoBus/rightarm')

rospy.set_param( '/servobus/rightarm/servomap/0/name', 'right_thumb')
rospy.set_param( '/servobus/rightarm/servomap/1/name', 'right_index')
rospy.set_param( '/servobus/rightarm/servomap/2/name', 'right_middle')
rospy.set_param( '/servobus/rightarm/servomap/3/name', 'right_ring')
rospy.set_param( '/servobus/rightarm/servomap/4/name', 'right_pinky')
rospy.set_param( '/servobus/rightarm/servomap/5/name', 'right_hand')
rospy.set_param( '/servobus/rightarm/servomap/6/name', 'right_bicep')
rospy.set_param( '/servobus/rightarm/servomap/7/name', 'right_bicep_rotate')
rospy.set_param( '/servobus/rightarm/servomap/8/name', 'right_shoulder_side')
rospy.set_param( '/servobus/rightarm/servomap/9/name', 'right_shoulder_up')
rospy.set_param( '/servobus/rightarm/servomap/10/name', 'rightarm-nc-10')
rospy.set_param( '/servobus/rightarm/servomap/11/name', 'rightarm-nc-11')
rospy.set_param( '/servobus/rightarm/servomap/12/name', 'rightarm-nc-12')
rospy.set_param( '/servobus/rightarm/servomap/13/name', 'rightarm-nc-13')
rospy.set_param( '/servobus/rightarm/servomap/14/name', 'rightarm-nc-14')
rospy.set_param( '/servobus/rightarm/servomap/15/name', 'rightarm-nc-15')
rospy.set_param( '/servobus/rightarm/servomap/16/name', 'rightarm-nc-16')
rospy.set_param( '/servobus/rightarm/servomap/17/name', 'rightarm-nc-17')





print("Parameter Server Setup for LeftArm:")
print(rospy.get_param("/servobus/leftarm"))
print("")

print("Parameter Server Setup for RightArm:")
print(rospy.get_param("/servobus/rightarm"))
print("")