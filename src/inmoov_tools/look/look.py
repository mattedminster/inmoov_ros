#!/usr/bin/env python

import sys
import os
import rospy
import rospkg

import random

from threading import Thread
import thread
import atexit

from python_qt_binding import loadUi
from python_qt_binding import QtGui
from python_qt_binding import QtWidgets

from PyQt5 import QtGui, QtCore, uic, QtWidgets

#from lookgui import Ui_MainWindow

from inmoov_msgs.msg import MotorStatus
from inmoov_msgs.msg import MotorCommand
from inmoov_msgs.srv import MotorParameter
from sensor_msgs.msg import JointState
from std_msgs.msg import Header

from time import sleep

# https://github.com/ColinDuquesnoy/QDarkStyleSheet
import qdarkstyle

# https://www.safaribooksonline.com/blog/2014/01/22/create-basic-gui-using-pyqt/
gui = os.path.join(os.path.dirname(__file__), 'lookgui.ui')
form_class = uic.loadUiType(gui)[0]

# https://nikolak.com/pyqt-qt-designer-getting-started/
#class ExampleApp(QtGui.QMainWindow, Ui_MainWindow):
class ExampleApp(QtWidgets.QMainWindow, form_class):
    def __init__(self):
        # Explaining super is out of the scope of this article
        # So please google it if you're not familar with it
        # Simple reason why we use it here is that it allows us to
        # access variables, methods etc in the design.py file
        super(self.__class__, self).__init__()
        self.setupUi(self)  # This is defined in design.py file automatically
        # It sets up layout and widgets that are defined

        # set up command Thread
        self.commandthread = Thread(target = self.commandBuffer)
        self.randomthread = Thread(target=self.randomDriver)
        #self.threadstarted = False
        #self.commandthread.start()

        #flag to stop threads during exit
        #self.running = False
        self.enabled = False
        self.random = False

	self.x = 0.0
	self.y = 0.0
	self.out = 0.0
	self.grasp = 0.0
	self.sliderx = 0.0
	self.slidery = 0.0

        self.previouspoint = Point()
        self.commandpoint =  Point()

        self.parameterTopic = ["servobus/leftarm/motorparameter","servobus/rightarm/motorparameter"]

        self.motorcommand = MotorCommand()
        self.jointcommand = JointState()
        
        self.jointNames = []
        
        
        for servo in range (0, 18):
            self.jointNames.append( rospy.get_param('servobus/leftarm/servomap/'+str(servo)+'/name'))
            
        for servo in range (0, 18):
            self.jointNames.append( rospy.get_param('servobus/rightarm/servomap/'+str(servo)+'/name'))
        
        print(self.jointNames)
    

        rospy.init_node('look', anonymous=True)

        print("INITIALIZED")
        
        self.commandPublisher = []
        self.commandPublisher.append(rospy.Publisher("servobus/leftarm/motorcommand", MotorCommand, queue_size=10))
        self.commandPublisher.append(rospy.Publisher("servobus/rightarm/motorcommand", MotorCommand, queue_size=10))
        
        print("COMMANDS COMPLETE")

        #self.statusSubscriber = []
        #self.statusSubscriber.append(rospy.Subscriber("servobus/torso/motorstatus", MotorStatus, self.callback0))
        #self.statusSubscriber.append(rospy.Subscriber("servobus/leftarm/motorstatus", MotorStatus, self.callback1))
        #self.statusSubscriber.append(rospy.Subscriber("servobus/rightarm/motorstatus", MotorStatus, self.callback2))
        
        print("SUBSCRIBER COMPLETE")

        self.jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=10)
        
        print("JOINTPUBLISHER COMPLETE")

        self.bus = 0
        self.servo = 0
        self.motorparameter = rospy.ServiceProxy(self.parameterTopic[self.bus], MotorParameter)
        
        self.chkEnable.stateChanged.connect(self.setEnableAll)
        self.chkRandom.stateChanged.connect(self.setRandom)
	self.sliderOut.valueChanged.connect(self.setOut)
	self.sliderGrasp.valueChanged.connect(self.setGrasp)
	self.sliderX.valueChanged.connect(self.setSliderX)
	self.sliderY.valueChanged.connect(self.setSliderY)

        self.pose= [0,0,0,0,0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,0,0,0,0,
                    0,0,0,0,0,0,0,0,0,0,0,0
                    ]

        for servo in range (0,18):
            self.pose[servo] = CENTERARM[servo]
            self.pose[18 + servo] = CENTERARM[servo]
        #preset pose defaults for non arm parts
        self.pose[11] = 90 
        self.pose[15] = 80   
        print(self.pose)
        print("INIT COMPLETE")  

    def commandBuffer(self):
        while self.enabled == True:
            #print("test")
            #self.setgoal(0,3,90)
            #print("triggered!")
            #self.label_15.setText("TRIGGERED!")

            if self.random == True:

                #normalize from 0 to 2
                oldpoint = Point()
                destinationpoint = Point()
                oldpoint.x = self.previouspoint.x
                oldpoint.y = self.previouspoint.y
                destinationpoint.x = self.commandpoint.x
                destinationpoint.y = self.commandpoint.y


                deltax = destinationpoint.x - oldpoint.x
                deltay = destinationpoint.y - oldpoint.y
                
                deltax = clamp(deltax,-0.0015, 0.0015)
                deltay = clamp(deltay,-0.0015, 0.0015)

                self.x = self.previouspoint.x + deltax
                self.y = self.previouspoint.y + deltay

                self.calcValues()

                self.previouspoint.x = self.x
                self.previouspoint.y = self.y
            #self.setGoal(0,11,self.pose[11])    
            #rint("begin")
            for bus in range (0,2):
                for servo in range (0,18):
                    self.setGoal(bus,servo,self.pose[(bus * 18) + servo])

            #fix right arm

            #print(self.pose)
            #print("before sleep")
            sleep(.025)
            #print("after sleep")

    def randomDriver(self):
        while self.random == True:
            self.commandpoint.x = random.uniform(-1.0, 1.0)
            self.commandpoint.y = random.uniform(-0.75, 0.75)
            print self.commandpoint
            sleep(random.uniform(3.0, 5.0))

    def mouseMoveEvent(self,event):
        #print("Mouse Cursor Coordinates(x/y):  " + str(event.x()) + "/" + str(event.y()))

        #print( str(self.frameGeometry().width()) + " " + str(self.frameGeometry().height()))

        # grab mouse coord, convert to [-1,1] and clamp
        x = (((float(event.x())/float(self.frame.frameGeometry().width())) * 2) - 1.0)
        x = clamp(x,-1.0,1.0)
        y = (-((float(event.y())/float(self.frame.frameGeometry().height())) * 2) + 1.0)
        y = clamp(y,-1.0,1.0)

        if self.chkFlipX.isChecked() == False:
            x = -x

        if self.chkFlipY.isChecked() == True:
            y = -y

	self.x = x
	self.y = y
	self.out = (float(self.sliderOut.value()) / 100.0)
        self.grasp = (float(self.sliderGrasp.value()) / 100.0)
	self.sliderx = (float(self.sliderX.value()) / 100.0) - 0.5
	self.slidery = (float(self.sliderY.value()) / 100.0) - 0.5

        self.calcValues()


    def calcValues(self):

	x = self.x
	y = self.y
	out = self.out
	grasp = self.grasp
	sliderx = self.sliderx
	slidery = self.slidery

        if self.radioLookAround.isChecked():
            
            self.pose[13] = (EYERIGHT * x * y) + EYERIGHT
            self.pose[14] = (EYEUP * x * y) + EYEUP
            self.pose[10] = (HEADUPRANGE * y) + HEADUP
            self.pose[11] = (HEADRIGHTRANGE * x) + HEADRIGHT
            self.pose[12] = (HEADTILTRANGE * y * x) + HEADTILT
            #self.pose[15] = 75

            self.pose[17] = (WAISTRIGHTRANGE * x) + WAISTRIGHT

            #if self.chkFlip.isChecked():
            #    waisttilt = -WAISTTILT * y * x
            #else:
            #    waisttilt = WAISTTILT * y * x

            #self.pose[16] = clamp(WAISTTILT * (x * y * 2), -WAISTTILT,WAISTTILT)
            self.pose[16] = (WAISTTILT * x * y) + WAISTTILT
            #print("mid")
            #print(self.pose)

            #now for the arms...
            for servo in range (0, 10):
                if ( x >= 0 and y < 0):
                    self.pose[servo] = (CENTERARM[servo] + ((OUTSIDEARM[servo] - CENTERARM[servo]) * abs(x* y) ) )
                    self.pose[18 + servo] = (CENTERARM[servo] + ((INSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                if ( x >= 0 and y>= 0):
                    self.pose[servo] = (CENTERARM[servo] + ((OUTSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                    self.pose[18 + servo] = (CENTERARM[servo] + ((INSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                if ( x < 0 and y >= 0):
                    self.pose[servo] = (CENTERARM[servo] + ((OUTSIDEARM[servo] - CENTERARM[servo]) * abs(x* y) ) )
                    self.pose[18 + servo] = (CENTERARM[servo] + ((INSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                if ( x < 0 and y < 0):
                    self.pose[servo] = (CENTERARM[servo] + ((OUTSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                    self.pose[18 + servo] = (CENTERARM[servo] + ((INSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))

            #print("pose eyeX:")
            #print(self.pose[13])
            #print("pose eyeY:")
            #print(self.pose[14])
            #print("pose HeadUp:")
            #print(self.pose[10])
            #print("pose eyeUP:")
            #print(self.pose[14])
        if self.radioLookOut.isChecked():

            self.pose[13] = clamp(EYERIGHT * x * 2, -EYERIGHT, EYERIGHT)
            self.pose[14] = clamp(EYEUP * y * 2, -EYEUP, EYEUP)
            self.pose[10] = HEADUP * y
            self.pose[11] = HEADRIGHT * -x
            self.pose[12] = HEADTILT * y * x

            self.pose[17] = WAISTRIGHT * x

            #if self.chkFlip.isChecked():
            #    waisttilt = -WAISTTILT * y * x
            #else:
            #    waisttilt = WAISTTILT * y * x

            self.pose[16] = clamp(-WAISTTILT * (x * y * 2), -WAISTTILT,WAISTTILT)
           
            #now for the arms...
            for servo in range (0, 10):
                if ( x < 0 and y < 0):
                    self.pose[servo] = (CENTERARM[servo] + ((OUTSIDEARM[servo] - CENTERARM[servo]) * abs(x* y) ) )
                    self.pose[18 + servo] = (CENTERARM[servo] + ((INSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                if ( x < 0 and y>= 0):
                    self.pose[servo] = (CENTERARM[servo] + ((OUTSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                    self.pose[18 + servo] = (CENTERARM[servo] + ((INSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                if ( x >= 0 and y >= 0):
                    self.pose[servo] = (CENTERARM[servo] + ((OUTSIDEARM[servo] - CENTERARM[servo]) * abs(x* y) ) )
                    self.pose[18 + servo] = (CENTERARM[servo] + ((INSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                if ( x >= 0 and y < 0):
                    self.pose[servo] = (CENTERARM[servo] + ((OUTSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))
                    self.pose[18 + servo] = (CENTERARM[servo] + ((INSIDEARM[servo] - CENTERARM[servo]) * abs(x * y) ))

        self.label_8.setText("{:10.2f}".format(self.pose[13]))
        self.label_9.setText("{:10.2f}".format(self.pose[14]))
        self.label_10.setText("{:10.2f}".format(self.pose[11]))
        self.label_11.setText("{:10.2f}".format(self.pose[10]))
        self.label_12.setText("{:10.2f}".format(self.pose[12]))
        self.label_13.setText("{:10.2f}".format(self.pose[17]))
        self.label_14.setText("{:10.2f}".format(self.pose[16]))
        #self.label_15.setText("{:10.2f}".format(ARMOUT * y))

        if self.radioPunch.isChecked():

            self.pose[13] = clamp(EYERIGHT * x * 2, -EYERIGHT, EYERIGHT)
            self.pose[14] = clamp(EYEUP * y * 2, -EYEUP, EYEUP)
            self.pose[10] = HEADUP * y
            self.pose[11] = HEADRIGHT * x
            self.pose[12] = HEADTILT * y * x

            self.pose[17] = WAISTRIGHT * x

            #if self.chkFlip.isChecked():
            #    waisttilt = -WAISTTILT * y * x
            #else:
            #    waisttilt = WAISTTILT * y * x

            self.pose[16] = clamp(-WAISTTILT * (x * y * 2), -WAISTTILT,WAISTTILT)
            #self.pose[16] = (WAISTTILT * x * y) + WAISTTILT

            #now for the arms...
            for servo in range (0, 10):
                if ( x < 0 and y < 0):
                    self.pose[servo] = (PUNCHNEUTRAL[servo] + ((PUNCHOUTSIDE[servo] - PUNCHNEUTRAL[servo]) * abs(x* y) ) )
                    self.pose[18 + servo] = (PUNCHNEUTRAL[servo] + ((PUNCHINSIDE[servo] - PUNCHNEUTRAL[servo]) * abs(x * y) ))
                if ( x < 0 and y>= 0):
                    self.pose[servo] = (PUNCHNEUTRAL[servo] + ((PUNCHOUTSIDE[servo] - PUNCHNEUTRAL[servo]) * abs(x * y) ))
                    self.pose[18 + servo] = (PUNCHNEUTRAL[servo] + ((PUNCHINSIDE[servo] - PUNCHNEUTRAL[servo]) * abs(x * y) ))
                if ( x >= 0 and y >= 0):
                    self.pose[servo] = (PUNCHNEUTRAL[servo] + ((PUNCHOUTSIDE[servo] - PUNCHNEUTRAL[servo]) * abs(x* y) ) )
                    self.pose[18 + servo] = (PUNCHNEUTRAL[servo] + ((PUNCHINSIDE[servo] - PUNCHNEUTRAL[servo]) * abs(x * y) ))
                if ( x >= 0 and y < 0):
                    self.pose[servo] = (PUNCHNEUTRAL[servo] + ((PUNCHOUTSIDE[servo] - PUNCHNEUTRAL[servo]) * abs(x * y) ))
                    self.pose[18 + servo] = (PUNCHNEUTRAL[servo] + ((PUNCHINSIDE[servo] - PUNCHNEUTRAL[servo]) * abs(x * y) ))

        if self.radioBeverage.isChecked():
            #out=(float(self.sliderOut.value()) / 100.0)
            #print out
            for servo in range (0, 10):
                self.pose[18 + servo] = (GRABIN[servo] + ((GRABOUT[servo] - GRABIN[servo]) * out))
                self.pose[16] = 0 + int(15.0 * out)  #lean
                self.pose[17] = -30 + int(60.0 * out) + (90 * sliderx) #waist
                self.pose[11] = 40 + int(-97.0 * out) #headleftright
                self.pose[6] = self.pose[30] + (30 * slidery) #bicep

            #fingers
            self.pose[1] = GRABOUT[0] + (90.0 * grasp)
            self.pose[2] = GRABOUT[0] + (90.0 * grasp)
            self.pose[3] = GRABOUT[0] + (90.0 * grasp)
            self.pose[4] = GRABOUT[0] + (90.0 * grasp)

        if self.radioArmOut.isChecked():
            #now for the arms...
            for servo in range (0, 10):
                if x < 0:
                    self.pose[servo] = ( CENTERARM[servo] )
                    self.pose[18 + servo] = (CENTERARM[servo] + ((ARMOUT[servo] - CENTERARM[servo]) * abs(x) ))

                if x >= 0:
                    self.pose[18 + servo] = ( CENTERARM[servo] )
                    self.pose[servo] = (CENTERARM[servo] + ((ARMOUT[servo] - CENTERARM[servo]) * abs(x) ))
        

            self.label_8.setText("{:10.2f}".format(self.pose[13]))
            self.label_9.setText("{:10.2f}".format(self.pose[14]))
            self.label_10.setText("{:10.2f}".format(self.pose[11]))
            self.label_11.setText("{:10.2f}".format(self.pose[10]))
            self.label_12.setText("{:10.2f}".format(self.pose[12]))
            self.label_13.setText("{:10.2f}".format(self.pose[17]))
            self.label_14.setText("{:10.2f}".format(self.pose[16]))
            #self.label_15.setText("{:10.2f}".format(ARMOUT * y))

    def setOut(self, event):
	self.out = (float(self.sliderOut.value()) / 100.0)
	self.calcValues()

    def setGrasp(self, event):
	self.grasp = (float(self.sliderGrasp.value()) / 100.0)
	self.calcValues()

    def setSliderX(self, event):
	self.sliderx = -((float(self.sliderX.value()) / 100.0) - 0.5) * 2
	self.calcValues()

    def setSliderY(self, event):
	self.slidery = ((float(self.sliderY.value()) / 100.0) - 0.5) * 2
	self.calcValues()
	print self.slidery


    def callback0(self, data):
        if data.id == self.servo and self.bus == 0:
            print data.posraw
            #self.chkEnabled.setChecked(bool(data.enabled))
            #self.txtPosition.setText(str(round(data.position,4)))
            #self.txtSpeed.setText(str(data.presentspeed))
            #self.txtSensorRaw.setText(str(data.posraw))
            #self.chkMoving.setChecked(bool(data.moving))
            #self.chkPower.setChecked(bool(data.power))
            #self.txtGoal.setText(str(data.goal))
  
    def degreestoradians(self, d):
        return d*(3.1415926/180.0)
        
    def sliderChanged(self, i):
        self.txtGoal.setText(str(i/1000.0))
        self.setGoal()
    
    #def setEnableAll(self):
    #
    #    for servo in range (0, 11):
    #        for bus in range (1, 3):
    #            self.setGoal(bus,servo,CENTERARM[servo])

    def setRandom(self):

        self.random = self.chkRandom.isChecked()

        if self.random == True:
            self.randomthread.start()

    def setEnableAll(self):
        for servo in range (0, 18):
            for bus in range (0,2):
                self.motorcommand.id = servo
                self.motorcommand.parameter = 0x18
                self.motorcommand.value = float(self.chkEnable.isChecked())
                self.commandPublisher[bus].publish(self.motorcommand)
            sleep(0.01)


        self.enabled = self.chkEnable.isChecked()

        if self.enabled == True:
            self.commandthread.start()


        #if self.chkEnable.isChecked() == True:
        #    self.running = True
        #else:
        #    self.running = False

    def setParameter(self, bus, servo, parameter, value):
        rospy.wait_for_service('motorparameter')


    def setGoal(self, bus, servo, goal):
        #print("SETGOAL")
        #print(str(value))
        #if servo == 13 and bus == 0:

            #print("")
            #print("--------SETGOAL----------")
            #print(self)
            #print(bus)
            #print(servo)
            #print(goal)
            #print("--------------------")
            #print("")
        #goal = float(self.txtGoal.text())

        #self.sliderGoal.setValue(int(goal)*1000.0)
        #print(bus)

        #fix right arm
        if bus == 1 and servo == 26:
        	goal = goal - 18

        self.motorcommand.id = servo
        self.motorcommand.parameter = 0x1E
        self.motorcommand.value = goal
        #print(self.motorcommand.value)
        self.commandPublisher[bus].publish(self.motorcommand)
        
        #self.jointcommand.header = Header()
        #self.jointcommand.header.stamp = rospy.Time.now()
        #self.jointcommand.name = [self.jointNames[((bus * 18) + servo)]]
        #self.jointcommand.position = [self.degreestoradians(goal)]
        #self.jointcommand.velocity = []
        #self.jointcommand.effort = []
        #self.jointPublisher.publish(self.jointcommand)
        
    
    def getGoal(self):
        #print("GETGOAL")
        #bus = self.cmbBus.currentIndex()
        #motorparameter = rospy.ServiceProxy(self.parameterTopic[bus], MotorParameter)
        value = self.motorparameter(self.cmbServo.currentIndex(), 0x1E).data
        self.txtGoal.setText(str(value))
        self.sliderGoal.setValue(int(value * 1000.0))
       
    def getMinGoal(self):
        #bus = self.cmbBus.currentIndex()
        #motorparameter = rospy.ServiceProxy(self.parameterTopic[bus], MotorParameter)
        #rospy.wait_for_service('/servobus/torso/motorparameter')
        value = self.motorparameter(self.cmbServo.currentIndex(), 0x06).data
        self.txtMinGoal.setText(str(value))
        self.sliderGoal.setMinimum(int(value * 1000.0))
    
       
    def getMaxGoal(self):
        #bus = self.cmbBus.currentIndex()
        #motorparameter = rospy.ServiceProxy(self.parameterTopic[bus], MotorParameter)
        #rospy.wait_for_service('/servobus/torso/motorparameter')
        value = self.motorparameter(self.cmbServo.currentIndex(), 0x08).data
        self.txtMaxGoal.setText(str(value))
        self.sliderGoal.setMaximum(int(value * 1000.0))
        
    def setEnabled(self):
        self.motorcommand.id = self.cmbServo.currentIndex()
        self.motorcommand.parameter = 0x18
        self.motorcommand.value = float(self.chkEnabled.isChecked())
        self.commandPublisher[self.bus].publish(self.motorcommand)


    
    def getEnabled(self):
        #bus = self.cmbBus.currentIndex()
        #motorparameter = rospy.ServiceProxy(self.parameterTopic[bus], MotorParameter)
        #rospy.wait_for_service('/servobus/torso/motorparameter')
        self.chkEnabled.setChecked(bool(self.motorparameter(self.cmbServo.currentIndex(), 0x18).data))

    def closeEvent(self, event):
        self.enabled = False
        self.random = False
        print "GOODBYE!"

class Point:
    x = 0.0
    y = 0.0

def clamp(n,minn,maxn):
    return max(min(maxn, n), minn)

HZ          =  40

EYERIGHT    =  70 #overcommand for effect
EYEUP       =  90 #overcommand for effect
HEADRIGHT   =  90
HEADUP      =  90
HEADRIGHTRANGE   =  50
HEADUPRANGE      =  55
HEADTILT    = 120
HEADTILTRANGE    = 60
WAISTRIGHT  =  90
WAISTRIGHTRANGE  =  10
WAISTTILT   =  108  
ARMOUT      =  15

CENTERARM = [
             140,    #thumb
             120,    #index
             140,    #middle
             140,    #ring
             140,    #pinky         
             75,    #hand
             10,    #bicep
             90,    #bicep_rotate
             33,    #shoulder_side
             15,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00     #arm-nc-17

]

OUTSIDEARM = [
             90,    #thumb
             65,    #index
             65,    #middle
             65,    #ring
             65,    #pinky           
             65,    #hand
             45,    #bicep
             75,    #bicep_rotate
             33,    #shoulder_side
             30,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00,     #arm-nc-17
        ]

INSIDEARM = [
             100,    #thumb
             100,    #index
             100,    #middle
             100,    #ring
             100,    #pinky             
             65,    #hand
             45,  #bicep
             115,    #bicep_rotate
             33,    #shoulder_side
             30,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00     #arm-nc-17
        ]

PUNCHOUTSIDE = [
             45,    #thumb
             60,    #index
             80,    #middle
             60,    #ring
             55,    #pinky        
             45,    #hand
             05,    #bicep
             -21,    #bicep_rotate
             23,    #shoulder_side
             76,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00,     #arm-nc-17
        ]

PUNCHINSIDE = [
             109,    #thumb
             66,    #index
             85,    #middle
             71,    #ring
             52,    #pinky   
             48,    #hand
             85,    #bicep
            -18,    #bicep_rotate
             20,    #shoulder_side
            -45,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00     #arm-nc-17
        ]

PUNCHNEUTRAL = [
             109,    #thumb
             66,    #index
             85,    #middle
             71,    #ring
             52,    #pinky            
             64,    #hand
             85,    #bicep
             -8,    #bicep_rotate
              5,    #shoulder_side
             -45,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00     #arm-nc-17
        ]
		
GRABIN = [
             7,    #thumb
             17,    #index
             7,    #middle
             8,    #ring
             12,    #pinky         
             100,    #hand
             95,    #bicep
             -50,    #bicep_rotate
              5,    #shoulder_side
             20,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00     #arm-nc-17
        ]
		
GRABOUT = [
             7,    #thumb
             17,    #index
             7,    #middle
             8,    #ring
             12,    #pinky    
             93,    #hand
             65,    #bicep
             48,    #bicep_rotate
             35,    #shoulder_side
             20,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00     #arm-nc-17
        ]
		
GRABNEUTRAL = [
             109,    #thumb
             66,    #index
             85,    #middle
             71,    #ring
             52,    #pinky                    
             64,    #hand
             85,    #bicep
             -8,    #bicep_rotate
              5,    #shoulder_side
             -45,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00     #arm-nc-17
        ]

ARMOUT = [
             12,    #thumb
             21,    #index
             13,    #middle
             12,    #ring
             10,    #pinky
             105,    #hand
             29,    #bicep
             54,    #bicep_rotate
             50,    #shoulder_side
              0,    #shoulder_up
             00,    #arm-nc-10
             00,     #arm-nc-11
             00,     #arm-nc-12
             00,     #arm-nc-13
             00,     #arm-nc-14
             00,     #arm-nc-15
             00,     #arm-nc-16
             00     #arm-nc-17
        ]

def main():
    app = QtWidgets.QApplication(sys.argv)  # A new instance of QApplication
    app.setStyleSheet(qdarkstyle.load_stylesheet_pyqt5())
    form = ExampleApp()  # We set the form to be our ExampleApp (design)
    form.show()  # Show the form
    app.exec_()  # and execute the app
   
if __name__ == '__main__':  # if we're running file directly and not importing it
    main()

