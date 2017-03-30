#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from inmoov_msgs.msg import MotorCommand
from time import sleep

pub = rospy.Publisher('servobus/leftarm/motorcommand', MotorCommand, queue_size=10)
motorcommand = MotorCommand()

def callback(data):
    ison = "false"
    toSpeak = data.data
    #enable
    motorcommand.id = 15
    motorcommand.parameter = 0x18
    motorcommand.value = 1
    pub.publish(motorcommand)

    a = toSpeak.split(" ")

    for w in range(0,len(a)):
        if a[w].endswith("es"):
            testword = a[w][:-2]
        elif a[w].endswith("e"):
            testword = a[w][:-1]
        else:
            testword = a[w]


        c = list(testword)
        
        for x in range(0,len(c)):
            s = c[x]
            if (s == 'a' or s == 'e' or s == 'i' or s == 'o' or s == 'u' or s == 'y') and ison == "false":
                print("open")
                #enable
                motorcommand.id = 15
                motorcommand.parameter = 0x1E
                motorcommand.value = 50
                pub.publish(motorcommand)
                ison = "true"
                sleep(.2)
                motorcommand.id = 15
                motorcommand.parameter = 0x1E
                motorcommand.value = 80
                pub.publish(motorcommand)
                print("close")
            #jaw.moveTo(mouthClosedPos);// #// close the servo
            elif (s == '.'):
                ison = "false"
                sleep(.1)
            else:
                ison = "false"
                sleep(.06) 

    #disable
    motorcommand.id = 15
    motorcommand.parameter = 0x18
    motorcommand.value = 0
    pub.publish(motorcommand)
    #rospy.loginfo(rospy.get_caller_id() + "I heard %s", data.data)
    #disable servo
    
def mouthMovementListener():

    rospy.init_node('mouthMovementListener', anonymous=True)

    rospy.Subscriber("StartSpeaking", String, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    mouthMovementListener()