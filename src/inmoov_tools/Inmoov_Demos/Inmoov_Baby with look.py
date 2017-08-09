#!/usr/bin/env python
import rospy
import numpy
import random
from time import sleep
from inmoov_msgs.msg import MotorCommand
from inmoov_msgs.msg import NeoPixel
from std_msgs.msg import String
from std_msgs.msg import Header
from std_msgs.msg import UInt16
from sensor_msgs.msg import JointState
from inmoov_msgs.srv import *
import os
import sys
from os.path import dirname, abspath
from ros_hue_msgs.msg import huecommand

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

neoPub = rospy.Publisher("neopixel", NeoPixel, queue_size=10)

sex = "girl"
color = ""
huecolor = 0

if sex == "boy":
	color = "blue"
	huecolor = 46920
elif sex == "girl":
	color = "pink"
	huecolor = 56100
#Wait for parm server (aka the arduino is connected and initialized)
#for key, value in ports.iteritems():
#    rospy.wait_for_service('servobus/'+ str(key) +'/motorparameter')
#    sleep(1)

commandPublishers = {}

for key, value in ports.iteritems():
    commandPublishers[int(key)] = rospy.Publisher("servobus/" + str(key) + "/motorcommand", MotorCommand, queue_size=10)

jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)

confettiPublisher = rospy.Publisher("confetti", UInt16, queue_size=10)

huePublisher = rospy.Publisher("hue_lights", huecommand, queue_size=10)

def calcValues(self):

    x = x
    y = self.y
    out = self.out
    grasp = self.grasp
    sliderx = self.sliderx
    slidery = self.slidery


    self.joints['eyes_pan_joint'] = clamp(EYERIGHT * x * 2, -EYERIGHT, EYERIGHT)

    self.joints['eyes_tilt_joint'] = clamp(-EYEUP * y * 2, -EYEUP, EYEUP)

    self.joints['head_tilt_joint'] = HEADUP * y

    self.joints['head_pan_joint'] = HEADRIGHT * x

    self.joints['head_roll_joint'] = HEADTILT * y * x

    self.joints['waist_pan_joint'] = WAISTRIGHT * x

    self.joints['waist_roll_joint'] = clamp(WAISTTILT * (x * y * 2), -WAISTTILT,WAISTTILT)

    for name,angle in CENTERARMLEFT.items():
        if ( x >= 0 and y < 0):
            self.joints['l_' + name] = (CENTERARMLEFT[name] + ((OUTSIDEARMLEFT[name] - CENTERARMLEFT[name]) * abs(x * y)))
            self.joints['r_' + name] = (CENTERARMRIGHT[name] + (( INSIDEARMRIGHT[name] - CENTERARMRIGHT[name]) * abs(x * y)))
        if ( x >= 0 and y>= 0):
            self.joints['r_' + name] = (CENTERARMRIGHT[name] + ((OUTSIDEARMRIGHT[name] - CENTERARMRIGHT[name]) * abs(x * y)))
            self.joints['l_' + name] = (CENTERARMLEFT[name] + (( INSIDEARMLEFT[name] - CENTERARMLEFT[name]) * abs(x * y)))
        if ( x < 0 and y >= 0):
            self.joints['l_' + name] = (CENTERARMLEFT[name] + ((OUTSIDEARMLEFT[name] - CENTERARMLEFT[name]) * abs(x* y)))
            self.joints['r_' + name] = (CENTERARMRIGHT[name] + (( INSIDEARMRIGHT[name] - CENTERARMRIGHT[name]) * abs(x * y)))
        if ( x < 0 and y < 0):
            self.joints['r_' + name] = (CENTERARMRIGHT[name] + ((OUTSIDEARMRIGHT[name] - CENTERARMRIGHT[name]) * abs(x * y)))
            self.joints['l_' + name] = (CENTERARMLEFT[name] + (( INSIDEARMLEFT[name] - CENTERARMLEFT[name]) * abs(x * y)))



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


def neopixelCommand(dType, r, g, b):
    neoCmd = NeoPixel()
    neoCmd.displayType = dType
    neoCmd.red = r
    neoCmd.green = g
    neoCmd.blue = b
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

def hueCommand(m,mv,o,b,h,s):
    huec = huecommand()
    huec.mode = m
    huec.modevalue = mv
    huec.on = o
    huec.bri = b
    huec.hue = h
    huec.sat = s
    huePublisher.publish(huec)


def relax():
  jointsPerPort = rospy.get_param('inmoov/joints')
  #get keys
  for key, value in jointsPerPort.iteritems():
      sendJointCommand(key,value.get("rest"))

def percentToBri(p):
   return (p * 254)

def neopixelFlash(color):
    print("neopixelFlash")
    if color == "blue":
        neopixelCommand(2,0,0,255)
    if color == "pink":
        neopixelCommand(2,255,20,147)

def hueFlash(color):
    print("hueflash")
    if color == "blue":
        hueCommand("group", "kitchen", True, 254, 46920,0)
    if color == "pink":
        hueCommand("group", "kitchen", True, 254, 56100,0)

def lightBeat():
    newpixelFlash()
    hueFlash()

def flash1():
    print("flash1")
    for i in range(0, 10):
    	#hueFlash("blue")
    	neopixelFlash("blue")
    	sleep(1)
    	#hueFlash("pink")
    	neopixelFlash("pink")
    	sleep(1)

def flash2():
    print("flash2")
def revel():
    print("revel")

def confetti():
    print("confetti open")
    confettiPublisher.publish(0)

def confettiClose():
	print("confetti close")
	confettiPublisher.publish(180)

def lazers():
    print("lasers")

def baby():
    #turn off all the lights
    hueCommand("group","all lights",False, 0,0,0)
    sleep(2)
    #lower the lights in the kitchen
    hueCommand("group","kitchen",True, percentToBri(.5),0,0)
    #Look for a few seconds
    #begin speaking while continuing the look motions
    speak("Congratulations, Matt and Annie. I am so excited to be a big robot. Okay, are you ready to find out what you are having?")
    #begin flashing lights between blue and pink
    flash1()
    speak("You are having a baby")
    #faster flashing (sound effect?)
    flash2()
    #change the lights to the color (neo and hue)
    revel()
    #say the sex
    speak(sex)
    #Lazers
    lazers()
    #confetti cannon
    confetti()




def callback(data):
    command = data.data
    #case statement

    if command == "baby":
        relax()
        baby()


def commandListener():

    rospy.init_node('inmoov_demos', anonymous=True)

    enableAllServos()
    sleep(1)
    relax()
    sleep(1)
    #neopixel
    neopixelCommand(3,14,28,86)

    rospy.Subscriber("inmoov_command", String, callback)
    print("ready for commands")
    sleep(1)
    baby()
    rospy.spin()


CENTERARMLEFT = {
    'pinky_joint':            60,    #pinky
    'ring_joint':             60,    #ring
    'middle_joint':           80,    #middle
    'index_joint':            60,    #index
    'thumb_joint':            45,    #thumb
    'wrist_roll_joint':       (wrist_roll_joint_rest + 10),    #hand
    'elbow_flex_joint':       -40,    #bicep
    'upper_arm_roll_joint':  -20,    #bicep_rotate
    'shoulder_out_joint':      5,    #shoulder_side
    'shoulder_lift_joint':   20,    #shoulder_up
}

CENTERARMRIGHT = {
    'pinky_joint':            60,    #pinky
    'ring_joint':             60,    #ring
    'middle_joint':           80,    #middle
    'index_joint':            60,    #index
    'thumb_joint':            45,    #thumb
    'wrist_roll_joint':      (wrist_roll_joint_rest - 10),    #hand
    'elbow_flex_joint':      -40,    #bicep
    'upper_arm_roll_joint':   20,    #bicep_rotate
    'shoulder_out_joint':     -5,    #shoulder_side
    'shoulder_lift_joint':    20,    #shoulder_up
}

OUTSIDEARMLEFT = {
    'pinky_joint':            24,    #pinky
    'ring_joint':             12,    #ring
    'middle_joint':           21,    #middle
    'index_joint':            10,    #index
    'thumb_joint':            10,    #thumb
    'wrist_roll_joint':       90,    #hand
    'elbow_flex_joint':       -21,    #bicep
    'upper_arm_roll_joint':   00,    #bicep_rotate
    'shoulder_out_joint':     15,    #shoulder_side
    'shoulder_lift_joint':   15,    #shoulder_up
}

OUTSIDEARMRIGHT = {
    'pinky_joint':            24,    #pinky
    'ring_joint':             12,    #ring
    'middle_joint':           21,    #middle
    'index_joint':            10,    #index
    'thumb_joint':            10,    #thumb
    'wrist_roll_joint':       -90,    #hand
    'elbow_flex_joint':       -21,    #bicep
    'upper_arm_roll_joint':   00,    #bicep_rotate
    'shoulder_out_joint':     -15,    #shoulder_side
    'shoulder_lift_joint':   15,    #shoulder_up
}

INSIDEARMLEFT = {
    'pinky_joint':            60,    #pinky
    'ring_joint':             60,    #ring
    'middle_joint':           80,    #middle
    'index_joint':            60,    #index
    'thumb_joint':            45,    #thumb
    'wrist_roll_joint':       45,    #hand
    'elbow_flex_joint':       -30,    #bicep
    'upper_arm_roll_joint':  -37,    #bicep_rotate
    'shoulder_out_joint':     10,    #shoulder_side
    'shoulder_lift_joint':   15,    #shoulder_up
}

INSIDEARMRIGHT = {
    'pinky_joint':            60,    #pinky
    'ring_joint':             60,    #ring
    'middle_joint':           80,    #middle
    'index_joint':            60,    #index
    'thumb_joint':            45,    #thumb
    'wrist_roll_joint':       -45,    #hand
    'elbow_flex_joint':       -30,    #bicep
    'upper_arm_roll_joint':  37,    #bicep_rotate
    'shoulder_out_joint':     -10,    #shoulder_side
    'shoulder_lift_joint':   15,    #shoulder_up
}

if __name__ == '__main__':
    commandListener()

