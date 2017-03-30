#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from sensor_msgs.msg import JointState
from inmoov_msgs.msg import MotorCommand
from time import sleep

pub = rospy.Publisher('servobus/leftarm/motorcommand', MotorCommand, queue_size=10)
motorcommand = MotorCommand()

def radianstodegrees(r):
        return r*(180.0/3.1415926)

def callback(data):
    
    #print("test2")
    #Left Shoulder up
    move = rospy.get_param('servobus/leftarm/servomap/9/rest') + (radianstodegrees(data.position[31]) * 1.5)
    print("left shoulder omni: " + str(move))
    print("left shoulder omni radians: " + str(data.position[31]))
    motorcommand.id = 9
    motorcommand.parameter =  0x1E
    motorcommand.value = move
    pub.publish(motorcommand)

    #Left Shoulder rotate
    move = rospy.get_param('servobus/leftarm/servomap/8/rest') + radianstodegrees(data.position[34])
    print("left shoulder: " + str(move))
    print("left shoulder radians: " + str(data.position[34]))
    motorcommand.id = 8
    motorcommand.parameter =  0x1E
    motorcommand.value = move
    pub.publish(motorcommand)

    #Left Bicep Rotate
    move = rospy.get_param('servobus/leftarm/servomap/7/rest') + radianstodegrees(data.position[32])
    print("left bicep rotate: " + str(move))
    print("left bicep rotate radians: " + str(data.position[32]))
    motorcommand.id = 7
    motorcommand.parameter =  0x1E
    motorcommand.value = move
    pub.publish(motorcommand)
    

    #Left Bicep 
    move = rospy.get_param('servobus/leftarm/servomap/6/rest') + radianstodegrees(data.position[33])
    print("left bicep: " + str(move))
    print("left bicep radians: " + str(data.position[33]))
    motorcommand.id = 6
    motorcommand.parameter =  0x1E
    motorcommand.value = move
    pub.publish(motorcommand)


    #LEFT HAND
    move = rospy.get_param('servobus/leftarm/servomap/9/rest') + radianstodegrees(data.position[31])
    print("left shoulder omni: " + str(move))
    print("left shoulder omni radians: " + str(data.position[31]))
    motorcommand.id = 9
    motorcommand.parameter =  0x1E
    motorcommand.value = move
    pub.publish(motorcommand)



    print("------------")
    #print(move)
    
def jointStatesListener():

    rospy.init_node('jointStatesListener', anonymous=True)

    rospy.Subscriber("joint_states", JointState, callback)
    #print("test1")
    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    jointStatesListener()