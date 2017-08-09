#!/usr/bin/env python
import roslib;
import time, sys, threading, math
import copy
import datetime
import socket, select
import struct
import traceback, code
import optparse
import SocketServer

 
import rospy
import actionlib
from sensor_msgs.msg import JointState
from control_msgs.msg import FollowJointTrajectoryAction
from trajectory_msgs.msg import JointTrajectory, JointTrajectoryPoint
from sensor_msgs.msg import JointState
from std_msgs.msg import Header
 
class InmoovTrajectoryFollower:
        
        jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)
        
        def sendJointCommand(self,name,val):
            val = val * 57.2958
            jointcommand = JointState()
            jointcommand.header = Header()
            jointcommand.header.stamp = rospy.Time.now()
            jointcommand.name.append(name)
            jointcommand.position.append(val)
            jointcommand.velocity = []
            jointcommand.effort= []
            self.jointPublisher.publish(jointcommand)


        def __init__(self):
            self.server = actionlib.SimpleActionServer("follow_joint_trajectory", FollowJointTrajectoryAction, self.execute, auto_start=False)
 
        def execute(self, goal):
             #print "I am executing and I got the goal:", goal
             joint_names = goal.trajectory.joint_names
             print joint_names
             point = goal.trajectory.points

             for finalpoint in point:
                print "new point pos"
                pos = finalpoint.positions
             i = 0
             for j in joint_names:
             	print j
             	print pos[i]
                self.sendJointCommand(j,pos[i])
                i = i + 1
             i = 0
             #sleep(3)
             self.server.set_succeeded()
 
        def start(self):
             self.server.start()
        print "The action server for this driver has been started"
 
def main():
        rospy.init_node('inmoov_action_server')
        action_server = InmoovTrajectoryFollower()
        action_server.start()
        rospy.spin()
 
if __name__ == '__main__':
        main()
