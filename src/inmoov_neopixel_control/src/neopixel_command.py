#!/usr/bin/env python
import rospy
import numpy
import random
from time import sleep
from inmoov_msgs.msg import MotorCommand
from inmoov_msgs.msg import NeoPixel
from inmoov_msgs.msg import NeoPixel_command
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




neoPub = rospy.Publisher("neopixel_cmd", NeoPixel, queue_size=100)





def setBrightness(val):
    #print("in speak")
    rospy.wait_for_service('neopixel_brightness')
    try:
        neo_bright_srv = rospy.ServiceProxy('neopixel_brightness', NeoPixelSetBrightness)
        response = neo_bright_srv(val)
        print(response.response)
    except rospy.ServiceException, e:
        print "Service call failed: %s"%e


def neopixelUpdate(n,r,g,b,s):
    neoCmd = NeoPixel()
    neoCmd.pixelNum = n
    neoCmd.pixel_red = r
    neoCmd.pixel_green = g
    neoCmd.pixel_blue = b
    neoCmd.show = s
    neoPub.publish(neoCmd)
    #print("pub")


def colorWipe(r,g,b,w):
    print("colorwipe")
    setBrightness(255)
    for x in range (0, 24):
        neopixelUpdate(x,r,g,b,1)
        sleep(w)

def solid(r,g,b):
    print("solid")
    print(str(r))
    print(str(g))
    print(str(b))
    #hideNeo()
    for x in range (0, 24):
        neopixelUpdate(x,r,g,b,1)
        #sleep(.05)
    sleep(.05)
    showNeo()

def showNeo():
    print("show")
    setBrightness(255)
    neopixelUpdate(0,-1,0,0,1)


def hideNeo():
    print("hide")
    setBrightness(1)

def blink(r,g,b,times):
    #solid(r,g,b)
    for i in range (0, times+1):
       showNeo()
       #print("before sleep")      
       sleep(.5)
       #print("after sleep")
       hideNeo()
       sleep(.5)
    solid(r,g,b)

def fadeOn(r,g,b):
    #setBrightness(255)
    showNeo()
    solid(r,g,b)
    neopixelUpdate(0,-1,0,0,-255)
    #solid(r,g,b)
    showNeo()

def fadeOff():
    neopixelUpdate(0,-1,0,0,-1)

def timer(r,g,b,secs):
    setBrightness(0)
    sleep(.5)
    showNeo()
    colorWipe(r,g,b,secs/24.0)
    #blink(r,g,b,.5, 3)

def rainbow(w):
	print("rainbow")

def callback(data):
    disType = data.displayType
    wait = data.wait
    if disType == "colorwipe":
       colorWipe(data.red, data.green, data.blue, wait)
    if disType == "timer":
       timer(data.red, data.green, data.blue, wait)
    if disType == "blink":
       blink(data.red, data.green, data.blue, wait)
    if disType == "off":
       hideNeo()
    if disType == "solid":
       solid(data.red, data.green, data.blue)
    if disType == "fadeOn":
       fadeOn(data.red, data.green, data.blue)
    if disType == "fadeOff":
       fadeOff()





def commandListener():

    rospy.init_node('inmoov_demos', anonymous=True)


    #neopixel


    rospy.Subscriber("neopixel", NeoPixel_command, callback)
    print("neopixel launched")
    sleep(1)
    #reset neo
    setBrightness(0)
    setBrightness(255)
    #timer(255,0,0,2)
    #baby()
    #print("fade")
    #fadeOn(255,0,0)
    rospy.spin()

if __name__ == '__main__':
    commandListener()