#!/usr/bin/env python
import rospy
from std_msgs.msg import String
from time import sleep
from sensor_msgs.msg import JointState
from std_msgs.msg import Header

jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)


def callback(data):
    ison = "false"
    toSpeak = data.data
 
  

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
                #print("open")
                #enable
                sendJointCommand("jaw_joint",rospy.get_param("/inmoov/joints/jaw_joint/maxGoal"))
                ison = "true"
                sleep(.2)
                sendJointCommand("jaw_joint",rospy.get_param("/inmoov/joints/jaw_joint/minGoal"))
                #print("close")
            #jaw.moveTo(mouthClosedPos);// #// close the servo
            elif (s == '.'):
                ison = "false"
                sleep(.1)
            else:
                ison = "false"
                sleep(.06) 

    
def sendJointCommand(name,val):
    jointcommand = JointState()
    jointcommand.header = Header()
    jointcommand.header.stamp = rospy.Time.now()
    jointcommand.name.append(name)
    jointcommand.position.append(val)
    jointcommand.velocity = []
    jointcommand.effort= []
    jointPublisher.publish(jointcommand)
    
def mouthMovementListener():

    rospy.init_node('mouthMovementListener', anonymous=True)

    rospy.Subscriber("StartSpeaking", String, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':
    mouthMovementListener()
