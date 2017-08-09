#!/usr/bin/env python  
import roslib
#roslib.load_manifest('learning_tf')
import rospy
import math
import tf
import geometry_msgs.msg
from sensor_msgs.msg import JointState
from std_msgs.msg import Header

jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)

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

def radianstodegrees(r):
    return r * 57.295779513


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

if __name__ == '__main__':
    rospy.init_node('tf_inmoov')

    listener = tf.TransformListener()

    rate = rospy.Rate(10.0)
    while not rospy.is_shutdown():
        try:
            (trans,rot) = listener.lookupTransform('/inmoov_kinect/user_1/right_elbow', '/inmoov_kinect/user_1/right_hand', rospy.Time(0))
            sendJointCommand("r_elbow_flex_joint",radianstodegrees(trans[1]))
            
            print("rad:")
            rad = trans[1] * 57
            print(rad)
            print("linear:")
            lin = float(0.5 * math.sqrt(trans[0] ** 2 + trans[1] ** 2))
            print(str(lin*57))
            print("angular:")
            ang = float(4 * math.atan2(trans[1], trans[0]))
            print(str(ang*57))

            #(trans,rot) = listener.lookupTransform('/inmoov_kinect/user_1/left_elbow', '/inmoov_kinect/user_1/left_hand', rospy.Time(0))
            #sendJointCommand("l_elbow_flex_joint",radianstodegrees(trans[1]))

            #(trans,rot) = listener.lookupTransform('/inmoov_kinect/user_1/right_shoulder', '/inmoov_kinect/user_1/right_elbow', rospy.Time(0))
            #sendJointCommand("r_shoulder_out_joint",radianstodegrees(trans[1]))
            #sendJointCommand("r_shoulder_lift_joint",radianstodegrees(trans[0]))
            

            #(trans,rot) = listener.lookupTransform('/inmoov_kinect/user_1/left_shoulder', '/inmoov_kinect/user_1/left_elbow', rospy.Time(0))
            #sendJointCommand("l_shoulder_out_joint",radianstodegrees(trans[1]))
            #sendJointCommand("l_shoulder_lift_joint",radianstodegrees(trans[0]))


        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue
        
        #angular = 4 * math.atan2(trans[1], trans[0])
        #linear = 0.5 * math.sqrt(trans[0] ** 2 + trans[1] ** 2)
        #cmd = geometry_msgs.msg.Twist()
        #cmd.linear.x = linear
        #cmd.angular.z = angular
        #turtle_vel.publish(cmd)

        rate.sleep()