#!/usr/bin/env python

import os
import rospy
import sys
import subprocess
import httplib
from ros_hue_msgs.msg import huecommand
from phue import Bridge

#hue_ip = rospy.get_param("/inmoov/hue/ip")
#hue_username = rospy.get_param("/inmoov/hue/username")
hue_ip = "10.0.1.3"
hue_username = "NcZDvoPmetSXvYuiOL0bPSj1oQW-XU5ynDirBWSk"
bulbs = {}

b = Bridge(hue_ip)

b.connect()

groups = b.get_group()
#print(groups)

def callback(data):
    if data.mode == "group":
        for key, value in groups.iteritems():
            #print(key)
            #print(value.get("name"))
            if data.modevalue.lower() == value.get("name").lower():
                print("in a group")
                print(key)
                print(value.get("name"))
                b.set_group(int(key), 'on', bool(data.on))
                if not data.bri == 0:
                    b.set_group(int(key), 'brightness', int(data.bri))
                if not data.hue == 0:
                    b.set_group(int(key), 'hue', int(data.hue))
                if not data.sat == 0:
                    b.set_group(int(key), 'saturation', int(data.sat))
    if data.mode == "group_white":
        for key, value in groups.iteritems():
            if data.modevalue.lower() == value.get("name").lower():
            	#command_white = { 'xy' : [0.1768, 0.0557], 'sat' : 243, 'hue' : 47050}
            	command_white = { 'transitiontime' : 0 ,'xy' : [0.4672, 0.4099], 'sat' : 243, 'hue' : 47050 , 'colormode': 'xy',}
            	b.set_group(int(key), command_white)
            	b.set_group(int(key), 'on', bool(data.on))
                
    if data.mode == "id":
        b.set_light(int(data.modevalue), 'on', bool(data.on))
        if not data.bri == 0:
            b.set_light(int(data.modevalue), 'brightness', int(data.bri))
        if not data.hue == 0:
            b.set_light(int(data.modevalue), 'hue', int(data.hue))
        if not data.sat == 0:
            b.set_light(int(data.modevalue), 'saturation', int(data.sat))
    
     


def hueListener():
    rospy.init_node('hueListener')
    #try and connect to hue bridge and get list of bulbs

    rospy.Subscriber("hue_lights", huecommand, callback)
    
    rospy.spin()

if __name__ == "__main__":
    hueListener()