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
from python_qt_binding.QtWidgets import QWidget

from PyQt5 import QtWidgets, QtCore, uic
from PyQt5.QtWidgets import QWidget, QCheckBox, QLabel, QApplication, QVBoxLayout, QToolTip

#from lookgui import Ui_MainWindow

from inmoov_msgs.msg import MotorStatus
from inmoov_msgs.msg import MotorCommand
from inmoov_msgs.srv import MotorParameter
from sensor_msgs.msg import JointState
from std_msgs.msg import Header

import os
import sys
from os.path import dirname, abspath

#hacky way to add include directory to sys path
sys.path.append(os.path.join(dirname(dirname(dirname(abspath(__file__)))),'include'))

from constants import PROTOCOL
from servos import Servo
from load_config_from_param import load_config_from_param

from time import sleep

# https://github.com/ColinDuquesnoy/QDarkStyleSheet
import qdarkstyle

# https://www.safaribooksonline.com/blog/2014/01/22/create-basic-gui-using-pyqt/
gui = os.path.join(os.path.dirname(__file__), 'enable_manager.ui')
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

        #self.setToolTip=QtGui.QCheckBox.setToolTip
        self.servos = load_config_from_param()

        self.bus = {}

        self.checkboxes = {}
        self.labels = {}

        self.motorcommand = MotorCommand()
        self.jointcommand = JointState()
        
        self.jointNames = []
        
        rospy.init_node('enable_manager', anonymous=True)

        print("INITIALIZED")

        for j,b in rospy.get_param('/inmoov/joints').items():
        
            number = rospy.get_param('/inmoov/joints/' + j + '/bus')
            busname = '/servobus/' + str(number)+ '/motorcommand'

            if not self.bus.has_key(number):
                self.bus[number] = rospy.Publisher(busname, MotorCommand, queue_size=40)
                rospy.loginfo('adding:  ' + busname)

        self.jointPublisher = rospy.Publisher("joint_command", JointState, queue_size=40)

        self.statusSubscriber = rospy.Subscriber("motor_status", MotorStatus, self.statusListener)

        self.btnEnableAll.clicked.connect(self.setEnableAll)
        self.btnDisableAll.clicked.connect(self.setDisableAll)

        print("INIT COMPLETE")  

        joints = rospy.get_param('/inmoov/joints')
        for name, s  in self.servos.items():
            print name
            chk = QCheckBox(name)
            chk.setText(name)
            chk.setStyleSheet(checkboxstylesheet)
            chk.setToolTip("Initializing...")
            
            #status = QLabel(name)

            #text = "Bus: " + bus + " Pin: " + pin + " Goal: " + msg.goal + " Position: " + msg.position +  " Present Speed: " + msg.presentspeed + " Max Speed: " + msg.maxSpeed + " Smooth: " + msg.smooth + " Moving: " + msg.moving + " Position Raw: " + msg.posraw + " Power: " + msg.power + " Debug 1: " + msg.Debug1 + " Debug 2: " + msg.Debug2 + " Debug 3: " + msg.Debug3
            #status.setText("Init")
            #self.statusLayout.addWidget(status)
            #self.labels[name] = status
            #chk.setEnabled(False)
            chk.stateChanged.connect(self.checkChanged)
            self.layout.addWidget(chk)
            self.checkboxes[name] = chk

 


    def statusListener(self, s):
        j = s.joint
        bus = str(s.bus)
        pin = str(s.servoPin)
        goal = str(s.goal)
        position = str(s.position)
        smooth = str(s.smooth)
        maxSpeed = str(s.maxSpeed)
        presentSpeed = str(s.presentspeed)
        moving = str(s.moving)
        posraw = str(s.posraw)
        power = str(s.power)
        Debug1 = str(s.Debug1)
        Debug2 = str(s.Debug2)
        Debug3 = str(s.Debug3)
        toolTipText = "<b>Bus:</b> " + bus + "<br><b> Pin:</b> " + pin + "<br><b> Goal:</b> " + goal + "<br><b> Position:</b> " + position +  "<br><b> Present Speed:</b> " + presentSpeed + "<br><b> Max Speed:</b> " + maxSpeed + "<br><b> Smooth:</b> " + smooth + "<br><b> Moving:</b> " + moving + "<br><b> Position Raw:</b> " + posraw + "<br><b> Power:</b> " + power + "<br><b> Debug 1:</b> " + Debug1 + "<br><b> Debug 2:</b> " + Debug2 + "<br><b> Debug 3:</b> " + Debug3


        chk = self.checkboxes[j]
        chk.blockSignals(True)
        chk.setChecked(s.enabled)
        chk.setToolTip(str(toolTipText))
        chk.blockSignals(False)

        #block signals
        #lbl = self.labels[j]
        #lbl.blockSignals(True)

        #lbl.setText(statusText)
        #lbl.blockSignals(False)
        return

    def checkChanged(self):
        sender = self.sender()
        print sender.text()

        s = self.servos[sender.text()]
        chk = self.checkboxes[sender.text()]

        motorcommand = MotorCommand()
        motorcommand.pin = int(s.servoPin)
        motorcommand.parameter = PROTOCOL.ENABLE
        motorcommand.value = sender.isChecked()
        #if chk.isChecked():
        #    motorcommand.value = True
        ##else:
        #    motorcommand.value = False
        #motorcommand.value = float(chk.isChecked())

        print 'checkChanged:  ' + sender.text() + 'to:  ' + str(sender.isChecked())

        self.bus[s.bus].publish(motorcommand)

    def setEnableAll(self):

        #self.statusSubscriber.unregister()

        #disconnect events
        #for j,chk in self.checkboxes.items():
        #    chk.disconnect()

        for j,s in self.servos.items():


            motorcommand = MotorCommand()
            motorcommand.pin = int(s.servoPin)
            motorcommand.parameter = PROTOCOL.ENABLE
            motorcommand.value = 1

            #print str(j)

            self.bus[s.bus].publish(motorcommand)
            #rospy.sleep(0.1)

        #self.statusSubscriber = rospy.Subscriber("motor_status", MotorStatus, self.statusListener)

    def setDisableAll(self):
        for j,s in self.servos.items():

            motorcommand = MotorCommand()
            motorcommand.pin = int(s.servoPin)
            motorcommand.parameter = PROTOCOL.ENABLE
            motorcommand.value = 0

            print j

            self.bus[s.bus].publish(motorcommand)
            #rospy.sleep(0.1)


    def closeEvent(self, event):
        self.enabled = False
        self.random = False
        print "GOODBYE!"

checkboxstylesheet = \
    'QCheckBox::indicator {' + \
    'width: 12px;' + \
    'height: 12px;' + \
    'border-style: outset;' + \
    'border-width: 1px;' + \
    'border-radius: 4px;' + \
    'border-color: rgb(125, 125, 125);' + \
    'border: 1px solid rgb(0,0,0);' + \
    'background-color: rgb(130, 7, 7);' + \
    '}' + \
	'QToolTip { #ffffff; background-color: #2a82da; border: 1px solid white;}' + \
    'QCheckBox::indicator:unchecked {background-color: rgb(130, 7, 7);}' + \
    'QCheckBox::indicator:checked {background-color: rgb(11, 145, 1);}'
def shutdown():
    print("closing inmoov manager")

def main():
    app = QtWidgets.QApplication(sys.argv)  # A new instance of QApplication
    app.setStyleSheet(qdarkstyle.load_stylesheet_pyqt5())
    form = ExampleApp()  # We set the form to be our ExampleApp (design)
    form.show()  # Show the form
    app.exec_()  # and execute the app
    rospy.on_shutdown(shutdown)
   
if __name__ == '__main__':  # if we're running file directly and not importing it
    main()

