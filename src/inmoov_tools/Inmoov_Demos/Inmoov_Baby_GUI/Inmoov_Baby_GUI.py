#!/usr/bin/env python

import sys
import os
import rospy
import rospkg

import random
import subprocess
import threading 

import atexit

from std_msgs.msg import String

from python_qt_binding import loadUi
from python_qt_binding import QtGui
from python_qt_binding.QtWidgets import QWidget

from PyQt5 import QtWidgets, QtCore, uic
from PyQt5.QtWidgets import QWidget, QCheckBox, QLabel, QApplication, QVBoxLayout

#from lookgui import Ui_MainWindow

import os
import sys
from os.path import dirname, abspath



from time import sleep

# https://github.com/ColinDuquesnoy/QDarkStyleSheet
import qdarkstyle

# https://www.safaribooksonline.com/blog/2014/01/22/create-basic-gui-using-pyqt/
gui = os.path.join(os.path.dirname(__file__), 'Inmoov_Baby_GUI.ui')
form_class = uic.loadUiType(gui)[0]
cmdPub = rospy.Publisher("inmoov_command", String, queue_size=10)

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
        servo_init = False
        rospy.init_node('demo_manager', anonymous=True)
        self.btnBringUp.clicked.connect(self.bringUp)
        self.btnInmoovDemos.clicked.connect(self.InmoovDemos)
        self.btnStage.clicked.connect(self.Stage)
        self.btnRun.clicked.connect(self.Run)
        



    def inmoovDemosThread(self):
    	print "Starting thread"
    	os.system("roslaunch inmoov_tools Inmoov_Baby.launch &")
    	demo_init = False
    	while demo_init == False:
            if rospy.has_param("inmoov_demo_init"):
                demo_init = True
            else:
               sleep(4)
         #enable buttons
        self.btnStage.setEnabled(True)       
        self.btnRun.setEnabled(True)
    	print "Exiting"

    def InmoovDemos(self):
    	self.btnInmoovDemos.setEnabled(False)
        self.btnRun.setEnabled(True)
        self.btnStage.setEnabled(True)
    	thread = threading.Thread(name='inmoovDemosThread', target=self.inmoovDemosThread)
        
        thread.start()
        


    def Stage(self):
     	cmdPub.publish("stage") 

    def Run(self):
        cmdPub.publish("baby")

    def bringUpThread(self):
    	print "Starting Daemon"
    	os.system("roslaunch inmoov_bringup bringup.launch &")
    	servo_init = False
    	while servo_init == False:
            if rospy.has_param("inmoov_servo_init"):
                servo_init = True
            else:
               sleep(4)
         #enable buttons
        self.btnInmoovDemos.setEnabled(True)
    	print "Exiting"

    def bringUp(self):

    	self.btnBringUp.setEnabled(False)
        #subprocess.call("roslaunch inmoov_tools Inmoov_Demos.launch &", shell=True)
        thread = threading.Thread(name='bringUpThread', target=self.bringUpThread)
        
        thread.start()
        
        
        

       
        
        

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
    'QCheckBox::indicator:unchecked {background-color: rgb(130, 7, 7);}' + \
    'QCheckBox::indicator:checked {background-color: rgb(11, 145, 1);}'
def shutdown():
    print("closing inmoov manager")

def main():
    print("test")
    app = QtWidgets.QApplication(sys.argv)  # A new instance of QApplication
    app.setStyleSheet(qdarkstyle.load_stylesheet_pyqt5())
    form = ExampleApp()  # We set the form to be our ExampleApp (design)
    form.show()  # Show the form
    app.exec_()  # and execute the app
    
    rospy.on_shutdown(shutdown)
   
if __name__ == '__main__':  # if we're running file directly and not importing it
    main()
