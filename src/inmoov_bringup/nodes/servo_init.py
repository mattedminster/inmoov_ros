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

def relax():
  jointsPerPort = rospy.get_param('inmoov/joints')
  #get keys
  for key, value in jointsPerPort.iteritems():
      sendJointCommand(key,value.get("rest"))
  

#get number of ports
ports = rospy.get_param('inmoov/port')

#Wait for parm server (aka the arduino is connected and initialized)
for key, value in ports.iteritems():
    rospy.wait_for_service('servobus/'+ str(key) +'/motorparameter')
    sleep(1)


rospy.wait_for_service('neopixel_brightness')

commandPublishers = {}
servoSetupPublishers = {}
for key, value in ports.iteritems():
    commandPublishers[int(key)] = rospy.Publisher("servobus/" + str(key) + "/motorcommand", MotorCommand, queue_size=10)
    servoSetupPublishers[int(key)] = rospy.Publisher("servobus/" + str(key) + "/ServoSetup", ServoSetup, queue_size=10)



rospy.init_node('inmoov_config_loader')
neopixelCommand("timer",139,0,139,10)
sleep(2)

for key, value in ports.iteritems():
    print("Resetting Bus: " + str(key))
    motorcommand = MotorCommand()
    motorcommand.pin = 255
    motorcommand.parameter = 1
    motorcommand.value = -1
    commandPublishers[int(key)].publish(motorcommand)
    sleep(1)

#setup servos
jointsPerPort = rospy.get_param('inmoov/joints')
#get keys
for key, value in jointsPerPort.iteritems():
    #print("bus: ")
    #print(str(value.get("bus")))
    #print(str(key))
    #print(str(value))
    portVal = value.get("bus")
    #build Message
    servoSetup = ServoSetup()
    servoSetup.servoPin = int(value.get("servoPin"))
    #print(str(value.get("servoPin")))
    servoSetup.sensorPin = int(value.get("sensorPin"))
    servoSetup.minAngle = float(value.get("minGoal"))
    servoSetup.maxAngle = float(value.get("maxGoal"))
    servoSetup.minPulse = float(value.get("minPulse"))
    servoSetup.maxPulse = float(value.get("maxPulse"))
    servoSetup.minSensor = float(value.get("minSensor"))
    servoSetup.maxSensor = float(value.get("maxSensor"))
    servoSetup.smoothing = int(value.get("smoothing"))
    servoSetup.maxSpeed = float(value.get("maxSpeed"))

    servoSetupPublishers[portVal].publish(servoSetup)
    #print("sending commma")
    sleep(.2)

sleep(1)
#init to rest
relax()




neopixelCommand("blink",139,0,139,2)
print("Servo's have been loaded")
rospy.set_param("inmoov_servo_init", "true")

