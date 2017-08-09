#!/usr/bin/env python
import rospy
import numpy
import random
from time import sleep
from inmoov_msgs.msg import MotorCommand
from inmoov_msgs.msg import NeoPixel_command
from std_msgs.msg import String
from std_msgs.msg import Header
from sensor_msgs.msg import JointState
from inmoov_msgs.srv import *
import os
import sys
from os.path import dirname, abspath
import threading 

#hacky way to add include directory to sys path
sys.path.append(os.path.join(dirname(dirname(abspath(__file__))),'include'))

from constants import PROTOCOL

servo_init = False

while servo_init == False:
    if rospy.has_param("inmoov_servo_init"):
        servo_init = True
    else:
        print("Inmoov Demos: Servos are not initialized sleep for 5 seconds and then checking again...")
        sleep(5)

#get number of ports
ports = rospy.get_param('inmoov/port')

neoPub = rospy.Publisher("neopixel", NeoPixel_command, queue_size=10)


#Wait for parm server (aka the arduino is connected and initialized)
#for key, value in ports.iteritems():
#    rospy.wait_for_service('servobus/'+ str(key) +'/motorparameter')
#    sleep(1)

commandPublishers = {}

for key, value in ports.iteritems():
    commandPublishers[int(key)] = rospy.Publisher("servobus/" + str(key) + "/motorcommand", MotorCommand, queue_size=10)

jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)

response = 0

#HEAD
inmoovRotHeadMin = 0
inmoovRotHeadMax = 180
inmoovNeckMin = 0
inmoovNeckMax = 180
inmoovEyeXMin = 0
inmoovEyeXMax = 180
inmoovEyeYMin = 0
inmoovEyeYMax = 180
inmoovJawMin = 0
inmoovJawMax = 180

#fingers
inmoovFingerMin = 0
inmoovFingerMax = 180

#wrist
inmoovWristMin = 0
inmoovWristMax = 180

#Arm
inmoovBicepMin = 0
inmoovBicepMax = 180
inmoovBicepRotateMin = 0
inmoovBicepRotateMax = 180
inmoovShoulderMin = 0
inmoovShoulderMax = 180
inmoovOmniMin = 0
inmoovOmniMax = 180

#Torso
inmoovTorsoTopMin = 0
inmoovTorsoTopMax = 180
inmoovTorsoMidMin = 0
inmoovTorsoMidMax = 180




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

def sendJointSpeed(name,spd):
    #print("jointSpeed")
    temp =1
    #set speed
    #motorcommand = MotorCommand()
    #motorcommand.pin = pin
    #motorcommand.parameter = PROTOCOL.MAXSPEED
    #motorcommand.value = convertedSpeed

    #commandPublishers[bus].publish(motorcommand)

#def takeKinectPicture():
    #os.system("rosrun image_view image_saver image:=/kinect2/hd/image_color")

def servoToPhysicalDegrees(name, val, minPhy, maxPhy, minInmoov, maxInmoov):
    #tmpMinPhy = 0
    #tmpMaxPhy = 0
    #negative = False
    #if name != "r_upper_arm_roll_joint":
    #    if minPhy < 0 and maxPhy < 0:
    #        tmpMinPhy = abs(minPhy)
    #        tmpMaxPhy = abs(maxPhy)
    #        negative = True
    #    else:
    #        tmpMinPhy = minPhy
    #        tmpMaxPhy = maxPhy

    #if tmpMinPhy > tmpMaxPhy:
    #    temp = maxPhy
    #    maxPhy = maxPhy
    #    minPhy = temp
    #if name == "r_shoulder_out_joint" or name == "r_shoulder_lift_joint" or name == "r_elbow_flex_joint" or name == "r_upper_arm_roll_joint" or name == "l_elbow_flex_joint" or name == "l_shoulder_lift_joint":
    #if name == "l_shoulder_lift_joint" or name == "r_shoulder_lift_joint" or name == "r_shoulder_out_joint" or name == "r_upper_arm_roll_joint":   
    #    temp = maxInmoov
    #    maxInmoov = minInmoov
     #   minInmoov = temp
        #temp = maxPhy
        #maxPhy = minPhy
        #minPhy = temp

    inmoovDegrees = float(maxInmoov - minInmoov)
    ratio = float(val / inmoovDegrees)
    totalPhyDegrees = float(maxPhy-minPhy)
    totalMovement = float(totalPhyDegrees * ratio)
    if name == "l_shoulder_lift_joint" or name == "r_shoulder_lift_joint" or name == "r_shoulder_out_joint" or name == "r_elbow_flex_joint" or name == "l_elbow_flex_joint" or name == "r_upper_arm_roll_joint":
    	phy = float(maxPhy - totalMovement)
    else:
    	phy = float(minPhy + totalMovement)
    #if negative:
   # 	phy = phy * -1
    if name == "l_shoulder_out_joint":	
    	print("")
    	print(name)
    	print("minPhy: " + str(minPhy))
    	print("maxPhy: " + str(maxPhy))
    	print("totalPhy: " + str(totalPhyDegrees))
    	print("totalMovement: " + str(totalMovement))
    	print("val: " + str(val))
    	print("ratio: " + str(ratio))
    	print("phy: " + str(phy))

    #phy = ((maxPhy-minPhy) * (val / (maxInmoov-minInmoov))) + minPhy
    #ratio = abs(maxPhy-minPhy)/abs(maxInmoov-minInmoov)
    #phy = (ratio*val) + minPhy
    #if minPhy < 0 and maxPhy < 0:
    #    phy = phy * -1
    #print("inmoovDegrees: " + str(inmoovDegrees) + " ratio: " + str(ratio) + " totalPhyDegrees: " + str(totalPhyDegrees) + " totalMovement: " + str(totalMovement))
    #print("phy: " + str(phy))
    return phy


def convertSpeed(speed):
    slope = 3.25
    intercept = 1
    vel = numpy.exp(slope * speed + intercept)
    if speed >= 1.0:
       vel = 0
    
    return vel


def speak(toSpeak):
    #print("in speak")
    rospy.wait_for_service('voicesrv')
    try:
        inmoov_voice_srv = rospy.ServiceProxy('voicesrv', inmoov_voice)
        response = inmoov_voice_srv(toSpeak)
        tmpSleep = response.data
        #print("start sleep")
        #print(tmpSleep)
        sleep(tmpSleep)
        #print("end sleep")
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e

def playFile(location):
    rospy.wait_for_service('soundPlaySrv')
    try:
        sound_play_srv = rospy.ServiceProxy('soundPlaySrv', inmoov_sound_play)
        response = sound_play_srv(location)
        tmpSleep = response.data
        #print("start sleep")
        #print(tmpSleep)
        #sleep(tmpSleep)
        #print("end sleep")
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e


def speakBlocking(s):
    speak(s)

def neopixelCommand(dType, r, g, b, w):
    neoCmd = NeoPixel_command()
    neoCmd.displayType = "solid"
    neoCmd.red = r
    neoCmd.green = g
    neoCmd.blue = b
    neoCmd.wait = w
    neoPub.publish(neoCmd)

def enableAllServos():
    jointsPerPort = rospy.get_param('inmoov/joints')
    #get keys
    for key, value in jointsPerPort.iteritems():
        portVal = value.get("bus")
        #build Message
        motorcommand = MotorCommand()
        motorcommand.pin = value.get("servoPin")
        motorcommand.parameter = PROTOCOL.ENABLE
        motorcommand.value = 1

        commandPublishers[portVal].publish(motorcommand)
        sleep(.1)

def configureServoSmooths():
    jointsPerPort = rospy.get_param('inmoov/joints')
    #get keys
    for key, value in jointsPerPort.iteritems():
        #set smoothing to 1 
        motorcommand = MotorCommand()
        motorcommand.pin = value.get("servoPin")
        motorcommand.parameter = PROTOCOL.SMOOTHING 
        motorcommand.value = 1
        commandPublishers[portVal].publish(motorcommand)
        sleep(.1)

        


def moveTorso(tiltTorsoAngle,rotateTorsoAngle):
    jointName="waist_pan_joint"
    jointAngle = tiltTorsoAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovTorsoTopMin
    jointInmoovMax = inmoovTorsoTopMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    jointName="waist_roll_joint"
    jointAngle = rotateTorsoAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovTorsoMidMin
    jointInmoovMax = inmoovTorsoMidMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))


def moveHand(hand,thumbAngle,indexAngle,middleAngle,ringAngle,pinkyAngle,wristAngle):
    if hand == "left":
        jointName="l_thumb_joint"
        jointAngle =  thumbAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_index_joint"
        jointAngle =  indexAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_middle_joint"
        jointAngle = middleAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_ring_joint"
        jointAngle = ringAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_pinky_joint"
        jointAngle = pinkyAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_wrist_roll_joint"
        jointAngle = wristAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovWristMin
        jointInmoovMax = inmoovWristMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    elif hand == "right":
        jointName="r_thumb_joint"
        jointAngle =  thumbAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_index_joint"
        jointAngle =  indexAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_middle_joint"
        jointAngle = middleAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_ring_joint"
        jointAngle = ringAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_pinky_joint"
        jointAngle = pinkyAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_wrist_roll_joint"
        jointAngle = wristAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovWristMin
        jointInmoovMax = inmoovWristMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))


def moveTorso(tiltTorsoAngle,rotateTorsoAngle,notused):
    jointName="waist_pan_joint"
    jointAngle = tiltTorsoAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovTorsoTopMin
    jointInmoovMax = inmoovTorsoTopMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    jointName="waist_roll_joint"
    jointAngle = rotateTorsoAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovTorsoMidMin
    jointInmoovMax = inmoovTorsoMidMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))



def moveHand6(hand,thumbAngle,indexAngle,middleAngle,ringAngle,pinkyAngle):
    if hand == "left":
        jointName="l_thumb_joint"
        jointAngle =  thumbAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_index_joint"
        jointAngle =  indexAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_middle_joint"
        jointAngle = middleAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_ring_joint"
        jointAngle = ringAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_pinky_joint"
        jointAngle = pinkyAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    elif hand == "right":
        jointName="r_thumb_joint"
        jointAngle =  thumbAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_index_joint"
        jointAngle =  indexAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_middle_joint"
        jointAngle = middleAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_ring_joint"
        jointAngle = ringAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_pinky_joint"
        jointAngle = pinkyAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovFingerMin
        jointInmoovMax = inmoovFingerMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

def moveArm(arm,bicepAngle,rotateAngle,shoulderAngle,omniplateAngle):
    if arm == "left":
        jointName="l_elbow_flex_joint"
        jointAngle =  bicepAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovBicepMin
        jointInmoovMax = inmoovBicepMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_upper_arm_roll_joint"
        jointAngle =  rotateAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovBicepRotateMin
        jointInmoovMax = inmoovBicepRotateMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_shoulder_lift_joint"
        jointAngle = shoulderAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovShoulderMin
        jointInmoovMax = inmoovShoulderMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="l_shoulder_out_joint"
        jointAngle = omniplateAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovOmniMin
        jointInmoovMax = inmoovOmniMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    elif arm == "right":
        jointName="r_elbow_flex_joint"
        jointAngle =  bicepAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovBicepMin
        jointInmoovMax = inmoovBicepMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_upper_arm_roll_joint"
        jointAngle =  rotateAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovBicepRotateMin
        jointInmoovMax = inmoovBicepRotateMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_shoulder_lift_joint"
        jointAngle = shoulderAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovShoulderMin
        jointInmoovMax = inmoovShoulderMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

        jointName="r_shoulder_out_joint"
        jointAngle = omniplateAngle
        jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
        jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
        jointInmoovMin = inmoovOmniMin
        jointInmoovMax = inmoovOmniMax
        sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))


def setTorsoSpeed(leanSpeed,midSpeed,notused):
    sendJointSpeed("waist_pan_joint",leanSpeed)
    sendJointSpeed("waist_roll_joint",midSpeed)

def setArmSpeed(arm,bicepSpeed,rotateSpeed,shoulderSpeed,omniplateSpeed):
    if arm == "right":
        sendJointSpeed("r_elbow_flex_joint",bicepSpeed)
        sendJointSpeed("r_upper_arm_roll_joint",rotateSpeed)
        sendJointSpeed("r_shoulder_lift_joint",shoulderSpeed)
        sendJointSpeed("r_shoulder_out_joint",omniplateSpeed)
    elif arm == "left":
        sendJointSpeed("l_elbow_flex_joint",bicepSpeed)
        sendJointSpeed("l_upper_arm_roll_joint",rotateSpeed)
        sendJointSpeed("l_shoulder_lift_joint",shoulderSpeed)
        sendJointSpeed("l_shoulder_out_joint",omniplateSpeed)


def setHandSpeed(hand,thumbSpeed,indexSpeed,middleSpeed,ringSpeed,pinkySpeed,wristSpeed):
    if hand == "right":
        sendJointSpeed("r_thumb_joint",thumbSpeed)
        sendJointSpeed("r_index_joint",indexSpeed)
        sendJointSpeed("r_middle_joint",middleSpeed)
        sendJointSpeed("r_ring_joint",ringSpeed)
        sendJointSpeed("r_index_joint",pinkySpeed)
        sendJointSpeed("r_wrist_roll_joint",wristSpeed)
    if hand == "left":
        sendJointSpeed("l_thumb_joint",thumbSpeed)
        sendJointSpeed("l_index_joint",indexSpeed)
        sendJointSpeed("l_middle_joint",middleSpeed)
        sendJointSpeed("l_ring_joint",ringSpeed)
        sendJointSpeed("l_index_joint",pinkySpeed)
        sendJointSpeed("l_wrist_roll_joint",wristSpeed)

def setHeadSpeed5(neckRotateSpeed,neckUpDownSpeed,eyeXSpeed,eyeYSpeed,jawSpeed):
    sendJointSpeed("head_pan_joint",neckRotateSpeed)
    sendJointSpeed("head_roll_joint",neckUpDownSpeed)
    sendJointSpeed("eyes_pan_joint",eyeXSpeed)
    sendJointSpeed("eyes_tilt_joint",eyeYSpeed)
    sendJointSpeed("jaw_joint",jawSpeed)
 
def setHeadSpeed(neckRotateSpeed,neckUpDownSpeed):
    sendJointSpeed("head_pan_joint",neckRotateSpeed)
    sendJointSpeed("head_roll_joint",neckUpDownSpeed)

def moveNeck(neckUpDownAngle,neckRotateAngle):
    jointName="head_tilt_joint"
    jointAngle =  neckUpDownAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovNeckMin
    jointInmoovMax = inmoovNeckMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    jointName="head_pan_joint"
    jointAngle =  neckRotateAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovRotHeadMin
    jointInmoovMax = inmoovRotHeadMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

def moveHead(neckUpDownAngle,neckRotateAngle):
    jointName="head_tilt_joint"
    jointAngle =  neckUpDownAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovNeckMin
    jointInmoovMax = inmoovNeckMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    jointName="head_pan_joint"
    jointAngle =  neckRotateAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovRotHeadMin
    jointInmoovMax = inmoovRotHeadMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))


def moveHead5(neckUpDownAngle,neckRotateAngle,jawAngle, eyesXAngle,eyesYAngle):
    jointName="head_tilt_joint"
    jointAngle =  neckUpDownAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovNeckMin
    jointInmoovMax = inmoovNeckMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    jointName="head_pan_joint"
    jointAngle =  neckRotateAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovRotHeadMin
    jointInmoovMax = inmoovRotHeadMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    jointName="jaw_joint"
    jointAngle =  jawAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovJawMin
    jointInmoovMax = inmoovJawMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    jointName="eyes_pan_joint"
    jointAngle =  eyesXAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovEyeXMin
    jointInmoovMax = inmoovEyeXMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))

    jointName="eyes_tilt_joint"
    jointAngle =  eyesYAngle
    jointMinPhy = rospy.get_param("/inmoov/joints/" + jointName + "/minGoal")
    jointMaxPhy = rospy.get_param("/inmoov/joints/" + jointName + "/maxGoal")
    jointInmoovMin = inmoovEyeYMin
    jointInmoovMax = inmoovEyeYMax
    sendJointCommand(jointName,servoToPhysicalDegrees(jointName, jointAngle, jointMinPhy, jointMaxPhy, jointInmoovMin, jointInmoovMax))


#source modified from https://raw.githubusercontent.com/MyRobotLab/pyrobotlab/master/home/hairygael/InMoov3.full_Version_MRL_above_1.0.1XXX.py

def carrybaby():
    moveHead(18,111,85,85,5)
    moveArm("left",81,50,45,16)
    moveArm("right",78,44,50,31)
    moveHand("left",180,180,180,180,180,25)
    moveHand("right",111,128,140,151,169,86)
    moveTorso(90,90,90)


def slowlycloserighthand():
    setArmSpeed("left",1.0,1.0,1.0,1.0)
    setArmSpeed("right",1.0,0.8,1.0,1.0)
    setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0)
    setHandSpeed("right",1.0,0.8,0.8,0.7,1.0,1.0)
    setHeadSpeed(0.8,0.8)
    moveHead(30,60)
    moveArm("right",5,80,30,10)
    moveHand("right",176,173,175,175,2,180)

def stopit():
    lookinmiddle()
    sleep(1)
    relax()
    speak("yes")
    if (data == "pause"):
        speak("yes")
        
def playsong(data):
    if (data == "can i have your attention"):
            speak("ok you have my attention")
            stopit()
            speak("electro funk inmoov")
            setHeadSpeed(1.0,1.0)
            setArmSpeed("left",1.0,1.0,1.0,1.0)
            setArmSpeed("right",1.0,1.0,1.0,1.0)
            setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0)
            setHandSpeed("right",1.0,1.0,1.0,1.0,1.0,1.0)
            setTorsoSpeed(1.0,1.0,1.0)
           #for x in range(5):
            moveHead(60,90)
            sleep(2)
            moveHead(110,80)
            sleep(2)
            moveHead(60,90)
            sleep(2)
            moveHead(110,80)
            sleep(2)
            moveHead(60,90)
            sleep(2)
            moveHead(110,80)
            sleep(2)
            moveHead(60,90)
            sleep(2)
            moveHead(110,80)
            sleep(2)
            moveHead(60,90)
            sleep(2)
            moveHead(110,80)
            sleep(2)
            moveHead(60,90)
            sleep(2)
            moveHead(110,80)
            sleep(2)
            moveHead(60,90)
            fingerright()
            sleep(3)
            moveHead(110,80)
            fingerleft()
            sleep(3)
            moveHead(60,90)
            fingerright()
            sleep(3)
            moveHead(110,80)
            fingerleft()
            sleep(3)
            moveHead(60,90)
            fingerright()
            sleep(3)
            moveHead(110,80)
            fingerleft()
            sleep(3)
            moveHead(60,90)
            fingerright()
            sleep(3)
            moveHead(110,80)
            fingerleft()
            sleep(3)
            moveTorso(90,90,90)
            fullspeed()
            giving()
            sleep(5)
            armsFront()
            sleep(4)
            fullspeed()
            daVinci()
            sleep(5)
            surrender()
            sleep(6)
            giving()
            sleep(6)
            moveHead(60,90)
            fingerright()
            sleep(3)
            moveHead(110,80)
            fingerleft()
            sleep(3)
            moveHead(60,90)
            fingerright()
            sleep(3)
            moveHead(110,80)
            fingerleft()
            relax()
            moveTorso(90,90,90)
            sleep(3)
            fullspeed()
            sleep(3)
            madeby()
            relax()
            sleep(5)
            detach()


def newyork():
    print("Starting new york")
    setHeadSpeed5(1.0,1.0,1.0,1.0,1.0)
    setArmSpeed("left",1.0,1.0,1.0,1.0)
    setArmSpeed("right",1.0,1.0,1.0,1.0)
    setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0)
    setHandSpeed("right",1.0,1.0,1.0,1.0,1.0,1.0)
    setTorsoSpeed(1.0,1.0,1.0)
    moveHead(90,90)
    moveArm("left",70,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",70,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",70,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(90,90)
    moveArm("left",49,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,140)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",70,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(90,90)
    moveArm("left",49,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,140)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(90,90)
    moveArm("left",70,90,75,10)
    moveArm("right",8,85,28,12)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",70,90,75,10)
    moveArm("right",7,82,33,13)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",70,90,75,10)
    moveArm("right",6,85,28,10)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(90,90)
    moveArm("left",49,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,140)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(60,107)
    moveArm("left",70,90,75,10)
    moveArm("right",7,87,33,11)
    moveHand("left",40,171,180,180,180,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(0.45)
    moveHead(90,90)
    moveArm("left",49,90,75,10)
    moveArm("right",5,90,30,10)
    moveHand("left",40,171,180,180,180,140)
    moveHand("right",2,2,2,2,2,90)
    sleep(1.5)
    setHeadSpeed(0.85,0.85)
    setArmSpeed("left",0.90,0.90,0.90,0.90)
    setArmSpeed("right",0.90,0.90,0.90,0.90)
    setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0)
    setHandSpeed("right",1.0,1.0,1.0,1.0,1.0,1.0)
    setTorsoSpeed(1.0,1.0,1.0)
    moveHead(75,97)
    moveArm("left",85,106,25,18)
    moveArm("right",87,107,32,18)
    moveHand("left",110,62,56,88,81,145)
    moveHand("right",78,88,101,95,81,27)
    moveTorso(90,90,90)
    sleep(1)
    speakBlocking("Start spreading the news")
    setHeadSpeed(0.85,0.85)
    setArmSpeed("left",0.80,0.80,0.80,0.80)
    setArmSpeed("right",0.80,0.80,0.80,0.80)
    setHandSpeed("left",0.80,0.80,0.80,0.80,0.80,0.80)
    setHandSpeed("right",0.80,0.80,0.80,0.80,0.80,0.80)
    setTorsoSpeed(1.0,1.0,1.0)
    moveHead(160,107)
    moveArm("left",5,86,30,10)
    moveArm("right",86,140,83,80)
    moveHand("left",99,140,173,167,130,26)
    moveHand("right",135,6,170,145,168,180)
    moveTorso(90,90,90)
    sleep(0.8)
    speakBlocking("I am leaving today")
    moveHead(160,68)
    moveArm("left",5,86,30,10)
    moveArm("right",86,140,83,80)
    moveHand("left",99,140,173,167,130,26)
    moveHand("right",135,6,170,145,168,180)
    moveTorso(90,90,90)
    sleep(0.4)
    speakBlocking("I want to be a part of it")
    moveHead(138,86)
    moveArm("left",80,112,52,34)
    moveArm("right",80,122,59,54)
    moveHand("left",105,76,71,98,76,90)
    moveHand("right",55,0,55,48,142,93)
    moveTorso(90,90,90)
    sleep(0.5)
    speakBlocking("New York, New York")
    moveHead(138,86)
    moveArm("left",80,112,52,34)
    moveArm("right",80,122,59,54)
    moveHand("left",105,76,71,98,76,90)
    moveHand("right",55,0,55,48,142,93)
    moveTorso(90,90,90)
    sleep(0.4)
    speakBlocking("If I can make it there")
    moveHead(160,86)
    moveArm("left",80,128,71,62)
    moveArm("right",80,132,69,80)
    moveHand("left",45,40,30,25,35,90)
    moveHand("right",55,0,55,48,142,72)
    moveTorso(90,90,90)
    sleep(0.2)
    speakBlocking("I'll make it anywhere")
    moveHead(160,86)
    moveArm("left",80,128,71,62)
    moveArm("right",80,132,69,80)
    moveHand("left",45,40,30,25,35,90)
    moveHand("right",55,0,55,48,142,72)
    moveTorso(90,90,90)
    sleep(0.2)
    moveHead(136,66)
    moveArm("left",5,138,30,77)
    moveArm("right",5,134,59,75)
    moveHand("left",127,101,122,129,123,131)
    moveHand("right",55,2,50,48,30,90)
    moveTorso(90,90,90)
    sleep(0.2)
    speakBlocking("It's up to you")
    moveHead(160,86)
    moveArm("left",46,131,30,80)
    moveArm("right",71,145,36,80)
    moveHand("left",45,40,30,96,107,90)
    moveHand("right",55,4,50,49,114,90)
    moveTorso(90,90,90)
    sleep(0.2)
    speakBlocking("New York, New York")
    sleep(2)
    relax()
    print("ending new york")
    
def phonehome():
    relax()
    setHeadSpeed5(1.0,1.0,1.0,1.0,1.0)
    setArmSpeed("left",1.0,1.0,1.0,1.0)
    setArmSpeed("right",1.0,1.0,1.0,1.0)
    setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0)
    setHandSpeed("right",1.0,1.0,1.0,1.0,1.0,1.0)
    setTorsoSpeed(1.0,1.0,1.0)
    moveHead(160,68)
    moveArm("left",5,86,30,20)
    moveArm("right",86,140,83,80)
    moveHand("left",99,140,173,167,130,26)
    moveHand("right",135,6,170,145,168,180)
    moveTorso(25,80,90)
    sleep(2)
    speakBlocking("E,T phone the big home of the inmoov nation")
    sleep(0.2)
    relax()
    
def test1():
    rest()
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.9)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(50,110)
    moveArm("left",88,90,70,23)
    moveArm("right",73,90,70,27)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",2,2,2,2,2,90)
    moveTorso(90,90,90)
    sleep(2)



def madeby():
    print("Starting made by")
    relax()
    sleep(1)
    moveHead(80,86)
    moveArm("left",5,90,30,10)
    moveArm("right",5,90,30,10)
    moveHand("left",45,40,30,25,35,90)
    moveHand("right",55,2,50,48,30,90)
    moveTorso(90,90,90)
    sleep(3)
    speakBlocking("hello seacoast school of technology students")
    #speakBlocking("bonjour")
    moveHead(80,98)
    moveArm("left",5,90,30,10)
    moveArm("right",5,90,30,10)
    moveHand("left",45,40,30,25,35,90)
    moveHand("right",55,2,50,48,30,90)
    moveTorso(90,90,90)
    sleep(1)
    moveHead(90,89)
    moveArm("left",42,104,30,10)
    moveArm("right",33,116,30,10)
    moveHand("left",45,40,30,25,35,120)
    moveHand("right",55,2,50,48,30,40)
    moveTorso(90,90,90)
    sleep(1)
    moveHead(80,98)
    moveArm("left",5,99,30,16)
    moveArm("right",5,94,30,16)
    moveHand("left",120,116,110,115,98,73)
    moveHand("right",114,146,125,113,117,109)
    moveTorso(90,90,90)
    speakBlocking("my name is Rosie")

    moveHead(68,90)
    moveArm("left",5,99,30,16)
    moveArm("right",85,102,38,16)
    moveHand("left",120,116,110,115,98,73)
    moveHand("right",114,146,161,132,168,19)
    moveTorso(90,90,90)
    sleep(0.5)
    ##setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    ##setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    ##setHeadSpeed(1.0, 0.90)
    ##setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(87,94)
    moveArm("left",5,99,36,16)
    moveArm("right",81,105,42,16)
    moveHand("left",120,116,110,115,98,50)
    moveHand("right",114,118,131,132,168,19)
    moveTorso(90,90,90)
    sleep(1)
    speakBlocking("I was built by Matt, Billy, and Adam")
    #speakBlocking("j'ai ete creer par gael langevin")
    setHandSpeed("left", 0.90, 0.90, 0.90, 0.90, 0.90, 0.95)
    setHandSpeed("right", 0.90, 0.90, 0.90, 0.90, 0.90, 0.95)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 0.90, 1.0, 1.0, 1.0)
    ##setHeadSpeed(1.0, 0.90)
    ##setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(105,94)
    moveArm("left",5,99,36,16)
    moveArm("right",81,105,42,16)
    moveHand("left",120,116,110,115,98,50)
    moveHand("right",114,118,131,132,168,19)
    moveTorso(90,90,90)
    sleep(0.2)
    moveHead(80,86)
    moveArm("left",5,96,25,10)
    moveArm("right",5,94,26,10)
    moveHand("left",110,62,56,88,81,18)
    moveHand("right",78,88,101,95,81,137)
    moveTorso(90,90,90)
    sleep(0.2)
    moveHead(75,97)
    moveArm("left",85,106,25,18)
    moveArm("right",87,107,32,18)
    moveHand("left",110,62,56,88,81,145)
    moveHand("right",78,88,101,95,81,27)
    moveTorso(90,90,90)
    speakBlocking("in their spare time")
    #speakBlocking("qui est un sculpteur, designer francais")
    sleep(0.5)
    moveHead(80,86)
    moveArm("left",5,96,25,10)
    moveArm("right",5,94,26,10)
    moveHand("left",110,62,56,88,81,18)
    moveHand("right",78,88,101,95,81,137)
    moveTorso(90,90,90)
    sleep(1)
    moveHead(75,97)
    moveArm("left",6,91,22,14)
    moveArm("right",87,107,32,18)
    moveHand("left",110,62,56,88,81,0)
    moveHand("right",78,88,101,95,81,27)
    moveTorso(90,90,90)
    speakBlocking("my software is being developed on Robot Operating System")
    #speakBlocking("mon logiciel est developpe par myrobotlab poorg")
    sleep(1)
    moveHead(20,69)
    moveArm("left",6,91,22,14)
    moveArm("right",87,107,32,21)
    moveHand("left",110,62,56,88,81,0)
    moveHand("right",78,88,101,95,81,27)
    moveTorso(90,90,90)
    speakBlocking("I am made of 100% 3 D printed parts")
    moveHead(75,97)
    moveArm("left",85,106,25,18)
    moveArm("right",87,107,32,18)
    moveHand("left",110,62,56,88,81,145)
    moveHand("right",78,88,101,95,81,27)
    moveTorso(90,90,90)
    sleep(1)
    moveHead(33,110)
    moveArm("left",85,104,25,18)
    moveArm("right",87,41,47,18)
    moveHand("left",110,62,56,88,81,145)
    moveHand("right",111,75,117,125,111,143)
    moveTorso(90,90,90)
    sleep(1)
    moveHead(62,102)
    moveArm("left",85,104,25,18)
    moveArm("right",87,41,47,18)
    moveHand("left",110,62,56,88,81,145)
    moveHand("right",111,75,117,125,111,143)
    moveTorso(90,90,90)
    speakBlocking("which means all my parts")
    moveHead(79,88)
    moveArm("left",85,104,25,18)
    moveArm("right",87,59,46,18)
    moveHand("left",110,62,56,88,81,145)
    moveHand("right",59,75,117,125,111,113)
    moveTorso(90,90,90)
    speakBlocking("are made on a home 3 D printer")
    sleep(1)
    moveHead(40,84)
    moveArm("left",85,72,38,18)
    moveArm("right",87,64,47,18)
    moveHand("left",124,97,66,120,130,35)
    moveHand("right",59,75,117,125,111,113)
    moveTorso(90,90,90)
    speakBlocking("each parts are designed to fit a 6 inch cubic build area")
    sleep(1)
    moveHead(97,80)
    moveArm("left",85,79,39,14)
    moveArm("right",87,76,42,12)
    moveHand("left",124,97,66,120,130,35)
    moveHand("right",59,75,117,125,111,113)
    moveTorso(90,90,90)
    sleep(0.5)
    moveHead(75,97)
    moveArm("left",85,106,25,18)
    moveArm("right",87,107,32,18)
    moveHand("left",110,62,56,88,81,145)
    moveHand("right",78,88,101,95,81,27)
    moveTorso(90,90,90)
    sleep(1)
    speakBlocking("so anyone can reproduce me")
    fullspeed()
    moveHead(80,98)
    moveArm("left",5,90,30,10)
    moveArm("right",5,90,30,10)
    moveHand("left",45,40,30,25,35,90)
    moveHand("right",55,2,50,48,30,90)
    moveTorso(90,90,90)
    sleep(1)
    speakBlocking("cool, don't you think")
    sleep(1)
    speakBlocking("thank you for listening")
    moveHead(116,80)
    moveArm("left",85,93,42,16)
    moveArm("right",87,93,37,18)
    moveHand("left",124,82,65,81,41,143)
    moveHand("right",59,53,89,61,36,21)
    moveTorso(90,90,90)
    sleep(0.2)
    relax()  
    print("ending made by")  
    


def brake():
    moveHead(80,86)
    moveArm("left",5,90,30,10)
    moveArm("right",5,90,30,10)
    moveHand("left",45,40,30,25,35,90)
    moveHand("right",55,2,50,48,30,90)
    moveTorso(90,90,90)
    sleep(3)
    moveHead(20,86)
    moveArm("left",21,92,49,22)
    moveArm("right",38,91,43,10)
    moveHand("left",45,40,30,25,35,90)
    moveHand("right",89,127,123,48,30,90)
    moveTorso(90,90,90)
    sleep(3)
    moveHead(20,106)
    moveArm("left",75,69,49,22)
    moveArm("right",38,91,43,10)
    moveHand("left",120,80,74,106,35,90)
    moveHand("right",89,127,123,48,30,90)
    moveTorso(90,90,90)
    sleep(3)
    moveHead(20,93)
    moveArm("left",75,69,49,22)
    moveArm("right",71,66,60,10)
    moveHand("left",120,80,74,106,35,90)
    moveHand("right",89,127,123,48,30,146)
    moveTorso(90,90,90)
    sleep(3)
    moveHead(110,93)
    moveArm("left",75,69,49,22)
    moveArm("right",71,66,60,10)
    moveHand("left",120,80,74,106,35,90)
    moveHand("right",89,127,123,48,30,146)
    moveTorso(90,90,90)
    sleep(3)
    speakBlocking("Should I brake that")
    moveHead(110,93)
    moveArm("left",90,69,84,22)
    moveArm("right",71,66,60,10)
    moveHand("left",138,134,168,168,120,90)
    moveHand("right",124,142,151,48,30,146)
    moveTorso(90,90,90)

def approach():
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(1.0, 0.90)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(92,80)
    moveArm("left",7,76,24,16)
    moveArm("right",7,79,24,15)
    moveHand("left",49,43,30,28,40,80)
    moveHand("right",55,7,55,48,43,108)
    moveTorso(90,90,90)
    sleep(3)
    moveHead(92,80)
    moveArm("left",5,52,57,13)
    moveArm("right",10,45,59,13)
    moveHand("left",134,138,176,175,130,0)
    moveHand("right",119,150,163,134,151,180)
    moveTorso(90,90,90)
    sleep(3)
    moveHead(92,80)
    moveArm("left",14,63,71,21)
    moveArm("right",14,55,77,21)
    moveHand("left",49,43,30,28,40,171)
    moveHand("right",55,7,55,48,43,12)
    moveTorso(90,90,90)
    sleep(3)
    moveHead(92,80)
    moveArm("left",5,52,57,13)
    moveArm("right",10,45,59,13)
    moveHand("left",134,138,176,175,130,0)
    moveHand("right",119,150,163,134,151,180)
    moveTorso(90,90,90)
    speakBlocking("please approach")
    relax()


def fingerright():
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 1.0, 0.85, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 0.90, 1.0, 1.0, 1.0)
    setHeadSpeed(1.0, 0.90)
    setTorsoSpeed(0.9, 0.5, 1.0)
    moveHead(80,86)
    moveArm("left",5,94,20,10)
    moveArm("right",7,78,92,10)
    moveHand("left",180,180,180,180,180,90)
    moveHand("right",180,2,175,160,165,180)
    moveTorso(60,70,90)

def fingerleft():
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 1.0, 0.85, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 0.90, 1.0, 1.0, 1.0)
    setHeadSpeed(1.0, 0.90)
    setTorsoSpeed(0.9, 0.5, 1.0)
    moveHead(80,86)
    moveArm("left",7,78,92,10)
    moveArm("right",5,94,20,10)
    moveHand("left",180,2,175,160,165,90)
    moveHand("right",180,180,180,180,180,90)
    moveTorso(120,110,90)


def comehere():
    fullspeed()
    relax()
##look around
    setHeadSpeed5(0.80, 0.80, 0.90, 0.90, 1.0)
    moveHead5(80,66,7,85,52)
    sleep(3)
    moveHead5(80,110,175,85,52)
    sleep(3)
##raise arm pofinger
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 1.0, 0.85, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 0.90, 1.0, 1.0, 1.0)
    setHeadSpeed(1.0, 0.90)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead5(80,86,85,85,52)
    moveArm("left",5,94,30,10)
    moveArm("right",7,74,92,10)
    moveHand("left",180,180,180,180,180,90)
    moveHand("right",180,2,175,160,165,180)
    moveTorso(90,90,90)
    sleep(4.5)
##move finger
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(1.0, 1.0)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(80,86)
    moveArm("left",5,94,30,10)
    moveArm("right",48,74,92,10)
    moveHand("left",180,180,180,180,180,90)
    moveHand("right",180,2,175,160,165,20)
    moveTorso(90,90,90)
    sleep(2)
    setHeadSpeed(0.80, 0.80)
    moveHead(80,80)
    moveHand("right",180,164,175,160,165,20)
    sleep(1)
    moveHead(80,80)
    moveHand("right",180,2,175,160,165,20)
    sleep(1)
    moveHead(118,80)
    moveHand("right",180,164,175,160,165,20)
    sleep(1)
    speak("come closer")
    moveHead(60,80)
    moveHand("right",180,2,175,160,165,20)
    sleep(1)
    moveHead(118,80)
    moveHand("right",180,164,175,160,165,20)
    sleep(1)
    moveHead(60,80)
    moveArm("right",90,65,10,25)
    sleep(3)
    fullspeed()
    rest()
    sleep(0.3)
    relax()
    sleep(3)
    fullspeed()
        

def guesswhat():
    speak("I'm not really a human man")
    speak("but I use Old spice body wash and deodorant together")
    speak("and now I'm really cool")

    

def ready():
    speak("ready")
    speak("go")
    moveHead(90,90)
    moveArm("left",65,90,75,10)
    moveArm("right",20,80,25,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    
    

def rock():
    fullspeed()
    moveHead(90,90)
    moveArm("left",70,90,80,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.5)
    setHeadSpeed(.8,.8)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    
    sleep(.5)
    moveArm("left",80,90,85,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.5)
    setHeadSpeed(.8,.8)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    
    sleep(.5)
    moveArm("left",90,90,90,10)
    moveArm("right",20,85,10,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.5)
    setHeadSpeed(.8,.8)
    moveHead(60,107)
    moveArm("left",45,90,75,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,80)
    moveHand("right",50,90,90,90,100,90)
    sleep(.3)
    x = (random.randint(1, 2))
    if x == 1:
        speakBlocking("i have rock what do you have")
    if x == 2:
        speakBlocking("what do you have")

def starwars():
    print("starting star wars")
    fullspeed()
    moveHead5(130,149,87,80,100)
    filelocation = os.path.join(dirname(dirname(abspath(__file__))),'Inmoov_Demos/sounds/r2d2.mp3')
    playFile(filelocation)
    sleep(1)
    moveHead5(155,31,87,80,100)
    sleep(1)
    moveHead5(130,31,87,80,100)
    sleep(1)
    moveHead5(90,90,87,80,100)
    sleep(0.5)
    moveHead5(90,90,87,80,70)
    sleep(1)
    relax()
    print("ending star wars")

def paper():
    fullspeed()
    moveHead(90,90)
    moveArm("left",70,90,80,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.5)
    setHeadSpeed(.8,.8)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    
    sleep(.5)
    moveArm("left",80,90,85,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.5)
    setHeadSpeed(.8,.8)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    
    sleep(.5)
    moveArm("left",90,90,90,10)
    moveArm("right",20,85,10,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.5)
    setHeadSpeed(.8,.8)
    moveHead(90,90)
    moveArm("left",49,90,75,10)
    moveArm("right",20,80,20,20)
    moveHand("left",0,0,0,0,0,165)
    moveHand("right",50,90,90,90,100,90)
    sleep(.3)
    x = (random.randint(1, 2))
    if x == 1:
        speakBlocking("i have paper what do you have")
    if x == 2:
        speakBlocking("what do you have")

def scissors():
    fullspeed()
    moveHead(90,90)
    moveArm("left",70,90,80,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.5)
    setHeadSpeed(.8,.8)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    
    sleep(.5)
    moveArm("left",80,90,85,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.5)
    setHeadSpeed(.8,.8)
    moveHead(60,107)
    moveArm("left",49,90,75,10)
    moveArm("right",20,80,20,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    
    sleep(.5)
    moveArm("left",90,90,90,10)
    moveArm("right",20,85,10,20)
    moveHand("left",130,180,180,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.5)
    moveHead(90,90)
    moveArm("left",49,90,75,10)
    moveArm("right",20,80,20,20)
    moveHand("left",50,0,0,180,180,90)
    moveHand("right",50,90,90,90,100,90)
    sleep(.3)
    x = (random.randint(1, 2))
    if x == 1:
        speakBlocking("i have scissors what do you have")
    if x == 2:
        speakBlocking("what do you have")

def lookaroundyou(data): 
    setHeadSpeed5(0.8, 0.8, 0.6, 0.6, 1.0)
    for y in range(0, 3):
        if (data == "can i have your attention"):
            speak("ok you have my attention")
            stopit()
            x = (random.randint(1, 6))
            if x == 1:
                head.neck.moveTo(90)
                eyeslooking(data)
            if x == 2:
                head.rothead.moveTo(80)
                eyeslooking(data)
            if x == 3:
                headdown()
                eyeslooking(data)
            if x == 4:
                headupp()
                eyeslooking(data)
            if x == 5:
                headright()
                eyeslooking(data)
            if x == 6:
                headleft()
                eyeslooking(data)
            sleep(1)
        x = (random.randint(1, 4))
        if x == 1:
            speak("looking nice")
        if x == 2:
            speak("i like it here")
        if x == 3:
            speak("time just flies away")
        if x == 4:
            speak("ok let's do something")
            sleep(2)
            x = (random.randint(1, 4))
            if x == 1:
                comehere()
            if x == 2:
                perfect()
                sleep(2)
                rest()
                sleep(1)
                relax()
            if x == 3:
                rest()
            if x == 4:
                fingerleft()
                sleep(3)
                relax()
 
def eyeslooking(data):
    for y in range(0, 5):
        if (data == "can i have your attention"):
            speak("ok you have my attention")
            stopit()
        if (data == "inmoov"):
            stopit()
        x = (random.randint(1, 6))
        if x == 1:
            head.eyeX.moveTo(80)
        if x == 2:
            head.eyeY.moveTo(80)
        if x == 3:
            eyesdown()
        if x == 4:
            eyesupp()
        if x == 5:
            eyesleft()
        if x == 6:
            eyesright()
        sleep(0.5)
    eyesfront()        

def thatwasfun():
  speak("that was fun")
  moveHead(90,90)
  moveArm("left",85,106,25,18)
  moveArm("right",87,107,32,18)
  moveHand("left",110,62,56,88,81,145)
  moveHand("right",78,88,101,95,81,27)
  moveTorso(90,90,90)
  relax()

     
def startkinect():
    leftArm.shoulder.map(0,180,-25,105)
    rightArm.shoulder.map(0,180,-30,100)
    copyGesture(True)


def offkinect():
    leftArm.shoulder.map(0,180,0,180)
    rightArm.shoulder.map(0,180,0,180)
    copyGesture(False)
    rest()

     
def trackHumans():
     headTracking.faceDetect()
     eyesTracking.faceDetect()
     fullspeed()

def trackPoint():
     headTracking.startLKTracking()
     eyesTracking.startLKTracking()
     fullspeed()

def stopTracking():
     headTracking.stopTracking()
     eyesTracking.stopTracking()

def takethis():
  fullspeed()
  moveHead(14,90)
  moveArm("left",13,45,95,10)
  moveArm("right",5,90,30,10)
  moveHand("left",2,2,2,2,2,60)
  moveHand("right",81,66,82,60,105,113)
  moveTorso(85,76,90)
  sleep(3)
  closelefthand()
  moveTorso(110,90,90)
  sleep(2)
  isitaball()
  speak("what is it")

def fistHips():
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(1.0, 1.0, 1.0)
  moveHead(138,80)
  moveArm("left",79,42,23,41)
  moveArm("right",71,40,14,39)
  moveHand("left",180,180,180,180,180,47)
  moveHand("right",99,130,152,154,145,180)
  moveTorso(90,90,90)

def unhappy():
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(1.0, 1.0, 1.0)
  moveHead(85,40)
  moveArm("left",79,42,23,41)
  moveArm("right",71,40,14,39)
  moveHand("left",180,180,180,180,180,47)
  moveHand("right",99,130,152,154,145,180)
  moveTorso(90,90,90)

def rest():
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(1.0, 1.0, 1.0)
  moveHead5(80,86,82,78,76)
  moveArm("left",5,90,30,10)
  moveArm("right",5,90,30,12)
  moveHand("left",2,2,2,2,2,90)
  moveHand("right",2,2,2,2,2,90)
  moveTorso(110,90,90)
  
def fullspeed():
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(1.0, 1.0, 1.0)
 
def delicategrab():
  setHandSpeed("left", 0.70, 0.60, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(1.0, 1.0)
  moveHead(21,98)
  moveArm("left",30,72,77,10)
  moveArm("right",0,91,28,17)
  moveHand("left",180,130,4,0,0,180)
  moveHand("right",86,51,133,162,153,180)
 
def perfect():
  setHandSpeed("left", 0.80, 0.80, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 0.95, 0.95, 0.95, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(0.65, 0.75)
  moveHead(88,79)
  moveArm("left",89,75,93,11)
  moveArm("right",0,91,28,17)
  moveHand("left",130,160,83,40,0,34)
  moveHand("right",86,51,133,162,153,180)
  sleep(1)
  speak("it is perfect")

def fisthips():
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(0.65, 0.75)
  moveHead(138,80)
  moveArm("left",79,45,23,41)
  moveArm("right",71,40,14,39)
  moveHand("left",180,180,180,180,180,47)
  moveHand("right",99,130,152,154,145,180)
  moveTorso(90,90,90)
 
def releasedelicate():
  setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 0.75, 0.75, 0.75, 0.95)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(0.65, 0.75)
  moveHead(20,98)
  moveArm("left",30,72,64,10)
  moveArm("right",0,91,28,17)
  moveHand("left",101,74,66,58,44,180)
  moveHand("right",86,51,133,162,153,180)
  setHeadSpeed(1.0,1.0,1.0,1.0,1.0)
 
def grabthebottle():
  setHandSpeed("left", 1.0, 0.80, 0.80, 0.80, 1.0, 0.80)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(0.90, 0.80)
  setTorsoSpeed(1.0,0.80,1.0)
  moveHead(20,107)
  moveArm("left",77,85,45,20)
  moveArm("right",5,90,30,10)
  moveHand("left",180,138,140,164,180,60)
  moveHand("right",0,0,0,0,0,90)
  moveTorso(90,84,90)
 
def grabtheglass():
  setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 0.60, 0.60, 1.0, 1.0, 0.80)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(0.65, 0.65)
  setTorsoSpeed(1.0,0.85,1.0)
  moveHead(20,68)
  moveArm("left",77,85,45,15)
  moveArm("right",48,91,72,20)
  moveHand("left",180,138,140,164,180,50)
  moveHand("right",140,112,127,105,143,140)
  moveTorso(105,105,90)
 
def poorbottle():
  setHandSpeed("left", 0.60, 0.60, 0.60, 0.60, 0.60, 0.60)
  setHandSpeed("right", 0.60, 0.80, 0.60, 0.60, 0.60, 0.60)
  setArmSpeed("left", 0.60, 0.60, 0.65, 0.60)
  setArmSpeed("right", 0.60, 0.60, 0.60, 0.60)
  setHeadSpeed(0.65, 0.65)
  moveHead(0,92)
  setTorsoSpeed(1.0,1.0,1.0)
  moveArm("left",55,40,94,55)
  moveArm("right",80,62,38,10)
  moveHand("left",180,140,150,164,180,0)
  moveHand("right",145,112,127,105,143,150)
  moveTorso(90,90,90)

def givethebottle():  
  setHandSpeed("left", 0.60, 0.60, 0.60, 0.60, 0.60, 0.75)
  setHandSpeed("right", 0.60, 0.80, 0.60, 0.60, 0.60, 0.60)
  setArmSpeed("left", 0.80, 0.80, 0.85, 0.80)
  setArmSpeed("right", 0.60, 0.60, 0.60, 0.60)
  setHeadSpeed(0.65, 0.65)
  moveHead(0,92)
  moveHead5(20,107,82,78,65)
  moveArm("left",77,85,45,20)
  moveArm("right",80,62,38,10)
  moveHand("left",80,90,90,90,180,80)
  moveHand("right",145,112,127,105,143,150)
  moveTorso(90,82,90)
 
def givetheglass():
  sleep(2)
  setHandSpeed("left", 0.60, 0.60, 0.60, 0.60, 0.60, 0.60)
  setHandSpeed("right", 0.60, 0.80, 0.60, 0.60, 0.60, 0.60)
  setArmSpeed("left", 0.60, 1.0, 0.60, 0.60)
  setArmSpeed("right", 0.60, 0.60, 0.60, 0.60)
  setHeadSpeed(0.65, 0.65)
  moveHead(84,79)
  moveArm("left",77,75,45,17)
  moveArm("right",21,80,77,10)
  moveHand("left",109,138,180,164,180,60)
  moveHand("right",102,86,105,105,143,133)
  speakBlocking("Hello please take the glass")
  sleep(1)
 
def takeball():
  rest()
  setHandSpeed("right", 0.85, 0.75, 0.75, 0.75, 0.85, 0.75)
  setArmSpeed("right", 0.85, 0.85, 0.85, 0.85)
  setHeadSpeed(0.9, 0.9)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(30,70)
  moveArm("left",5,84,16,15)
  moveArm("right",6,73,76,16)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",180,140,140,3,0,11)
  moveTorso(120,100,90)

def getball():
  rest()
  setHandSpeed("right", 0.85, 0.75, 0.75, 0.75, 0.85, 0.75)
  setArmSpeed("right", 1.0, 1.0, 1.0, 0.85)
  setHeadSpeed(0.9, 0.9)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(45,65)
  moveArm("left",5,90,16,15)
  moveArm("right",6,85,110,22)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",0,0,0,3,0,11)
  moveTorso(101,100,90)
  sleep(2.5)
  moveHand("right",180,140,140,3,0,11)
 
def keepball():
  setHandSpeed("left", 0.65, 0.65, 0.65, 0.65, 0.65, 1.0)
  setHandSpeed("right", 0.65, 0.65, 0.65, 0.65, 0.65, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.95, 0.85)
  setHeadSpeed(0.9, 0.9)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(20,70)
  moveArm("left",5,84,16,15)
  moveArm("right",54,77,55,16)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",180,140,140,3,0,11)
  moveTorso(90,90,90)
 

def approachlefthand():
  setHandSpeed("right", 0.75, 0.75, 0.75, 0.75, 0.75, 0.65)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.25, 0.25, 0.25, 0.25)
  setHeadSpeed(0.65, 0.65)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(20,84)
  moveArm("left",67,52,62,23)
  moveArm("right",55,61,45,16)
  moveHand("left",130,0,40,10,10,0)
  moveHand("right",180,145,145,3,0,11)
  moveTorso(90,85,90)
  sleep(4)

def uselefthand():
  setHandSpeed("right", 0.75, 0.75, 0.75, 0.75, 0.75, 0.65)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.25, 0.25, 0.25, 0.25)
  setHeadSpeed(0.65, 0.65)
  moveHead(10,80)
  moveArm("left",64,52,59,23)
  moveArm("right",75,61,50,16)
  moveHand("left",130,0,40,10,10,0)
  moveHand("right",180,140,145,3,0,11)
  sleep(4)

def more():
  setHandSpeed("right", 0.75, 0.75, 0.75, 0.75, 0.75, 0.65)
  setArmSpeed("left", 0.85, 0.80, 0.85, 0.95)
  setArmSpeed("right", 0.75, 0.65, 0.65, 0.65)
  setHeadSpeed(0.65, 0.65)
  moveHead(13,80)
  moveArm("left",64,52,59,23)
  moveArm("right",75,60,50,16)
  moveHand("left",140,148,140,10,10,0)
  moveHand("right",80,114,114,3,0,11)
  sleep(3)

def handdown():
  setHandSpeed("left", 0.75, 0.75, 0.75, 0.75, 0.75, 0.75)
  setHandSpeed("right", 0.70, 0.70, 0.70, 0.70, 0.70, 1.0)
  setArmSpeed("right", 0.85, 0.65, 0.65, 0.65)
  moveHead(18,75)
  moveArm("left",66,52,59,23)
  moveArm("right",59,60,50,16)
  moveHand("left",140,148,140,10,10,0)
  moveHand("right",54,95,66,0,0,11)
  sleep(2)

def isitaball():
  setHandSpeed("left", 1.0, 1.0, 1.0, 0.8, 0.8, 0.90)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 0.95, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.90, 0.85)
  setHeadSpeed(0.65, 0.75)
  moveHead(70,82)
  fullspeed()
  moveArm("left",70,59,95,15)
  moveArm("right",12,74,33,15)
  moveHand("left",170,150,180,180,180,164)
  moveHand("right",105,81,78,57,62,105)

 
def putitdown():
  setHandSpeed("left", 0.90, 0.90, 0.90, 0.90, 0.90, 0.90)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.95, 0.85)
  setHeadSpeed(0.75, 0.75)
  moveHead(20,99)
  moveArm("left",5,45,87,31)
  moveArm("right",5,82,33,15)
  moveHand("left",147,130,135,34,34,35)
  moveHand("right",20,40,40,30,30,72)
 
def dropit():
  setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 1.0, 0.85)
  setHeadSpeed(0.75, 0.75)
  moveHead(20,99)
  moveArm("left",5,45,87,31)
  moveArm("right",5,82,33,15)
  sleep(3)
  moveHand("left",60,61,67,34,34,35)
  moveHand("right",20,40,40,30,30,72)
 
 
def removeleftarm():
  setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.95, 0.65, 0.75, 0.75)
  setHeadSpeed(0.75, 0.75)
  moveHead(20,100)
  moveArm("left",71,94,41,31)
  moveArm("right",5,82,28,15)
  moveHand("left",60,43,45,34,34,35)
  moveHand("right",20,40,40,30,30,72)
  

def relax():
  setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
  setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
  setArmSpeed("right", 0.75, 0.85, 0.65, 0.85)
  setArmSpeed("left", 0.95, 0.65, 0.75, 0.75)
  setHeadSpeed(0.85, 0.85)
  setTorsoSpeed(0.75, 0.55, 1.0)
  jointsPerPort = rospy.get_param('inmoov/joints')
  #get keys
  for key, value in jointsPerPort.iteritems():
      sendJointCommand(key,value.get("rest"))
  

def armsUp():
    setHeadSpeed(1.0,1.0)
    moveHead(180,86)
    sleep(1)
    setHandSpeed("left",0.90,0.90,0.90,0.90,0.90,1.0)
    setHandSpeed("right",0.90,0.90,0.90,0.90,0.90,1.0)
    moveHand("left",170,170,170,170,170,33)
    moveHand("right",170,170,170,170,170,180)
    sleep(3)
    setArmSpeed("left",1.0,1.0,1.0,1.0)
    setArmSpeed("right",1.0,1.0,1.0,1.0)
    setTorsoSpeed(1.0,1.0,1.0)
    moveArm("left",90,90,170,20)
    moveArm("right",90,90,173,20)
    sleep(9)
    setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0)
    setHandSpeed("right",1.0,1.0,1.0,1.0,1.0,1.0)
    moveHead(180,86)
    moveArm("left",5,90,170,10)
    moveArm("right",5,90,173,10)
    moveHand("left",2,2,2,2,2,33)
    moveHand("right",2,2,2,2,2,180)
    moveTorso(90,90,90)
 
def handopen():
  moveHand("left",0,0,0,0,0)
  moveHand("right",0,0,0,0,0)

def handclose():
  moveHand("left",180,180,180,180,180)
  moveHand("right",180,180,180,180,180)
 
def openlefthand():
  moveHand("left",0,0,0,0,0)
 
 
def openrighthand():
  moveHand("right",0,0,0,0,0)

def closelefthand():
  moveHand("left",180,180,180,180,180)
 
 
def closerighthand():
  moveHand("right",180,180,180,180,180)
 
 
def surrender():
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.95, 0.85)
  setHeadSpeed(0.65, 0.65)
  moveHead(90,90)
  moveArm("left",90,139,15,79)
  moveArm("right",90,145,37,79)
  moveHand("left",50,28,30,10,10,76)
  moveHand("right",10,10,10,10,10,139)
 
def pictureleftside():
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 0.75, 0.85, 0.95, 0.85)
  setHeadSpeed(0.65, 0.65)
  moveHead(109,90)
  moveArm("left",90,105,24,75)
  moveArm("right",5,82,28,15)
  moveHand("left",50,86,97,74,106,119)
  moveHand("right",81,65,82,60,105,113)
 
def picturerightside():
  setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.85, 0.85, 0.85, 0.85)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(0.65, 0.65)
  moveHead(109,90)
  moveArm("left",5,94,28,15)
  moveArm("right",90,115,23,68)
  moveHand("left",42,58,87,55,71,35)
  moveHand("right",10,112,95,91,125,45)
 
def picturebothside():
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(0.65, 0.65)
  moveHead(109,90)
  moveJaw(50)
  moveArm("left",90,105,24,75)
  moveArm("right",90,115,23,68)
  moveHand("left",50,86,97,74,106,119)
  moveHand("right",10,112,95,91,125,45)

def lookrightside():
  setHeadSpeed(0.70, 0.70)
  moveHead(85,40)

def lookleftside():
  setHeadSpeed(0.70, 0.70)
  moveHead(85,140)

def lookinmiddle():
  setHeadSpeed(0.70, 0.70)
  moveHead(85,86)

def eyesfront():
    head.eyeX.moveTo(85)
    head.eyeY.moveTo(85)
    
def eyesdown():
    head.eyeY.moveTo(180)
    
def eyesupp():
    head.eyeY.moveTo(0)
 
def eyesright():
    head.eyeX.moveTo(0)
 
def eyesleft():
    head.eyeX.moveTo(180)
    
def headfront():
    head.neck.moveTo(90)
    head.rothead.moveTo(90)
 
def headdown():
    head.neck.moveTo(0)
 
def headupp():
    head.neck.moveTo(180) 

def headright():
    head.rothead.moveTo(0)
 
def headleft():
    head.rothead.moveTo(180)    

def Torso():
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveTorso(60,90,90)
    sleep(2)
    moveTorso(120,90,90)
    sleep(2)
    moveTorso(90,90,90)
    sleep(2)     

def muscle():
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.95, 0.85)
  setHeadSpeed(0.65, 0.65)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(90,129)
  moveArm("left",90,139,48,75)
  moveArm("right",71,40,14,43)
  moveHand("left",180,180,180,180,180,148)
  moveHand("right",99,130,152,154,145,180)
  moveTorso(120,100,90)
  sleep(4)
  speakBlocking("Looks good, doesn't it")
  sleep(2)
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(0.85, 0.85)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(90,45)
  moveArm("left",44,46,20,39)
  moveArm("right",90,145,58,74)
  moveHand("left",180,180,180,180,180,83)
  moveHand("right",99,130,152,154,145,21)
  moveTorso(60,75,90)
  sleep(3)
  speakBlocking("not bad either, don't you think")
  sleep(4)
  relax()
  sleep(1)

def shakehand(data):
  ##rest
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(1.0, 1.0, 1.0)
  moveHead(80,86)
  moveArm("left",5,90,30,10)
  moveArm("right",5,90,30,10)
  moveHand("left",2,2,2,2,2,90)
  moveHand("right",2,2,2,2,2,90)
  moveTorso(110,90,90)
  sleep(1)
  ##move arm and hand
  setHandSpeed("left", 0.65, 0.65, 0.65, 0.65, 0.65, 1.0)
  setHandSpeed("right", 0.65, 0.65, 0.65, 0.65, 0.65, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.95, 0.85)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(39,70)
  moveArm("left",5,84,16,15)
  moveArm("right",6,73,65,16)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",50,50,40,20,20,90)
  moveTorso(120,100,90)
  sleep(1)
  ##close the hand
  setHandSpeed("left", 0.65, 0.65, 0.65, 0.65, 0.65, 1.0)
  setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.75, 0.85)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(39,70)
  moveArm("left",5,84,16,15)
  moveArm("right",6,73,62,16)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",180,126,120,145,168,77)
  moveTorso(101,100,90)
  sleep(3)
  ##shake hand up
  setHandSpeed("left", 0.65, 0.65, 0.65, 0.65, 0.65, 1.0)
  setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.95, 0.85)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(90,90)
  moveArm("left",5,84,16,15)
  moveArm("right",6,73,70,16)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",180,126,120,145,168,77)
  moveTorso(101,100,90)
  sleep(1)
  ##shake hand down
  if (data == "shake hand"):
       x = (random.randint(1, 4))
       if x == 1:
            speak("please to meet you")
       if x == 2:
            speak("carefull my hand is made out of plastic")
       if x == 3:
            speak("I am happy to shake a human hand")
       if x == 4:
            speak("it is a pleasure to meet you")
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.75, 0.75, 0.95, 0.85)
  setHeadSpeed(0.85, 0.85)
  setTorsoSpeed(1.0, 1.0, 1.0)
  moveHead(80,53)
  sleep(2)
  moveHead(39,70)
  sleep(2)
  moveHead(80,53)
  moveArm("left",5,84,16,15)
  moveArm("right",6,73,60,16)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",180,126,120,145,168,77)
  moveTorso(101,100,90)
  sleep(1)
  ##shake hand up
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.75, 0.75, 0.95, 0.85)
  setHeadSpeed(0.85, 0.85)
  setTorsoSpeed(1.0, 1.0, 1.0)
  moveHead(80,53)
  moveArm("left",5,84,16,15)
  moveArm("right",6,73,75,16)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",180,126,120,145,168,77)
  moveTorso(101,100,90)
  sleep(1)
  ##shake hand down
  setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.75, 0.75, 0.95, 0.85)
  setHeadSpeed(0.85, 0.85)
  setTorsoSpeed(1.0, 1.0, 1.0)
  moveHead(82,88)
  moveArm("left",5,84,16,15)
  moveArm("right",6,73,62,16)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",180,126,120,145,168,77)
  moveTorso(101,100,90)
  sleep(2)
  ## release hand  
  setHandSpeed("left", 0.65, 0.65, 0.65, 0.65, 0.65, 1.0)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.95, 0.95, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.95, 0.85)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(39,70)
  moveArm("left",5,84,16,15)
  moveArm("right",6,73,62,16)
  moveHand("left",50,50,40,20,20,77)
  moveHand("right",20,50,40,20,20,90)
  moveTorso(101,100,90)
  sleep(1)
  ##relax
  setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 0.85)
  setArmSpeed("right", 0.85, 0.85, 0.85, 0.85)
  setArmSpeed("left", 0.95, 0.65, 0.75, 0.75)
  setHeadSpeed(1.0, 1.0)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(79,85)
  moveArm("left",5,84,28,15)
  moveArm("right",5,90,30,10)
  moveHand("left",92,33,37,71,66,25)
  moveHand("right",10,50,40,20,20,113)
  moveTorso(110,90,90)  

  
def power_down():
        relax()
        powerDown()
        ##sleep(2)       
        ##ear.pauseListening()
        ##relax()
        ##speakBlocking()
        ##sleep(2)
        ##moveHead(40, 85);
        ##sleep(4)
        ##rightSerialPort.digitalWrite(53, Arduino.LOW)
        ##leftSerialPort.digitalWrite(53, Arduino.LOW)
        ear.lockOutAllGrammarExcept("power up")
        sleep(2)
        ear.resumeListening()
 
def power_up():
        ##sleep(2)        
        ##ear.pauseListening()
        ##rightSerialPort.digitalWrite(53, Arduino.HIGH)
        ##leftSerialPort.digitalWrite(53, Arduino.HIGH)
        speakBlocking("I was sleeping")
        lookrightside()
        sleep(2)
        lookleftside()
        sleep(4)
        relax()
        ear.clearLock()
        sleep(2)
        ear.resumeListening()
 
def hello():
     setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
     setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
     setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
     setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
     setHeadSpeed(0.65, 0.75)
     moveHead(105,78)
     moveArm("left",78,48,37,11)
     moveArm("right",90,144,60,75)
     moveHand("left",112,111,105,102,81,10)
     moveHand("right",0,0,0,50,82,180)
     ear.pauseListening()
     sleep(1)
 
     for w in range(0,3):
          setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
          setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 0.60)
          setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
          setArmSpeed("right", 0.60, 1.0, 1.0, 1.0)
          setHeadSpeed(0.65, 0.75)
          moveHead(83,98)
          moveArm("left",78,48,37,11)
          moveArm("right",90,157,47,75)
          moveHand("left",112,111,105,102,81,10)
          moveHand("right",3,0,62,41,117,94)
          
 
          if w==1:
                     setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
                     setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 0.60)
                     setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
                     setArmSpeed("right", 0.65, 1.0, 1.0, 1.0)
                     setHeadSpeed(0.65, 0.75)
                     moveHead(83,70)
                     speakBlocking("hello, my name is inmov")
                     moveArm("left",78,48,37,11)
                     moveArm("right",57,145,50,68)
                     moveHand("left",100,90,85,80,71,15)
                     moveHand("right",3,0,31,12,26,45)
                     sleep(1)
                     moveHead(83,98)
                     moveArm("left",78,48,37,11)
                     moveArm("right",90,157,47,75)
                     moveHand("left",112,111,105,102,81,10)
                     moveHand("right",3,0,62,41,117,94)
                     sleep(1)
                     setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
                     setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
                     setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
                     setArmSpeed("left", 0.95, 0.65, 0.75, 0.75)
                     setHeadSpeed(0.75, 0.75)
                     moveHead(79,100)
                     moveArm("left",5,94,28,15)
                     moveArm("right",5,82,28,15)
                     moveHand("left",42,58,42,55,71,35)
                     moveHand("right",81,50,82,60,105,113)
                     ear.resumeListening()

def italianhello():
     setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
     setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
     setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
     setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
     setHeadSpeed(0.65, 0.75)
     moveHead(105,78)
     moveArm("left",78,48,37,11)
     moveArm("right",90,144,60,75)
     moveHand("left",112,111,105,102,81,10)
     moveHand("right",0,0,0,50,82,180)
     ear.pauseListening()
     sleep(1)
 
     for w in range(0,3):
          setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
          setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 0.60)
          setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
          setArmSpeed("right", 0.60, 1.0, 1.0, 1.0)
          setHeadSpeed(0.65, 0.75)
          moveHead(83,98)
          moveArm("left",78,48,37,11)
          moveArm("right",90,157,47,75)
          moveHand("left",112,111,105,102,81,10)
          moveHand("right",3,0,62,41,117,94)
          
 
          if w==1:
                     setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
                     setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 0.60)
                     setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
                     setArmSpeed("right", 0.65, 1.0, 1.0, 1.0)
                     setHeadSpeed(0.65, 0.75)
                     moveHead(83,70)
                     speakBlocking("ciao , il mio nome e inmoov one")
                     moveArm("left",78,48,37,11)
                     moveArm("right",57,145,50,68)
                     moveHand("left",100,90,85,80,71,15)
                     moveHand("right",3,0,31,12,26,45)
                     sleep(1)
                     moveHead(83,98)
                     moveArm("left",78,48,37,11)
                     moveArm("right",90,157,47,75)
                     moveHand("left",112,111,105,102,81,10)
                     moveHand("right",3,0,62,41,117,94)
                     sleep(1)
                     setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
                     setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
                     setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
                     setArmSpeed("left", 0.95, 0.65, 0.75, 0.75)
                     setHeadSpeed(0.75, 0.75)
                     moveHead(79,100)
                     moveArm("left",5,94,28,15)
                     moveArm("right",5,82,28,15)
                     moveHand("left",42,58,42,55,71,35)
                     moveHand("right",81,50,82,60,105,113)
                     ear.resumeListening()

def finnishhello():
     setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
     setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
     setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
     setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
     setHeadSpeed(0.65, 0.75)
     moveHead(105,78)
     moveArm("left",78,48,37,11)
     moveArm("right",90,144,60,75)
     moveHand("left",112,111,105,102,81,10)
     moveHand("right",0,0,0,50,82,180)
     ear.pauseListening()
     sleep(1)
 
     for w in range(0,3):
          setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
          setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 0.60)
          setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
          setArmSpeed("right", 0.60, 1.0, 1.0, 1.0)
          setHeadSpeed(0.65, 0.75)
          moveHead(83,98)
          moveArm("left",78,48,37,11)
          moveArm("right",90,157,47,75)
          moveHand("left",112,111,105,102,81,10)
          moveHand("right",3,0,62,41,117,94)
          
 
          if w==1:
                     setHandSpeed("left", 0.60, 0.60, 1.0, 1.0, 1.0, 1.0)
                     setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 0.60)
                     setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
                     setArmSpeed("right", 0.65, 1.0, 1.0, 1.0)
                     setHeadSpeed(0.65, 0.75)
                     moveHead(83,70)
                     speakBlocking("hei, nimeni on inmoov")
                     moveArm("left",78,48,37,11)
                     moveArm("right",57,145,50,68)
                     moveHand("left",100,90,85,80,71,15)
                     moveHand("right",3,0,31,12,26,45)
                     sleep(1)
                     moveHead(83,98)
                     moveArm("left",78,48,37,11)
                     moveArm("right",90,157,47,75)
                     moveHand("left",112,111,105,102,81,10)
                     moveHand("right",3,0,62,41,117,94)
                     sleep(1)
                     setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
                     setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
                     setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
                     setArmSpeed("left", 0.95, 0.65, 0.75, 0.75)
                     setHeadSpeed(0.75, 0.75)
                     moveHead(79,100)
                     moveArm("left",5,94,28,15)
                     moveArm("right",5,82,28,15)
                     moveHand("left",42,58,42,55,71,35)
                     moveHand("right",81,50,82,60,105,113)
                     ear.resumeListening()
                     
def photo():    
        moveHead(87,60)
        moveArm("left",78,48,37,11)
        moveArm("right",46,147,5,75)
        moveHand("left",138,52,159,106,120,90)
        moveHand("right",80,65,94,63,70,140)
 
def beforehappy():
        setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("right", 0.85, 0.85, 0.85, 1.0)
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
        setHeadSpeed(0.65, 0.65)
        moveHead(84,88)
        moveArm("left",5,82,36,11)
        moveArm("right",74,112,61,29)
        moveHand("left",0,88,135,94,96,90)
        moveHand("right",81,79,118,47,0,90)
 
def happy():
     for w in range(0,3):
         sleep(1)
         setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
         setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
         setArmSpeed("right", 0.85, 0.85, 0.85, 1.0)
         setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
         setHeadSpeed(0.65, 0.65)
         moveHead(84,88)
         moveArm("left",5,82,36,10)
         moveArm("right",74,112,61,29)
         moveHand("left",0,88,135,94,96,90)
         moveHand("right",81,79,118,47,0,90)
         sleep(1)
         if w==1:
                     speakBlocking("happy birthday grog")
                     setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
                     setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
                     setArmSpeed("right", 0.85, 0.85, 0.85, 1.0)
                     setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
                     setHeadSpeed(0.65, 0.65)
                     moveHead(42,76)
                     moveArm("left",5,90,30,10)
                     moveArm("right",74,70,61,10)
                     moveHand("left",0,0,0,0,0,90)
                     moveHand("right",81,79,118,47,0,90)
                     sleep(5)
                     ear.resumeListening()
 
def about():
        sleep(2)        
        ear.pauseListening()
        sleep(2)
        setArmSpeed("right", 0.1, 0.1, 0.2, 0.2);
        setArmSpeed("left", 0.1, 0.1, 0.2, 0.2);
        setHeadSpeed(0.2,0.2)
        moveArm("right", 64, 94, 10, 10);
 
 
        speakBlocking("I am the first life size humanoid robot you can 3D prand animate")
        moveHead(65,66)
        moveArm("left", 64, 104, 10, 11);
        moveArm("right", 44, 84, 10, 11);
        speakBlocking("my designer creator is Gael Langevin a French sculptor, model maker")
        moveHead(75,86)
        moveArm("left", 54, 104, 10, 11);
        moveArm("right", 64, 84, 10, 20);
        speakBlocking("who has released my files  to the opensource 3D world.")
        moveHead(65,96)
        moveArm("left", 44, 94, 10, 20);
        moveArm("right", 54, 94, 20, 11);
        speakBlocking("this is where my builder downloaded my files.")
 
        moveHead(75,76)
        moveArm("left", 64, 94, 20, 11);
        moveArm("right", 34, 94, 10, 11);
        speakBlocking("after five hundred hours of printing, four kilos of plastic, twenty five hobby servos, blood and sweat.I was brought to life") # should be " i was borght to life."
        moveHead(65,86)
        moveArm("left", 24, 94, 10, 11);
        moveArm("right", 24, 94, 10, 11);  
        speakBlocking("so if You have a 3D printer, some building skills, then you can build your own version of me") # mabe add in " alot of money"
        moveHead(85,86)
        moveArm("left", 5, 94, 20, 30);
        moveArm("right", 24, 124, 10, 20);
        speakBlocking("and if enough people build me, some day my kind could take over the world") # mabe add in " alot of money"
        moveHead(75,96)
        moveArm("left", 24, 104, 10, 11);
        moveArm("right", 5, 94, 20, 30);
        speakBlocking("I'm just kidding. i need some legs to get around, and i have to over come my  pyro-phobia, a fear of fire") # mabe add in " alot of money"
        moveHead(75,96)
        moveArm("left", 5, 94, 10, 11)
        moveArm("right", 4, 94, 10, 11);
        speakBlocking("so, until then. i will be humankind's humble servant")
 
        rest()
        setArmSpeed("right", 1, 1, 1, 1);
        setArmSpeed("left", 1, 1, 1, 1);
        setHeadSpeed(1,1)
        sleep(2)
        ear.resumeListening()
 
def servos():  
        print("starting servos")
        sleep(2)
        setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85)
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
        setHeadSpeed(0.65, 0.65)
        moveHead(79,100)
        moveArm("left",5,119,28,15)
        moveArm("right",5,111,28,15)
        moveHand("left",42,58,87,55,71,35)
        moveHand("right",81,20,82,60,105,113)
        speakBlocking("I currently have twenty five  hobby servos installed in my body to give me life")
        setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85)
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
        setHeadSpeed(0.65, 0.65)
        moveHead(124,90)
        moveArm("left",89,94,91,35)
        moveArm("right",20,67,31,22)
        moveHand("left",106,41,161,147,138,90)
        moveHand("right",0,0,0,54,91,90)
        speakBlocking("there's one servo  for moving my mouth up and down")
        sleep(1)
        setHandSpeed("left", 0.85, 0.85, 1.0, 0.85, 0.85, 0.85)
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85)
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
        setHeadSpeed(0.65, 0.65)
        moveHead(105,76);
        moveArm("left",89,106,103,35);
        moveArm("right",35,67,31,22);
        moveHand("left",106,0,0,147,138,7);
        moveHand("right",0,0,0,54,91,90);
        speakBlocking("two for my eyes")
        sleep(0.2)
        setHandSpeed("left", 0.85, 0.85, 1.0, 1.0, 1.0, 0.85)
        moveHand("left",106,0,0,0,0,7);
        speakBlocking("and two more for my head")
        sleep(0.5)
        setHandSpeed("left", 0.85, 0.9, 0.9, 0.9, 0.9, 0.85)
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85)
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
        setHeadSpeed(0.65, 0.65)
        moveHead(90,40);
        moveArm("left",89,106,103,35);
        moveArm("right",35,67,31,20);
        moveHand("left",106,140,140,140,140,7);
        moveHand("right",0,0,0,54,91,90);
        speakBlocking("so i can look around")
        sleep(0.5)
        setHeadSpeed(0.65, 0.65)
        moveHead(105,125);
        setArmSpeed("left", 0.9, 0.9, 0.9, 0.9)
        moveArm("left",60,100,85,30);
        speakBlocking("and see who's there")
        setHeadSpeed(0.65, 0.65)
        moveHead(40,56);
        sleep(0.5)
        setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        setArmSpeed("right", 0.5, 0.6, 0.5, 0.6);
        moveArm("left",87,41,64,11)
        moveArm("right",5,95,40,11)
        moveHand("left",98,150,160,160,160,104)
        moveHand("right",0,0,50,54,91,90);
        speakBlocking("there's three servos  in each shoulder")
        moveHead(40,67);
        sleep(2)
        setHandSpeed("left", 0.8, 0.9, 0.8, 0.8, 0.8, 0.8)
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85)
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
        setHeadSpeed(0.8, 0.8)
        moveHead(43,69)
        moveArm("left",87,41,64,11)
        moveArm("right",5,95,40,42)
        moveHand("left",42,0,100,80,113,35)
        moveHand("left",42,10,160,160,160,35)
        moveHand("right",81,20,82,60,105,113)
        speakBlocking("here is the first servo movement")
        sleep(1)
        moveHead(37,60);
        setHandSpeed("left", 1.0, 1.0, 0.9, 0.9, 1.0, 0.8)
        setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
        moveArm("right",5,95,67,42)
        moveHand("left",42,10,10,160,160,30)
        speakBlocking("this is the second one")
        sleep(1)
        moveHead(43,69);
        setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
        moveArm("right",5,134,67,42)
        moveHand("left",42,10,10,10,160,35)
        speakBlocking("now you see the third")
        sleep(1)
        setArmSpeed("right", 0.8, 0.8, 0.8, 0.8)
        moveArm("right",20,90,45,16)
        speakBlocking("they give me a more human like movement")
        sleep(1)
        setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("right", 1.0, 1.0, 1.0, 1.0);
        moveHead(43,72)
        moveArm("left",90,44,66,11)
        moveArm("right",90,100,67,26)
        moveHand("left",42,80,100,80,113,35)
        moveHand("right",81,0,82,60,105,69)
        speakBlocking("but, i have only  one servo, to move each elbow")
        setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 0.85)
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setArmSpeed("right", 0.85, 0.85, 0.85, 0.85)
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
        setHeadSpeed(0.8, 0.8)
        moveHead(45,62)
        moveArm("left",72,44,90,11)
        moveArm("right",90,95,68,15)
        moveHand("left",42,0,100,80,113,35)
        moveHand("right",81,0,82,60,105,0)
        speakBlocking("that, leaves me, with one servo per wrist")
        moveHead(40,60)
        setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        setHandSpeed("right", 0.9, 0.9, 0.9, 0.9, 0.9, 0.9)
        moveArm("left",72,44,90,9)
        moveArm("right",90,95,68,15)
        moveHand("left",42,0,100,80,113,35)
        moveHand("right", 10, 140,82,60,105,10)
        speakBlocking("and one servo for each finger.")
        sleep(0.5)
        moveHand("left",42,0,100,80,113,35)
        moveHand("right", 50, 51, 15,23, 30,140);
        speakBlocking("these servos are located in my forearms")
        setHandSpeed("left", 0.8, 0.8, 0.8, 0.8,0.8, 0.8)
        setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        moveHand6("left", 36, 52, 8,22, 20);
        moveHand6("right", 120, 147, 130,110, 125);
        removeleftarm()
        sleep(1)
        speakBlocking("they are hooked up, by the use of tendons")
        moveHand("left",10,20,30,40,60,150);
        moveHand("right",110,137,120,100,105,130);
        setHeadSpeed(1,1)
        setArmSpeed("right", 1.0,1.0, 1.0, 1.0);
        setArmSpeed("left", 1.0, 1.0, 1.0, 1.0);
        relax()
        sleep(2)
        print("ending servos")
        
 
def howmanyfingersdoihave():
     
     sleep(1)
     fullspeed()
     moveHead(49,74)
     moveArm("left",75,83,79,24)
     moveArm("right",65,82,71,24)
     moveHand("left",74,140,150,157,168,92)
     moveHand("right",89,80,98,120,114,0)
     sleep(2)
     moveHand("right",0,80,98,120,114,0)
     speakBlocking("ten")
 
     sleep(.1)
     moveHand("right",0,0,98,120,114,0)
     speakBlocking("nine")
 
     sleep(.1)
     moveHand("right",0,0,0,120,114,0)
     speakBlocking("eight")
 
     sleep(.1)
     moveHand("right",0,0,0,0,114,0)
     speakBlocking("seven")
 
     sleep(.1)
     moveHand("right",0,0,0,0,0,0)
     speakBlocking("six")
 
     sleep(.5)
     setHeadSpeed(.70,.70)
     moveHead(40,105)
     moveArm("left",75,83,79,24)
     moveArm("right",65,82,71,24)
     moveHand("left",0,0,0,0,0,180)
     moveHand("right",0,0,0,0,0,0)
     sleep(0.1)
     speakBlocking("and five makes eleven")
 
     sleep(0.7)
     setHeadSpeed(0.7,0.7)
     moveHead(40,50)
     sleep(0.5)
     setHeadSpeed(0.7,0.7)
     moveHead(49,105)
     sleep(0.7)
     setHeadSpeed(0.7,0.8)
     moveHead(40,50)
     sleep(0.7)
     setHeadSpeed(0.7,0.8)
     moveHead(49,105)
     sleep(0.7)
     setHeadSpeed(0.7,0.7)
     moveHead(90,85)
     sleep(0.7)
     speakBlocking("eleven")
     moveArm("left",70,75,70,20)
     moveArm("right",60,75,65,20)
     sleep(1)
     speakBlocking("that doesn't seem right")
     sleep(2)
     speakBlocking("I think I better try that again")
 
     moveHead(40,105)
     moveArm("left",75,83,79,24)
     moveArm("right",65,82,71,24)
     moveHand("left",140,168,168,168,158,90)
     moveHand("right",87,138,109,168,158,25)
     sleep(2)
 
     moveHand("left",10,140,168,168,158,90)
     speakBlocking("one")
     sleep(.1)
 
 
     moveHand("left",10,10,168,168,158,90)
     speakBlocking("two")
     sleep(.1)
 
     moveHand("left",10,10,10,168,158,90)
     speakBlocking("three")
     sleep(.1)
     moveHand("left",10,10,10,10,158,90)
 
     speakBlocking("four")
     sleep(.1)
     moveHand("left",10,10,10,10,10,90)
 
     speakBlocking("five")
     sleep(.1)
     setHeadSpeed(0.65,0.65)
     moveHead(53,65)
     moveArm("right",48,80,78,11)
     setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
     setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
     moveHand("left",10,10,10,10,10,90)
     moveHand("right",10,10,10,10,10,25)
     sleep(1)
     speakBlocking("and five makes ten")
     sleep(.5)
     speakBlocking("there that's better")
     moveHead(95,85)
     moveArm("left",75,83,79,24)
     moveArm("right",40,70,70,10)
     sleep(0.5)
     speakBlocking("inmoov has ten fingers")
     sleep(0.5)
     moveHead(90,90)
     setHandSpeed("left", 0.8, 0.8, 0.8, 0.8, 0.8, 0.8)
     setHandSpeed("right", 0.8, 0.8, 0.8, 0.8, 0.8, 0.8)
     moveHand("left",140,140,140,140,140,60)
     moveHand("right",140,140,140,140,140,60)
     sleep(1.0)
     setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
     setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
     moveArm("left",5,90,30,11)
     moveArm("right",5,90,30,11)
     sleep(0.5)
     relax()
     sleep(0.5)
 
     


def studyball():
##keepball():
  setHandSpeed("left", 0.65, 0.65, 0.65, 0.65, 0.65, 1.0)
  setHandSpeed("right", 0.65, 0.65, 0.65, 0.65, 0.65, 1.0)
  setArmSpeed("right", 0.75, 0.85, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.95, 0.85)
  setHeadSpeed(0.9, 0.9)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(20,70)
  moveArm("left",5,84,16,15)
  moveArm("right",54,77,55,10)
  moveHand("left",50,50,40,20,20,90)
  moveHand("right",180,145,145,3,0,11)
  moveTorso(90,90,90)
  sleep(3)
##approachlefthand():
  setHandSpeed("right", 0.75, 0.75, 0.75, 0.75, 0.75, 0.65)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.25, 0.25, 0.25, 0.25)
  setHeadSpeed(0.65, 0.65)
  setTorsoSpeed(0.75, 0.55, 1.0)
  moveHead(20,84)
  moveArm("left",67,52,62,23)
  moveArm("right",55,55,45,10)
  moveHand("left",130,0,40,10,10,0)
  moveHand("right",180,145,145,3,0,11)
  moveTorso(90,85,90)
  sleep(4)
##uselefthand():
  setHandSpeed("right", 0.75, 0.75, 0.75, 0.75, 0.75, 0.65)
  setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 0.25, 0.25, 0.25, 0.25)
  setHeadSpeed(0.65, 0.65)
  moveHead(10,80)
  moveArm("left",64,52,59,23)
  moveArm("right",75,55,50,10)
  moveHand("left",130,0,40,10,10,0)
  moveHand("right",180,140,145,3,0,11)
  sleep(4)
##more():
  setHandSpeed("right", 0.75, 0.75, 0.75, 0.75, 0.75, 0.65)
  setArmSpeed("left", 0.85, 0.80, 0.85, 0.95)
  setArmSpeed("right", 0.75, 0.65, 0.65, 0.65)
  setHeadSpeed(0.65, 0.65)
  moveHead(13,80)
  moveArm("left",64,52,59,23)
  moveArm("right",75,55,50,10)
  moveHand("left",140,148,140,10,10,0)
  moveHand("right",80,114,114,3,0,11)
  sleep(3)
##handdown():
  setHandSpeed("left", 0.75, 0.75, 0.75, 0.75, 0.75, 0.75)
  setHandSpeed("right", 0.70, 0.70, 0.70, 0.70, 0.70, 1.0)
  setArmSpeed("right", 0.85, 0.65, 0.65, 0.65)
  moveHead(18,75)
  moveArm("left",66,52,59,23)
  moveArm("right",59,55,50,10)
  moveHand("left",140,148,140,10,10,0)
  moveHand("right",54,95,66,0,0,11)
  sleep(2)
#isitaball():
  setHandSpeed("left", 1.0, 1.0, 1.0, 0.8, 0.8, 0.90)
  setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
  setArmSpeed("right", 1.0, 0.95, 0.95, 0.85)
  setArmSpeed("left", 0.75, 0.85, 0.90, 0.85)
  setHeadSpeed(0.65, 0.75)
  moveHead(70,82)
  moveArm("left",70,59,95,15)
  moveArm("right",12,74,33,15)
  moveHand("left",170,150,180,180,180,164)
  moveHand("right",105,81,78,57,62,105)
  speakBlocking("I will start tracking the object")
  sleep(2)
  speakBlocking("you need to set the point")
  fullspeed()
  headTracking.startLKTracking()
  eyesTracking.startLKTracking()
  sleep()

def welcome():
  sleep(1)
  setHandSpeed("left", 0.60, 0.60, 0.60, 0.60, 0.60, 0.60)
  setHandSpeed("right", 0.60, 0.80, 0.60, 0.60, 0.60, 0.60)
  setArmSpeed("left", 0.60, 0.60, 0.60, 0.60)
  setArmSpeed("right", 0.60, 0.60, 0.60, 0.60)
  setHeadSpeed(0.65, 0.65)
  moveHead(80,90)
  moveArm("left",26,105,30,25)
  moveArm("right",37,124,30,27)
  moveHand("left",2,2,2,2,2,90)
  moveHand("right",2,2,2,2,2,90)
  sleep(1)
  speakBlocking("Welcome to the inmoov nation")
  sleep(1)


def cyclegesture1():
    welcome()
    sleep(1)
    relax()
    servos()

def cyclegesture2():
  ##for x in range(5):
    welcome()
    sleep(1)
    relax()
    sleep(2)
    fingerright()
    sleep(1)
    isitaball()
    sleep(2)
    removeleftarm()
    sleep(2)
    handdown()
    sleep(1)
    fullspeed()
    giving()
    sleep(5)
    removeleftarm()
    sleep(4)
    takeball()
    sleep(1)
    surrender()
    sleep(6)
    isitaball()
    sleep(6)
    dropit()
    sleep(2)
    removeleftarm()
    sleep(5)
    relax()
    sleep()
    fullspeed()
    sleep(5)
    madeby()
    relax()
    sleep(5)
    detach()

def cyclegesture3():
    ##for x in range(3):
    rest()
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.9)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(50,110)
    moveArm("left",88,90,70,23)
    moveArm("right",73,90,70,27)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",2,2,2,2,2,90)
    moveTorso(90,90,90)
    sleep(2)
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.8)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(50,70)
    moveArm("left",88,90,75,28)
    moveArm("right",80,90,76,21)
    moveHand("left",180,180,180,180,180,90)
    moveHand("right",180,180,180,180,180,90)
    moveTorso(90,90,90)
    sleep(1)
    setHandSpeed("left", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0)
    setHandSpeed("right", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.8)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(40,70)
    moveArm("left",90,82,70,23)
    moveArm("right",80,82,68,27)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",2,2,2,2,2,90)
    moveTorso(90,90,90)
    sleep(2)
    moveHead(50,100)
    moveArm("left",88,90,70,28)
    moveArm("right",75,90,76,21)
    moveHand("left",180,180,180,180,180,10)
    moveHand("right",180,180,180,180,180,170)
    moveTorso(90,90,90) 
    sleep(2)
    moveHead(50,70)
    moveArm("left",88,90,75,28)
    moveArm("right",80,90,76,21)
    moveHand("left",180,180,180,180,180,170)
    moveHand("right",180,180,180,180,180,10)
    moveTorso(90,90,90)   
    sleep(3)
    setHandSpeed("left", 0.9, 0.9, 0.9, 0.9, 0.9, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.9)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(79,160)
    moveArm("left",5,84,32,80)
    moveArm("right",87,82,123,74)
    moveHand("left",0,0,0,0,0,25)
    moveHand("right",0,0,0,0,0,113)
    moveTorso(170,90,90)
    sleep(6)
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.8, 0.8)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(79,100)
    moveArm("left",18,84,55,71)
    moveArm("right",65,82,118,15)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",81,66,82,60,105,113)
    moveTorso(90,90,90)
    sleep(1)
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 0.9,  0.9,  0.9,  0.9)
    setArmSpeed("right",  0.9,  0.9,  0.9,  0.9)
    setHeadSpeed(0.8, 0.8)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(60,50)
    moveArm("left",18,84,54,69)
    moveArm("right",65,82,118,13)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",180,180,180,180,180,113)
    moveTorso(40,90,90)
    sleep(2)
    moveHead(79,100)
    moveArm("left",33,84,136,80)
    moveArm("right",34,82,160,13)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",180,180,180,180,180,113)
    moveTorso(90,90,90)
    sleep(2)
    ##arm right up
    moveHead(100,100)
    moveArm("left",33,84,136,80)
    moveArm("right",34,82,160,20)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",92,33,37,71,66,113)
    moveTorso(90,90,90)
    sleep(3)
    moveHead(110,120)
    moveArm("left",33,140,136,80)
    moveArm("right",34,82,170,30)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",92,33,37,71,66,113)
    moveTorso(90,90,90)
    sleep(2)
    moveHead(125,140)
    moveArm("left",33,90,36,60)
    moveArm("right",34,80,170,40)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",92,33,37,71,66,113)
    moveTorso(30,90,90)
    sleep(2)
    ##arm left up
    moveHead(120,130)
    moveArm("left",33,90,36,60)
    moveArm("right",34,65,160,40)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",92,33,37,71,66,113)
    moveTorso(50,90,90)
    sleep(2)
    moveHead(79,100)
    moveArm("left",18,84,54,69)
    moveArm("right",65,78,118,13)
    moveHand("left",92,33,37,71,66,30)
    moveHand("right",180,180,180,180,180,113)
    moveTorso(90,90,90)
    sleep(1)
    moveHead(79,100)
    moveArm("left",18,84,55,71)
    moveArm("right",75,80,120,45)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",81,66,82,60,105,113)
    moveTorso(90,90,90)
    sleep(1)
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 0.85)
    setHeadSpeed(0.9, 0.9)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(79,160)
    moveArm("left",24,84,32,74)
    moveArm("right",87,82,123,74)
    moveHand("left",0,0,0,0,0,25)
    moveHand("right",0,0,0,0,0,113)
    moveTorso(130,90,90)
    sleep(3)
    moveHead(60,20)
    moveArm("left",87,82,123,74)
    moveArm("right",5,84,32,80)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",81,66,82,60,105,113)
    moveTorso(30,90,90)
    sleep(6)
    setHeadSpeed(1.0,1.0)
    setArmSpeed("left",1.0,1.0,1.0,1.0)
    setArmSpeed("right",1.0,1.0,1.0,1.0)
    moveHead(80,86)
    moveArm("left",5,90,30,10)
    moveArm("right",5,90,30,10)
    moveTorso(90,90,90)
    sleep(2)
    speakBlocking("wow, I feel good, I love this")
    sleep(2)
    rest()
    sleep(1)
    relax()

def test():
    print("starting system check")
    #fullspeed()
    sleep(0.2)
    #setHeadSpeed(.75,.75)
    moveHead(90,90)
    sleep(1)
    moveHead(72,64)
 
    sleep(2)
    moveHead(165,94)
    sleep(2)
 
    moveHead(90,160)
    sleep(2)
 
    moveHead(20,95)
    sleep(2)
    moveHead(90,90)
    sleep(1.5)
    speakBlocking("Head, neck and mouth,   check")
    sleep(1)
    #setHeadSpeed(.9,.9)
    moveHead(25,61)
    moveArm("left",0,90,30,10)
    #setArmSpeed("right",.75,.75,.75,.75)
    #moveArm("right",24,62,52,45)

    print("end system check")
    

def systemcheck():
    print("starting system check")
    fullspeed()
    sleep(0.2)
    setHeadSpeed(.75,.75)
    moveHead(90,90)
    sleep(1)
    moveHead(72,64)
 
    sleep(2)
    moveHead(165,94)
    sleep(2)
 
    moveHead(90,160)
    sleep(2)
 
    moveHead(20,95)
    sleep(2)
    moveHead(90,90)
    sleep(1.5)
    speakBlocking("Head, neck and mouth,   check")
    sleep(1)
    setHeadSpeed(.9,.9)
    moveHead(25,61)
    moveArm("left",0,90,30,10)
    setArmSpeed("right",.75,.75,.75,.75)
    moveArm("right",24,62,52,45)
    moveHand("left",0,0,0,0,0,90)
    moveHand("right",0,0,0,0,0,90)
    sleep(2)
    moveHead(90,90)
    setHeadSpeed(.9,.9)
    sleep(1)
    speakBlocking("right arm and right shoulder,    check")
    sleep(1)
    setHeadSpeed(.9,.9)
    moveHead(20,122)
    setArmSpeed("left",.75,.75,.75,.75)
    moveArm("left",24,62,52,45)
    sleep(2)
    moveHead(90,90)
    setHeadSpeed(.9,.9)
    sleep(1)
    speakBlocking("left arm and left shoulder,    check")
    sleep(1)
    setHeadSpeed(.9,.9)
    moveHead(20,120)
 
    moveArm("left",75,123,52,45)
    moveArm("right",75,123,52,45)
    moveHand("left",180,180,180,180,180,30)
    moveHand("right",180,180,180,180,180,170)
    sleep(3)
    setHeadSpeed(.9,.9)
    moveHead(59,67)
 
    moveHand("right",0,0,0,0,0,19)
    moveHand("left",0,0,0,0,0,170)
    sleep(1)
    moveHand("left",180,180,180,180,180,30)
    moveHand("right",180,180,180,180,180,170)
    sleep(1.5)
    moveHead(90,90)
    setHeadSpeed(.9,.9)
    sleep(1)
    speakBlocking(" hands and Wrists,    check")
    sleep(1)
 
    moveHead(90,90)
    moveArm("left",0,90,30,10)
    moveArm("right",0,90,30,10)
    moveHand("left",0,0,0,0,0,90)
    moveHand("right",0,0,0,0,0,90)
    speakBlocking("all servos are functioning properly")
    sleep(1.5)
    speakBlocking("awaiting your commands")
    sleep(0.5)
    relax()
    print("ending system check")

def balance():
    print("starting balance")
    setHeadSpeed(0.95,0.95)
    setArmSpeed("left",1.0,0.85,0.95,0.95)
    setArmSpeed("right",0.65,0.85,0.65,0.85)
    setHandSpeed("left",0.85,0.85,0.85,0.85,0.85,0.85)
    setHandSpeed("right",0.85,0.85,0.85,0.85,0.85,0.85)
    setTorsoSpeed(0.95,0.85,1.0)
    moveHead5(79,100,82,78,65)
    moveArm("left",5,84,28,15)
    moveArm("right",5,82,28,15)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",81,66,82,60,105,113)
    moveTorso(90,90,90)
    sleep(4)
    moveHead5(80,86,82,78,65)
    moveArm("left",75,123,52,45)
    moveArm("right",75,123,52,45)
    moveHand("left",180,180,180,180,180,30)
    moveHand("right",180,180,180,180,180,170)
    moveTorso(90,90,90)
    sleep(3)
    moveHead5(16,86,82,78,65)
    moveArm("left",75,97,52,45)
    moveArm("right",75,76,52,45)
    moveHand("left",180,180,180,180,180,30)
    moveHand("right",180,180,180,180,180,170)
    moveTorso(161,90,90)
    sleep(2.5)
    setArmSpeed("left",1.0,0.85,0.95,0.95)
    setArmSpeed("right",1.0,0.85,0.95,0.95)
    moveHead5(70,120,82,78,65)
    moveArm("left",65,119,52,45)
    moveArm("right",75,76,52,45)
    moveHand("left",180,180,180,180,180,30)
    moveHand("right",180,180,180,180,180,170)
    moveTorso(20,90,90)
    sleep(3)
    moveHead5(80,151,82,78,65)
    moveArm("left",75,97,52,45)
    moveArm("right",21,76,52,45)
    moveHand("left",180,180,180,180,180,30)
    moveHand("right",180,180,180,180,180,170)
    moveTorso(20,90,90)   
    sleep(0.5)
    moveHead5(16,11,85,85,53)
    moveArm("left",60,67,67,40)
    moveArm("right",5,116,10,28)
    moveHand("left",143,69,48,2,2,23)
    moveHand("right",89,60,78,43,68,163)
    moveTorso(161,62,92)
    sleep(6)
    setArmSpeed("left",1.0,0.95,1.0,1.0)
    setArmSpeed("right",1.0,0.85,0.95,0.95)
    setHandSpeed("left",0.85,0.85,0.85,0.85,0.85,0.85)
    setHandSpeed("right",0.85,0.85,0.85,0.85,0.85,0.85)
    setTorsoSpeed(0.95,0.85,1.0)
    moveHead5(23,163,85,85,66)
    moveArm("left",5,90,30,18)
    moveArm("right",83,58,50,30)
    moveHand("left",2,2,72,110,140,32)
    moveHand("right",169,0,72,101,119,173)
    moveTorso(31,112,90)
    sleep(6)
    relax()
    print("ending balance")
         
def releaseleftclothes():
    ##arms get to middle
    setHandSpeed("left", 1.0, 0.80, 0.80, 0.80, 1.0, 0.80)
    setHandSpeed("right", 1.0, 0.70, 0.70, 1.0, 1.0, 0.80)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.80)
    setTorsoSpeed(1.0,0.80,1.0)
    moveHead5(0,80,82,0,65)
    moveArm("left",97,51,25,27)
    moveArm("right",81,52,22,18)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",180,180,180,180,180,180)
    moveTorso(90,90,90)

    sleep(4)
    ##arms spread
    setHandSpeed("left", 1.0, 0.80, 0.80, 0.80, 1.0, 0.80)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.80)
    setTorsoSpeed(1.0,0.80,1.0)
    
    sleep(2)
    moveHead5(90,90,82,78,65)
    moveArm("left",97,51,25,22)
    moveArm("right",90,135,22,36)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",180,180,180,180,180,139)
    moveTorso(64,80,90)
    sleep(2)
    ##release clothes
    setHandSpeed("left", 1.0, 0.80, 0.80, 0.80, 1.0, 0.80)
    setHandSpeed("right",  1.0, 0.80, 0.80, 0.80, 0.80, 0.80)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.80)
    setTorsoSpeed(1.0,0.80,1.0)
    moveHead5(38,43,51,10,65)
    moveArm("left",97,51,25,22)
    moveArm("right",90,135,22,36)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",0,0,0,0,0,139)
    moveTorso(66,80,90)
    sleep(4)
    ##Relax
    moveHead5(80,86,82,78,65)
    moveArm("left",5,84,28,14)
    moveArm("right",5,82,28,16)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",81,66,82,60,105,113)
    moveTorso(95,90,90)

def rightclothes():
    fullspeed()
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 0.95, 0.95, 0.95, 0.85)
    setArmSpeed("left", 0.95, 0.95, 0.95, 0.85)
    setHeadSpeed(0.75, 0.75)
    #1
    moveHead5(20,100,85,85,65)
    moveArm("left",47,86,41,14)
    moveArm("right",5,82,28,15)
    moveHand("left",180,180,180,180,180,119)
    moveHand("right",20,20,40,30,30,72)
    moveTorso(90,90,90)
    sleep(1)
    #2
    moveHead5(20,100,85,85,65)
    moveArm("left",47,86,41,14)
    moveArm("right",60,82,28,15)
    moveHand("left",180,180,180,180,180,119)
    moveHand("right",20,20,40,30,39,156)
    moveTorso(90,90,90)
    sleep(2)
    #3
    moveHead5(20,100,85,85,65)
    moveArm("left",47,86,41,14)
    moveArm("right",67,40,47,15)
    moveHand("left",180,180,180,180,180,119)
    moveHand("right",20,20,40,30,39,156)
    moveTorso(90,90,90)
    sleep(1)
    #4
    moveHead5(20,100,85,85,65)
    moveArm("left",14,86,55,14)
    moveArm("right",67,40,47,15)
    moveHand("left",180,180,180,180,180,119)
    moveHand("right",20,20,40,30,39,156)
    moveTorso(90,90,90)
    sleep(1)
    #5
    moveHead5(20,100,85,85,65)
    moveArm("left",14,71,62,14)
    moveArm("right",67,40,47,15)
    moveHand("left",180,180,180,180,180,119)
    moveHand("right",20,20,40,30,39,156)
    moveTorso(90,90,90)
    sleep(1)
    #6
    moveHead5(20,100,85,85,65)
    moveArm("left",20,66,66,14)
    moveArm("right",73,40,47,15)
    moveHand("left",180,180,180,180,180,119)
    moveHand("right",20,20,40,30,39,156)
    moveTorso(90,90,90)
    sleep(1)
    #7
    moveHead5(20,116,85,5,65)
    moveArm("left",23,66,66,14)
    moveArm("right",78,40,47,15)
    moveHand("left",180,180,180,180,180,119)
    moveHand("right",20,20,40,30,39,156)
    moveTorso(90,90,90)
    sleep(2)
    #8
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.90, 0.90, 0.85, 0.85, 1.0)
    setArmSpeed("right", 0.95, 0.95, 0.95, 0.85)
    setArmSpeed("left", 0.95, 0.95, 0.95, 0.85)
    setHeadSpeed(0.75, 0.75)
    setTorsoSpeed(0.45, 0.45,0.75)
    moveHead5(20,116,85,5,65)
    moveArm("left",23,60,66,14)
    moveArm("right",82,40,47,15)
    moveHand("left",180,180,180,180,180,119)
    moveHand("right",180,180,180,30,39,156)
    moveTorso(120,100,90)
    sleep(2)
    #9
    moveHead5(20,116,85,5,65)
    moveArm("left",25,120,41,31)
    moveArm("right",5,82,28,15)
    moveHand("left",180,180,180,180,180,35)
    moveHand("right",180,180,180,30,30,72)
    moveTorso(90,90,90)
    sleep(3)
    moveHead5(20,90,90,90,65)
    relax()

    
def brooke():
    attach()
    gestureforlondon3()
    sleep
    detach()
    sleep(8)
    head.attach()
    lookrightside()
    sleep(4)
    lookleftside()
    sleep(4)
    lookrightside()
    sleep(4)
    lookleftside()
    detach()
    sleep(8)
    attach()
    gestureforlondon4()
    detach()
    sleep(8)
    

def brooke2():
    attach()
    fullspeed()
    gestureforlondon3()
    sleep(2)
    detach()
    sleep(30)
    brooke3()

def brooke3():
    attach()
    fullspeed()
    gestureforlondon4()
    sleep(2)
    detach()
    sleep(30)
    brooke4() 

def brooke4():
    head.rothead.attach()
    head.neck.attach()
    lookrightside()
    sleep(4)
    lookleftside()
    sleep(4)
    lookinmiddle()
    sleep(4)
    lookrightside()
    sleep(4)
    lookleftside()
    sleep(4)
    lookinmiddle()
    sleep(4)
    detach()
    sleep(20)
    brooke2()       

def gestureforlondon3():
#welcome    
    setHandSpeed("left", 0.60, 0.60, 0.60, 0.60, 0.60, 0.60)
    setHandSpeed("right", 0.60, 0.80, 0.60, 0.60, 0.60, 0.60)
    setArmSpeed("left", 0.60, 0.60, 0.60, 0.60)
    setArmSpeed("right", 0.60, 0.60, 0.60, 0.60)
    setHeadSpeed(0.90, 0.90)
    moveHead5(0,90,90,50,65)
    moveArm("left",26,105,30,25)
    moveArm("right",37,124,30,27)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(5)
#welcome close hand
    setHandSpeed("left", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0)
    setHandSpeed("right", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0)
    setArmSpeed("left", 0.60, 0.60, 0.60, 0.60)
    setArmSpeed("right", 0.60, 0.60, 0.60, 0.60)
    setHeadSpeed(0.90, 0.90)
    moveHead5(0,40,25,40,65)
    moveArm("left",26,105,30,25)
    moveArm("right",37,124,30,27)
    moveHand("left",180,180,180,180,180,90)
    moveHand("right",180,180,180,180,180,90)
    sleep(3)
#put hands up    
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.9)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead5(50,120,90,90,65)
    moveArm("left",88,103,70,23)
    moveArm("right",73,97,70,27)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",2,2,2,2,2,90)
    moveTorso(90,90,90)
    sleep(2)
#look hand right    
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.8)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead5(50,60,70,90,65)
    moveArm("left",88,104,75,28)
    moveArm("right",80,97,76,21)
    moveHand("left",180,180,180,180,180,90)
    moveHand("right",180,180,180,180,180,90)
    moveTorso(90,90,90)
    sleep(1)
#look stay   
    setHandSpeed("left", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0)
    setHandSpeed("right", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.8)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead5(40,70,90,90,65)
    moveArm("left",90,102,70,23)
    moveArm("right",80,97,68,27)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",2,2,2,2,2,90)
    moveTorso(90,90,90)
    sleep(2)
#look left side  turn both wrist 
    moveHead5(50,120,140,90,65)
    moveArm("left",88,103,70,28)
    moveArm("right",75,97,76,21)
    moveHand("left",180,180,180,180,180,10)
    moveHand("right",180,180,180,180,180,170)
    moveTorso(90,90,90) 
    sleep(2)
#close hands and turn both wrist 
    moveHead5(50,50,60,90,65)
    moveArm("left",88,103,75,28)
    moveArm("right",80,97,76,21)
    moveHand("left",180,180,180,180,180,170)
    moveHand("right",180,180,180,180,180,10)
    moveTorso(90,90,90)   
    sleep(3)
#dab left    
    setHandSpeed("left", 0.9, 0.9, 0.9, 0.9, 0.9, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.9)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead5(79,160,120,90,65)
    moveArm("left",5,84,32,78)
    moveArm("right",87,82,123,74)
    moveHand("left",0,0,0,0,0,25)
    moveHand("right",0,0,0,0,0,113)
    moveTorso(90,90,90)
    sleep(6)
#regroup right arm    
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.8, 0.8)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead5(79,100,120,90,65)
    moveArm("left",18,90,55,71)
    moveArm("right",65,82,118,15)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",81,66,82,60,105,113)
    moveTorso(90,90,90)
    sleep(1)
#look right    
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 0.9,  0.9,  0.9,  0.9)
    setArmSpeed("right",  0.9,  0.9,  0.9,  0.9)
    setHeadSpeed(0.8, 0.8)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead5(60,50,70,90,65)
    moveArm("left",18,90,54,69)
    moveArm("right",65,82,118,13)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",180,180,180,180,180,113)
    moveTorso(90,90,90)
    sleep(2)
    moveHead5(79,100)
    moveArm("left",33,90,136,78)
    moveArm("right",34,82,160,13)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",180,180,180,180,180,113)
    moveTorso(90,90,90)
    sleep(2)
#arm right up
    moveHead(100,100)
    moveArm("left",33,90,136,78)
    moveArm("right",34,82,160,20)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",92,33,37,71,66,113)
    moveTorso(90,90,90)
    sleep(3)
    moveHead(110,120)
    moveArm("left",33,140,136,78)
    moveArm("right",34,82,170,30)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",92,33,37,71,66,113)
    moveTorso(90,90,90)
    sleep(2)
    moveHead(125,140)
    moveArm("left",33,90,36,60)
    moveArm("right",34,80,170,40)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",92,33,37,71,66,113)
    moveTorso(90,90,90)
    sleep(2)
#arm left up
    moveHead5(120,130,120,30,65)
    moveArm("left",33,90,36,60)
    moveArm("right",34,65,160,40)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",92,33,37,71,66,113)
    moveTorso(90,90,90)
    sleep(2)
    moveHead5(79,100,90,90,65)
    moveArm("left",18,84,54,69)
    moveArm("right",65,78,118,13)
    moveHand("left",92,33,37,71,66,30)
    moveHand("right",180,180,180,180,180,113)
    moveTorso(90,90,90)
    sleep(1)
    moveHead5(79,100)
    moveArm("left",18,90,55,71)
    moveArm("right",75,80,120,45)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",81,66,82,60,105,113)
    moveTorso(90,90,90)
    sleep(1)
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 0.85)
    setHeadSpeed(0.9, 0.9)
    setTorsoSpeed(1.0, 1.0, 1.0)
    moveHead(79,160)
    moveArm("left",24,90,32,74)
    moveArm("right",87,82,123,74)
    moveHand("left",0,0,0,0,0,25)
    moveHand("right",0,0,0,0,0,113)
    moveTorso(90,90,90)
    sleep(3)
#dab right    
    moveHead(60,20)
    moveArm("left",87,90,123,74)
    moveArm("right",5,84,32,78)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",81,66,82,60,105,113)
    moveTorso(90,90,90)
    sleep(6)
#welcome    
    setHandSpeed("left", 0.80, 0.80, 0.80, 0.80, 0.80, 0.80)
    setHandSpeed("right", 0.80, 0.80, 0.80, 0.80, 0.80, 0.80)
    setArmSpeed("left", 0.80, 0.80, 0.80, 0.80)
    setArmSpeed("right", 0.80, 0.80, 0.80, 0.80)
    setHeadSpeed(0.90, 0.90)
    moveHead5(0,90,90,50,65)
    moveArm("left",15,105,30,25)
    moveArm("right",25,124,30,27)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(5) 

def gestureforlondon4():
    print("Starting gestures")
#welcome    
    setHandSpeed("left", 0.60, 0.60, 0.60, 0.60, 0.60, 0.60)
    setHandSpeed("right", 0.60, 0.80, 0.60, 0.60, 0.60, 0.60)
    setArmSpeed("left", 0.60, 0.60, 0.60, 0.60)
    setArmSpeed("right", 0.60, 0.60, 0.60, 0.60)
    setHeadSpeed(0.90, 0.90)
    #moveHead(0,90,90,50,65)
    moveHead(0,90)
    moveArm("left",26,105,30,25)
    moveArm("right",37,124,30,27)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(5)
#welcome close hand
    setHandSpeed("left", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0)
    setHandSpeed("right", 0.95, 0.95, 0.95, 0.95, 0.95, 1.0)
    setArmSpeed("left", 0.60, 0.60, 0.60, 0.60)
    setArmSpeed("right", 0.60, 0.60, 0.60, 0.60)
    setHeadSpeed(0.90, 0.90)
    #moveHead(0,40,25,40,65)
    moveHead(0,40)
    moveArm("left",26,105,30,25)
    moveArm("right",37,124,30,27)
    moveHand("left",180,180,180,180,180,90)
    moveHand("right",180,180,180,180,180,90)
    sleep(3)    
#davinci    
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.90)
    #moveHead(46,10,42,50,65)
    moveHead(46,10)
    moveArm("left",9,115,28,80)
    moveArm("right",13,118,26,80)
    moveHand("left",61,49,14,38,15,64)
    moveHand("right",0,24,54,50,82,180)
    moveTorso(95,90,90)
    sleep(2)
#davinci turn wrist 1 
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.90)
    #moveHead(46,10,42,50,65)
    moveHead(46,10)
    moveArm("left",9,115,28,80)
    moveArm("right",13,118,26,80)
    moveHand("left",61,49,14,38,15,64)
    moveHand("right",0,24,54,50,82,10)
    moveTorso(95,90,90)
    sleep(1) 
#davinci turn wrist 2  
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.90)
    #moveHead(46,10,42,50,65)
    moveHead(46,10)
    moveArm("left",9,115,28,80)
    moveArm("right",13,118,26,80)
    moveHand("left",61,49,14,38,15,64)
    moveHand("right",180,180,180,180,180,180)
    moveTorso(95,90,90)
    sleep(2) 
#davinci turn wrist 3 
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.90)
    #moveHead(46,10,42,50,65)
    moveHead(46,10)
    moveArm("left",9,115,28,80)
    moveArm("right",13,118,26,80)
    moveHand("left",61,49,14,38,15,64)
    moveHand("right",0,24,54,50,82,10)
    moveTorso(95,90,90)
    sleep(1) 
#davinci    
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.90)
    #moveHead(46,10,42,50,65)
    moveHead(46,10)
    moveArm("left",9,115,28,80)
    moveArm("right",13,118,26,80)
    moveHand("left",61,49,14,38,15,64)
    moveHand("right",0,24,54,50,82,180)
    moveTorso(95,90,90)
    sleep(1)
#davinci turn head close hand 1   
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(1.0, 1.0)
    #moveHead(46,160,130,40,65)
    moveHead(46,160)
    moveArm("left",9,115,28,80)
    moveArm("right",13,118,26,80)
    moveHand("left",180,180,180,180,180,10)
    moveHand("right",0,24,54,50,82,180)
    moveTorso(95,90,90)
    sleep(2)
#davinci turn head close hand 2   
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.90)
    moveHead(46,160)
    #moveHead(46,160,130,40,65)
    moveArm("left",9,115,28,80)
    moveArm("right",13,118,26,80)
    moveHand("left",0,0,0,0,0,180)
    moveHand("right",0,24,54,50,82,180)
    moveTorso(95,90,90)
    sleep(2)
#davinci turn head close hand 3   
    setHandSpeed("left", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setHandSpeed("right", 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.90, 0.90)
    #moveHead(46,160,130,40,65)
    moveHead(46,160)
    moveArm("left",9,115,28,80)
    moveArm("right",13,118,26,80)
    moveHand("left",180,180,180,180,180,10)
    moveHand("right",0,24,54,50,82,180)
    moveTorso(95,90,90)
    sleep(2)                 
#close hands and turn both wrist 
    #moveHead(50,50,60,90,65)
    moveHead(50,50)
    moveArm("left",88,103,75,28)
    moveArm("right",80,97,76,21)
    moveHand("left",180,180,180,180,180,170)
    moveHand("right",180,180,180,180,180,10)
    moveTorso(90,90,90)   
    sleep(3)
#dab left    
    setHandSpeed("left", 0.9, 0.9, 0.9, 0.9, 0.9, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 1.0, 1.0, 1.0, 1.0)
    setArmSpeed("right", 1.0, 1.0, 1.0, 1.0)
    setHeadSpeed(0.9, 0.9)
    setTorsoSpeed(1.0, 1.0, 1.0)
    #moveHead(79,160,120,90,65)
    moveHead(79,160)
    moveArm("left",5,84,32,78)
    moveArm("right",87,82,123,74)
    moveHand("left",0,0,0,0,0,25)
    moveHand("right",0,0,0,0,0,113)
    moveTorso(120,70,90)
    sleep(6)
#arms up and centered    
    setHandSpeed("left", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setHandSpeed("right", 0.85, 0.85, 0.85, 0.85, 0.85, 1.0)
    setArmSpeed("left", 0.9,  0.9,  0.9,  0.9)
    setArmSpeed("right",  0.9,  0.9,  0.9,  0.9)
    setHeadSpeed(0.8, 0.8)
    setTorsoSpeed(1.0, 1.0, 1.0)
    #moveHead(60,50,70,90,65)
    moveHead(60,50)
    moveArm("left",75,90,120,10)
    moveArm("right",75,90,120,10)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",180,180,180,180,180,113)
    moveTorso(90,90,90) 
    sleep(3)
#dab right    
    moveHead(60,20)
    moveArm("left",87,90,123,74)
    moveArm("right",5,84,32,80)
    moveHand("left",92,33,37,71,66,25)
    moveHand("right",81,66,82,60,105,113)
    moveTorso(70,120,90)
    sleep(6)
#welcome    
    setHandSpeed("left", 0.80, 0.80, 0.80, 0.80, 0.80, 0.80)
    setHandSpeed("right", 0.80, 0.80, 0.80, 0.80, 0.80, 0.80)
    setArmSpeed("left", 0.80, 0.80, 0.80, 0.80)
    setArmSpeed("right", 0.80, 0.80, 0.80, 0.80)
    setHeadSpeed(0.90, 0.90)
    #moveHead(0,90,90,50,65)
    moveHead(0,90)
    moveArm("left",15,105,30,20)
    moveArm("right",25,124,30,20)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",2,2,2,2,2,90)
    sleep(5)
    print("ending gestures")
       
def signature():
    setHeadSpeed5(0.75,0.75,1.0,1.0,1.0)
    setArmSpeed("left",0.75,0.75,0.75,0.75)
    setArmSpeed("right",0.75,0.75,0.75,0.75)
    setHandSpeed("left",0.75,0.75,0.75,0.75,0.75,0.75)
    setHandSpeed("right",0.75,0.75,0.75,0.75,0.75,0.75)
    moveHead5(0,102,90,90,74)
    moveArm("left",84,73,49,10)
    moveArm("right",82,67,45,24)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",180,180,180,179,180,155)
    sleep(2)
    moveHead5(0,83,90,90,74)
    moveArm("left",67,65,64,10)
    moveArm("right",101,67,63,24)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",180,180,180,179,180,155)
    sleep(2)
    moveHead5(0,83,90,90,74)
    moveArm("left",67,65,64,10)
    moveArm("right",79,60,72,24)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",180,180,180,179,180,155)
    sleep(2)
    moveHead5(0,83,90,90,74)
    moveArm("left",74,61,64,10)
    moveArm("right",79,65,72,24)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",180,180,180,179,180,155)
    sleep(2)
    moveHead5(0,83,90,90,74)
    moveArm("left",74,60,64,10)
    moveArm("right",78,65,72,24)
    moveHand("left",2,2,2,2,2,90)
    moveHand("right",180,180,180,179,180,155)
    sleep(2)
    moveHead5(0,83,90,90,74)
    moveArm("left",75,61,69,10)
    moveArm("right",78,65,72,24)
    moveHand("left",2,2,2,2,2,76)
    moveHand("right",180,180,180,179,180,155)
    sleep(2)
    moveHead5(0,83,90,90,74)
    moveArm("left",75,61,69,10)
    moveArm("right",86,69,72,21)
    moveHand("left",2,2,2,2,2,76)
    moveHand("right",180,180,180,179,180,155)
    sleep(2)
    moveHead5(0,83,90,90,74)
    moveArm("left",75,61,69,10)
    moveArm("right",86,79,72,21)
    moveHand("left",2,2,2,2,2,76)
    moveHand("right",180,180,180,179,180,155)
    sleep(2)
    moveHead5(0,83,90,90,74)
    moveArm("left",75,61,69,10)
    moveArm("right",52,91,72,21)
    moveHand("left",2,2,2,2,2,76)
    moveHand("right",180,180,180,179,180,68)
    sleep(2)
    moveHead5(45,69,90,90,74)
    moveArm("left",75,61,69,10)
    moveArm("right",52,91,32,9)
    moveHand("left",2,2,2,2,2,76)
    moveHand("right",180,180,180,179,180,112)
    sleep(2)
    moveHead5(45,88,90,90,74)
    moveArm("left",49,62,75,0)
    moveArm("right",52,91,32,9)
    moveHand("left",2,2,2,2,2,180)
    moveHand("right",180,180,180,179,180,112)
    speakBlocking("there you go")

def getRockPaperOrScissors():
    rospy.wait_for_service('leap_rps_server')
    try:
        inmoov_leap_srv = rospy.ServiceProxy('leap_rps_server', RPS)
        response = inmoov_leap_srv(0)
        optMove = response.optMove
        print("response from leap: " + str(optMove))
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e
    return optMove

def rpsStatus():
    while 1 == 1:
        #similar to time.sleep()
        print("status")
        if getRockPaperOrScissors() == "none":
            #turn it red
            print("red")
            neopixelCommand(9, 255, 0, 0,0)
        else:
            #turn it green
            print("green")
            neopixelCommand(9, 0, 255,0,0)

        sleep(.2)
    pass


def rockpaperscissors():
    thread = threading.Thread(name='rpsStatus', target=rpsStatus)
    thread.start()
    setHandSpeed("left",1.0,1.0,1.0,1.0,1.0,1.0)
    speakBlocking("Let's play Rock, Paper, Sissors")
    myScore = 0
    optScore = 0
    sleep(.5)
    speakBlocking("We will pley the best out of 3")

    setArmSpeed("left",1.0,1.0,1.0,1.0)

    while (myScore < 2 and optScore < 2):
        scoreAudio = "The score is " + str(myScore) + " to " + str(optScore)
        speakBlocking(scoreAudio)
        if (myScore > optScore):
            speakBlocking("I am winning sucker")
        if (myScore < optScore):
            speakBlocking("You are winning")
        #close hand
        #sleep(1)
        moveHand("left",150,150,150,150,150,120)
        #move hand to starting position
        moveArm("left",180,60,60,15) #up
        sleep(2)
        speakBlocking("Ready")
    
        #move hand down
        moveArm("left",70,65,42,15) #down
        #say rock
        speakBlocking("Rock")
        sleep(.5)


        #move hand up
        moveArm("left",180,60,60,15) #up
        sleep(.6)


        #move hand down
        moveArm("left",70,65,42,15) #down
        #say paper
        speakBlocking("Paper")
        sleep(.3)

        #move hand up
        moveArm("left",180,60,60,15) #up
        sleep(.6)
        #move hand down
        moveArm("left",70,65,42,15) #down\
        #say sissors
        speakBlocking("Sissors")
        sleep(.3)

        #move hand up
        moveArm("left",180,60,60,15) #up
        sleep(.6)
        #move hand down
        moveArm("left",70,65,42,15) #down
        #say shooot

            #throw gang sign

        x = (random.randint(1, 3))
        
        if x == 1:
            move = "rock"
            moveHand("left",180,180,180,180,180,120)
    
        if x == 2:
            move = "paper"
            moveHand("left",0,0,0,0,0,120)
    
        if x == 3:
            move = "scissors"
            moveHand("left",75,0,0,180,180,120)

        speakBlocking("Shoot")
        sleep(.1)
        optMove = getRockPaperOrScissors()
        
        sleep(.1)
       
        

        if optMove != "nothingDetected":
            myMoveAudio = "I have " + move
            optMoveAudio = "You have " + optMove
            speakBlocking(myMoveAudio)
            speakBlocking(optMoveAudio)
    
            if move == optMove:
                speakBlocking("We have tied")
            if move == "rock" and optMove == "paper":
                speakBlocking("Paper beats rock, you win")
                optScore = optScore + 1
            if move == "rock" and optMove == "scissors":
                speakBlocking("Rock beats Scissors, I win")
                myScore = myScore + 1
            if move == "scissors" and optMove == "rock":
                speakBlocking("Rock beats Scissors, You win")
                optScore = optScore + 1
            if move == "scissors" and optMove == "paper":
                speakBlocking("scissors beats paper, I win")
                myScore = myScore + 1
            if move == "paper" and optMove == "scissors":
                speakBlocking("Scissors beats paper, You win")
                optScore = optScore + 1
            if move == "paper" and optMove == "rock":
                speakBlocking("Paper beats rock, I win")
                myScore = myScore + 1
            if optMove == "nothingDetected":
                speakBlocking("I did not detect your hand. Are you even playing?")
                speakBlocking("Let's try this again")
        sleep(1)
    
        if (myScore > optScore) and (myScore + optScore == 3): 
            speakBlocking("I'm so good at rock paper scissors")
        if (myScore < optScore) and (myScore + optScore == 3):
            speakBlocking("Congrats you won")


        #relax
        #relax()
    speakBlocking("Good Game")

def trainFace():
    speakBlocking("scissors beats paper, I win")


def callback(data):
    command = data.data
    #case statement

    if command == "gestures":
        relax()
        gestureforlondon4()
        relax()
    if command == "system_check":
        relax()
        systemcheck()
        relax()
    if command == "servos":
        relax()
        servos()
        relax()
    if command == "balance":
        relax()
        balance()
        relax()
    if command == "made_by":
        relax()
        madeby()
        relax()
    if command == "new_york":
        relax()
        newyork()
        relax()
    if command == "rps":
        relax()
        rockpaperscissors()
        relax()
    if command == "starwars":
        relax()
        starwars()
        relax()


def commandListener():
    rospy.init_node('inmoov_demos', anonymous=True)
    neopixelCommand("timer",255,255,0,8)
    enableAllServos()
    sleep(1)
    #configureServoSmooths()
    # spin() simply keeps python from exiting until this node is stopped
    sleep(1)
    commandRunning = False
    relax()
    sleep(1)
    #neopixel
    #neopixelCommand(3,14,28,86,50)
    neopixelCommand("blink",0,255,0,3)
    rospy.Subscriber("inmoov_command", String, callback)
    print("ready for commands")
    rospy.set_param("inmoov_demo_init", "true")
    sleep(1)
    neopixelCommand("fadeOn",14,28,86,0)
    rospy.spin()

if __name__ == '__main__':
    commandListener()