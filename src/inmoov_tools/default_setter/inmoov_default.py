#!/usr/bin/env python
import rospy
from inmoov_msgs.msg import MotorCommand
from time import sleep






rospy.init_node('inmoovdefaultsetter')
Leftpub = rospy.Publisher('servobus/leftarm/motorcommand', MotorCommand, queue_size=10)
Rightpub = rospy.Publisher('servobus/rightarm/motorcommand/', MotorCommand, queue_size=10)




def enable(bus,servo):
    motorcommand = MotorCommand()
    motorcommand.id = servo
    motorcommand.parameter =  0x18
    motorcommand.value = 1
    if bus == "right":
        Rightpub.publish(motorcommand)
    if bus == "left":
        Leftpub.publish(motorcommand)

def setMin(bus,servo, angle):
    motorcommand = MotorCommand()
    motorcommand.id = servo
    motorcommand.parameter =  0x06
    motorcommand.value = angle
    if bus == "right":
        Rightpub.publish(motorcommand)
    if bus == "left":
        Leftpub.publish(motorcommand)


def setMax(bus,servo, angle):
    motorcommand = MotorCommand()
    motorcommand.id = servo
    motorcommand.parameter =  0x08
    motorcommand.value = angle
    if bus == "right":
        Rightpub.publish(motorcommand)
    if bus == "left":
        Leftpub.publish(motorcommand)

#Wait for parm server (aka the arduino is connected and initialized)
rospy.wait_for_service('motorparameter')



for servo in range (0,18):
    #set mins/maxs
    setMin("right",servo,rospy.get_param('servobus/rightarm/servomap/'+str(servo)+'/min'))
    setMax("right",servo,rospy.get_param('servobus/rightarm/servomap/'+str(servo)+'/max'))
    setMin("left",servo,rospy.get_param('servobus/leftarm/servomap/'+str(servo)+'/min'))
    setMax("left",servo,rospy.get_param('servobus/leftarm/servomap/'+str(servo)+'/max'))

    sleep(.1)
    #enable
    enable("left",servo)
    enable("right",servo)

