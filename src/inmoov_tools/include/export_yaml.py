#!/usr/bin/env python
# licensed as BSD-3

import sys
import rospy
import rosparam
import yaml
import os
import subprocess
from os.path import dirname, abspath

#hacky way to add include directory to sys path
sys.path.append(os.path.join(dirname(dirname(abspath(__file__))),'include'))

from constants import PROTOCOL
from servos import Servo

def export_yaml(filename):
	filename = "config.yaml"
	outfile = os.path.join(dirname(dirname(abspath(__file__))),'config',filename)
	rosparam.dump_params(outfile,"/inmoov")


	#subprocess.call("mv /home/robot/inmoov_ros/src/inmoov_bringup/config/config.yaml /home/robot/inmoov_ros/src/inmoov_bringup/config/config.yaml.bak")

	
	#subprocess.call("rosparam dump /home/robot/inmoov_ros/src/inmoov_bringup/config/config.yaml")
