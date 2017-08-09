#! /usr/bin/env python

# Copyright (c) 2016-2017 Mike Jacobs
# 
# Permission is hereby granted, free of charge, to any person obtaining 
# a copy of this software and associated documentation files 
# (the "Software"), to deal in the Software without restriction, 
# including without limitation the rights to use, copy, modify, merge, 
# publish, distribute, sublicense, and/or sell copies of the Software, 
# and to permit persons to whom the Software is furnished to do so, 
# subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# 
import rospy
import math
import actionlib
from sensor_msgs.msg import JointState
from inmoov_msgs.msg import LeapFrame, LeapHand, LeapPointable, LeapGesture
from geometry_msgs.msg import Point, Vector3
from std_msgs.msg import Header
from inmoov_msgs.msg import MotorCommand
import threading
from inmoov_msgs.msg import NeoPixel_command
from inmoov_msgs.srv import RequestStatus
from time import sleep

FINGERS = ['thumb', 'index', 'middle', 'ring', 'pinky'] #pointable.pointableType
INDEX = 1
RIGHT = 'right'
LEFT = 'left'
subscriber = None

ports = rospy.get_param('inmoov/port')
lastHandCount = 0
commandPublishers = {}

for key, value in ports.iteritems():
    commandPublishers[int(key)] = rospy.Publisher("servobus/" + str(key) + "/motorcommand", MotorCommand, queue_size=10)


neoPub = rospy.Publisher("neopixel", NeoPixel_command, queue_size=10)
jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)

def getLeapNumHands():
    #rospy.wait_for_service('vr_controller')
    try:
        inmoov_leapmotion_vr = rospy.ServiceProxy('vr_controller_status', RequestStatus)
        response = inmoov_leapmotion_vr("leap_subscriber")
        r = response.status
        print("response from leap: " + str(r))
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e
    return r

def neopixelCommand(dType, r, g, b,w):
    neoCmd = NeoPixel_command()
    neoCmd.displayType = str(dType)
    neoCmd.red = r
    neoCmd.green = g
    neoCmd.blue = b
    neoCmd.wait = w
    neoPub.publish(neoCmd)

def leapStatus():
    while 1 == 1:
        #similar to time.sleep()
        #print("status")
        if getLeapNumHands() == 0:
            #turn it red
            neopixelCommand(9, 255, 0, 0,0)
        else:
            #turn it green
            neopixelCommand(9, 0, 255, 0,0)

        #sleep(.05)
    pass


def enableCmd(bus,pin):
    portVal = bus
    motorcommand = MotorCommand()
    motorcommand.pin = pin
    motorcommand.parameter = 0x18
    motorcommand.value = 1

    commandPublishers[portVal].publish(motorcommand)

def enableHandServos():
    #right
    enableCmd(int(rospy.get_param('inmoov/joints/r_thumb_joint/bus')), int(rospy.get_param('inmoov/joints/r_thumb_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/r_index_joint/bus')), int(rospy.get_param('inmoov/joints/r_index_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/r_middle_joint/bus')), int(rospy.get_param('inmoov/joints/r_middle_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/r_ring_joint/bus')), int(rospy.get_param('inmoov/joints/r_ring_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/r_pinky_joint/bus')), int(rospy.get_param('inmoov/joints/r_pinky_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/r_wrist_roll_joint/bus')), int(rospy.get_param('inmoov/joints/r_wrist_roll_joint/servoPin')))
    #left
    enableCmd(int(rospy.get_param('inmoov/joints/l_thumb_joint/bus')), int(rospy.get_param('inmoov/joints/l_thumb_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/l_index_joint/bus')), int(rospy.get_param('inmoov/joints/l_index_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/l_middle_joint/bus')), int(rospy.get_param('inmoov/joints/l_middle_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/l_ring_joint/bus')), int(rospy.get_param('inmoov/joints/l_ring_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/l_pinky_joint/bus')), int(rospy.get_param('inmoov/joints/l_pinky_joint/servoPin')))
    enableCmd(int(rospy.get_param('inmoov/joints/l_wrist_roll_joint/bus')), int(rospy.get_param('inmoov/joints/l_wrist_roll_joint/servoPin')))


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

def sendHandCommand(name, a, handType):
    #print("handtype")
    #print(str(handType))
    jointCmd = ""
    if handType == RIGHT:
        jointCmd = "r_" + str(name) + "_joint"
    if handType == LEFT:
       jointCmd = "l_" + str(name) + "_joint"
    sendJointCommand(jointCmd,int(a))

def magnitude(v):
    # Leap vectors appear to be normalized, so this is not needed for dot
    return math.sqrt(v.x*v.x + v.y*v.y + v.z*v.z) 
    
def dot(v1, v2):
    # dot product of two vector messages
    return (v1.x*v2.x + v1.y*v2.y + v1.z*v2.z)

def angleRadians(v1, v2):
    # angle between two vectors in radians
    # Leap vectors appear to be normalized
    return math.acos(dot(v1,v2))
    
def angleDegrees(v1, v2):
    # angle between two vectors in degrees
    return math.degrees(angleRadians(v1, v2))
    
def cross(v1, v2):
    # Cross product of two vectors v = v1 X v2
    # Uses Sarrus' rule or cofactor expansion
    v = Vector3()
    v.x = v1.y * v2.z - v1.z * v2.y
    v.y = v1.z * v2.x - v1.x * v2.z
    v.z = v1.x * v2.y - v1.y * v2.x
    return v
    
def handleMessage(frame):
    hands = frame.hands
    pointables = frame.pointables
    #rospy.loginfo('{0} : Leap message received with {1} hands and {2} fingers'.format(frame.header.seq, len(hands), len(pointables)))
    
    for hand in hands:
        now = rospy.Time.now()
        confidence = hand.confidence
        if(confidence < 0.50): 
            return
        
        handId = hand.ID
        handDirection = hand.direction
        palmNormal = hand.palmNormal
        #handGoal = HandGoal()
        # Fingers
        for pointable in pointables:
            if((pointable.handId == handId) and (pointable.tool == False)):
                # This is a finger for the current hand and not a tool
                reference = handDirection
                if(FINGERS[pointable.pointableType] == 'thumb'):
                    reference = cross(handDirection, palmNormal)
                angle = angleDegrees(reference, pointable.direction)
                if((angle < 30) and pointable.extended): 
                    # Let Leap decide if a finger is completely extended
                    angle = 0
                sendHandCommand(FINGERS[pointable.pointableType], int(angle), hand.handType)
        
        # Wrist - Palm facing down is considered 90 degrees, turned with thumb up is 0 degrees
        # Use the palm normal compared to the x-axis to determine rotation
        downReference = Vector3()
        if(hand.handType == RIGHT):
            downReference.x = -1  # negative x-axis
        else:
            downReference.x = 1  # positive x-axis
        downReference.y = 0
        downReference.z = 0
        #handGoal.wrist = int(angleDegrees(downReference, palmNormal))
        #sendHandCommand('wrist_roll', int(angleDegrees(downReference, palmNormal)),hand.handType)
        #rospy.loginfo("Wrist angle: {0}".format(handGoal.wrist))
                        
        #handGoal.header.stamp = now
        #handGoal.header.seq = frame.header.seq
        #handGoal.received = frame.header.stamp
        #handGoal.created = frame.timestamp
        
        #if(hand.handType == RIGHT):
        #    rightHand.send_goal(handGoal)
        #else: 
            # rospy.loginfo("*** LEFT HAND NOT IMPLEMENTED YET ***")

def onShutdown():
    rospy.logdebug("Leap Subscriber shutting down")
    global subscriber
    if(subscriber is not None):
        subscriber.unregister()
    rospy.sleep(5.0)
    
rospy.init_node('LeapMotionSubscriber')
enableHandServos()
rospy.on_shutdown(onShutdown)

#rightHand = actionlib.SimpleActionClient('right/hand', HandAction)
rospy.logdebug("Waiting for right hand action server...")
#rightHand.wait_for_server()
rospy.logdebug("Right hand action server found")
subscriber = rospy.Subscriber('leapmotion', LeapFrame, handleMessage, queue_size = 1)
rospy.logdebug("Leap Motion Subscriber SUCCESSFULLY started")
thread = threading.Thread(name='leapStatus', target=leapStatus)
thread.start()
try:
    rospy.spin()
except:
    rospy.logwarn("Leap Motion Subscriber FAILED")
    import sys, traceback
    exc_type, exc_value, exc_traceback = sys.exc_info()
    traceback.print_exception(exc_type, exc_value, exc_traceback, limit=5, file=sys.stdout)