#!/usr/bin/env python
import rospy
from inmoov_msgs.msg import MotorCommand
from inmoov_msgs.msg import ServoSetup
from inmoov_msgs.msg import NeoPixel_command
from sensor_msgs.msg import JointState
from std_msgs.msg import Header
from time import sleep


jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)
neoPub = rospy.Publisher("neopixel", NeoPixel_command, queue_size=10)

def neopixelCommand(dType, r, g, b, w):
    neoCmd = NeoPixel_command()
    neoCmd.displayType = dType
    neoCmd.red = r
    neoCmd.green = g
    neoCmd.blue = b
    neoCmd.wait = w
    neoPub.publish(neoCmd)

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


rospy.init_node('test_r')
#sendJointCommand("l_upper_arm_roll_joint", 52)
sendJointCommand("r_upper_arm_roll_joint", 52)
rospy.sleep(5)
#sendJointCommand("l_upper_arm_roll_joint", -52)
sendJointCommand("r_upper_arm_roll_joint", -52)

