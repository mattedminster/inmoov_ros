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

joints ={}

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

lookPublisher = rospy.Publisher("look", String, queue_size=10)

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


def neopixelCommand(dType, r, g, b, w):
    neoCmd = NeoPixel()
    neoCmd.displayType = dType
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

def neopixelFlash(color,w):
    print("neopixelFlash")
    if color == "blue":
        neopixelCommand(2,0,0,255,w)
    if color == "mix1":
        neopixelCommand(8,0,0,255,w)
    if color == "mix2":
        neopixelCommand(7,0,0,255,w)
    if color == "pink":
        neopixelCommand(2,255,20,147,w)
    if color == "green":
        neopixelCommand(2,0,255,0,w)

def hueFlash(color):
    print("hueflash")
    if color == "normal":
        hueCommand("group", "kitchen", True, 254, 14956,140)
    if color == "blue":
        hueCommand("group", "kitchen", True, 254, 46014,254)
    if color == "pink":
        hueCommand("group", "kitchen", True, 254, 57638,253)
    if color == "green":
        hueCommand("group", "kitchen", True, 254, 25500,254)

def stage():
	#turn off all the lights on first floor
    hueCommand("group_white","kitchen",False, 0,0,0)
    hueCommand("group_white","Hallway",False, 0,0,0)
    hueCommand("group_white","Dining Room",False, 0,0,0)
    hueCommand("group_white","Living Room",False, 0,0,0)
    hueCommand("group_white","Laundry room",False, 0,0,0)
    
    sleep(2)
    #set kithen lights to white
    hueCommand("group_white","kitchen",True, 0,0,0)
    sleep(5)
    hueCommand("group","kitchen",False, 0,0,0)
    sleep(2)
    hueCommand("group", "kitchen", True, 128, 0,0)
    sleep(2)
    hueCommand("group", "kitchen", False, 0, 0,0)
    sleep(2)
    hueCommand("group", "kitchen", True, 128, 0,0)
    sleep(2)
    hueCommand("group", "kitchen", False, 0, 0,0)
    sleep(2)
    hueCommand("group", "kitchen", True, 128, 0,0)


def flash():
    print("flash")
    
    #sleep = float(1 * ((10-i)/10))
    hueFlash("blue")
    neopixelFlash("blue", 50)
    sleep(1)
    hueFlash("pink")
    neopixelFlash("pink", 50)
    sleep(1)

    hueFlash("blue")
    neopixelFlash("blue", 50)
    sleep(.9)
    hueFlash("pink")
    neopixelFlash("pink", 50)
    sleep(.9)
    hueFlash("blue")
    neopixelFlash("blue",50)

    sleep(.8)
    hueFlash("pink")
    neopixelFlash("pink",50)
    sleep(.8)
    hueFlash("blue")
    neopixelFlash("blue",50)

    sleep(.7)
    hueFlash("blue")
    neopixelFlash("blue",50)
    sleep(.7)
    hueFlash("pink")
    neopixelFlash("pink",50)

    sleep(.6)
    hueFlash("blue")
    neopixelFlash("blue",50)
    sleep(.6)
    hueFlash("pink")
    neopixelFlash("pink",50)

    sleep(.5)
    hueFlash("blue")
    neopixelFlash("blue",50)
    sleep(.5)
    hueFlash("pink")
    neopixelFlash("pink",50)

    sleep(.4)
    hueFlash("blue")
    neopixelFlash("blue",50)
    sleep(.4)
    hueFlash("pink")
    neopixelFlash("pink",50)

    sleep(.3)
    hueFlash("blue")
    neopixelFlash("mix1",0)
    sleep(.3)
    hueFlash("pink")
    neopixelFlash("mix2",0)

    sleep(.2)
    hueFlash("blue")
    neopixelFlash("mix1",0)
    sleep(.2)
    hueFlash("pink")
    neopixelFlash("mix2",0)

    sleep(.1)
    hueFlash("blue")
    neopixelFlash("mix1",0)
    sleep(.1)



def revel():
    print("revel")
    hueFlash("pink")
    neopixelFlash("pink",50)
    #hueFlash("green")
    #neopixelFlash("green",50)

def confetti():
    print("confetti open")
    confettiPublisher.publish(90)

def confettiClose():
    print("confetti close")
    confettiPublisher.publish(0)


def firstFloorEnd():
    hueCommand("group_white","kitchen",True, 0,0,0)
    hueCommand("group_white","Hallway",True, 0,0,0)
    hueCommand("group_white","Dining Room",True, 0,0,0)
    hueCommand("group_white","Living Room",True, 0,0,0)
    #hueCommand("id", "39", True, 254, 25500, 253) #pink
    #hueCommand("id", "5", True, 254, 25500, 253) #pink
    #hueCommand("id", "4", True, 254, 25500, 253) #pink
    hueCommand("id", "39", True, 254, 57638, 253) #pink
    hueCommand("id", "5", True, 254, 57638, 253) #pink
    hueCommand("id", "4", True, 254, 57638, 253) #pink
    

def altPattern():
    hueCommand("id", "18", True, 254, 46014,254) #blue
    hueCommand("id", "7", True, 254, 57638, 253) #pink
    hueCommand("id", "9", True, 254, 46014,254) #blue
    hueCommand("id", "3", True, 254, 57638, 253) #pink
    hueCommand("id", "2", True, 254, 46014,254) #blue
    hueCommand("id", "8", True, 254, 57638, 253) #pink

    #under cab
    hueCommand("id", "4", True, 254, 46014,254) #blue
    hueCommand("id", "39", True, 254, 57638, 253) #pink
    hueCommand("id", "5", True, 254, 46014,254) #blue

def baby():
    #turn lights to alternating pattern
    altPattern()
    #Look for a few seconds
    lookPublisher.publish("go")
    sleep(5)
    #begin speaking while continuing the look motions
    speak("Congratulations, Matt and Annie. I am so excited to be a big robot.")
    sleep(2)
    speak("Okay, are you ready to find out what you are having?")
    #begin flashing lights between blue and pink
    flash()
    speak("You are having a")
    #drum roll?
    #change the lights to the color (neo and hue)
    revel()
    #say the sex
    speak("baby girl")
    #confetti cannon
    confetti()
    sleep(60)
    firstFloorEnd()





def callback(data):
    command = data.data
    #case statement

    if command == "baby":
        relax()
        baby()
    if command == "stage":
        relax()
        stage()



def commandListener():

    rospy.init_node('inmoov_demos', anonymous=True)

    enableAllServos()
    sleep(1)
    relax()
    sleep(1)
    #neopixel
    neopixelCommand(3,75,0,130,50)
    confettiPublisher.publish(0)
    rospy.Subscriber("inmoov_command", String, callback)
    print("ready for commands")
    sleep(1)
    #baby()
    rospy.spin()

if __name__ == '__main__':
    commandListener()