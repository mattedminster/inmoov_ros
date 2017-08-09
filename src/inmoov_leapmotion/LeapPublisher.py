#! /usr/bin/env python

# Copyright (c) 2016-2017 Mike Jacobs
# 
# Permission is hereby granted, free of charge, to any person obtaining 
# a copy of this software and associated documentation files 
# (the "Software"), to deal in the Software without restriction, 
# including without limitation the rights to use, copy, modify, merge, 
# publish, distribute, sublicense, and/or sell copies of the Software, 
# and to permit persons to whom the Software is furnished to do so, 
# subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS 
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF 
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. 
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, 
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
# 
import time
import rospy
import websocket
import json
import datetime
from inmoov_msgs.msg import LeapFrame, LeapHand, LeapPointable, LeapGesture, Status
from inmoov_msgs.srv import RequestStatus, RequestStatusResponse
from geometry_msgs.msg import Point, Vector3

#from status.status_reporter import StatusReporter
#from command.command_constants import Component

NODE_NAME = 'LeapMotionPublisher'
#COMPONENT_NAME = Component['VR_CONTROLLER']
REQUEST_STATUS_SERVICE_NAME = 'vr_controller_status'
PUBLISHER_QUEUE_SIZE = 1
TOPIC = 'leapmotion' 
DEBUGGING = False

#launchParameters = rospy.get_param(NODE_NAME)

WEBSOCKET_HOST_URI = 'ws://localhost:6437/v6.json'
PUBLISH_CYCLE_TIME = 0.05
MONITOR_CYCLE_TIME = 1.0

class LeapPublisher(object):
    def __init__(self, url, debug=False):
        self.__debug = debug
        self.__status = {'socket': False, 'daemon': False, 'attached': False, 'streaming': False}
        self.lastHandCount = 0
        if(debug):
            print "###### D E B U G G I N G #######"
        rospy.init_node(NODE_NAME)
        rospy.on_shutdown(self.__onShutdown)
        self.__lastLeapPublish = rospy.Time.now()
        self.__publisher = rospy.Publisher(TOPIC, LeapFrame, tcp_nodelay=True, queue_size=PUBLISHER_QUEUE_SIZE)
        self.__statusService = rospy.Service(REQUEST_STATUS_SERVICE_NAME, RequestStatus, self.__handleStatusRequest)
        #websocket.enableTrace(debug)
        self.__socket = websocket.WebSocketApp(url,
                                on_open = self.__onOpen,
                                on_message = self.__onMessage,
                                on_error = self.__onError,
                                on_close = self.__onClose)
        self.__monitorTimer = rospy.Timer(rospy.Duration(MONITOR_CYCLE_TIME), self.__onMonitorTimerExpired, oneshot=False)
        #self.__statusReporter = StatusReporter(COMPONENT_NAME)
        
    def __onMonitorTimerExpired(self, event):
        #rospy.loginfo("LeapPublisher__onMonitorTimerExpired")
        now = rospy.Time.now()
        if(self.__status['streaming'] is True and ((now - self.__lastLeapPublish).to_sec() >= MONITOR_CYCLE_TIME)):
            # have not received any streaming data for a while
            self.__disconnected(False, False)
        
    def __handleStatusRequest(self, request):
        #connected = self.__isConnected()
        #if connected:
        #    status = Status.SEVERITY_INFO
        #    message = "The Leap Motion Controller is working"
        #else:
        #    status = Status.SEVERITY_WARNING
        #    message = "The Leap Motion Controller does not appear to be connected"
        
        response = self.lastHandCount
        return RequestStatusResponse(response)
    
    def __isConnected(self):
        connected = True
        for k, v in self.__status.items():
            connected = connected and v
        return connected
        
    def __getStatus(self):
        return self.__status
        
    def runForever(self):
        self.__socket.run_forever()

    def __asVector3List(self, aList):
        answer = []
        for t in aList:
            aTuple = self.__asVector3(t)
            answer.append(aTuple)
        return answer
    
    def __asPoint(self, aList):
        return self.__asTuple(Point(), aList)
    
    def __asVector3(self, aList):
        return self.__asTuple(Vector3(), aList)

    def __asTuple(self, t, aList):
        t.x = aList[0]
        t.y = aList[1]
        t.z = aList[2]
        return t
    
    def __createFrame(self, dictionary):
        frame = LeapFrame()
        frame.currentFrameRate = dictionary["currentFrameRate"]
        frame.ID = dictionary["id"]
        frame.r = self.__asVector3List(dictionary["r"])
        frame.s = dictionary["s"]
        frame.t = self.__asVector3(dictionary["t"])
         
        if "hands" in dictionary:
            frame.hands = self.__createHands(dictionary["hands"])
        if "gestures" in dictionary:
            frame.gestures = self.__createGestures(dictionary["gestures"])
        if "pointables" in dictionary:
            frame.pointables = self.__createPointables(dictionary["pointables"])
            
        frame.timestamp = rospy.Time.now() # Not using Leap timestamp, using when frame was complete
        
        return frame

    def __createHands(self, aList):
        hands = []
        for h in aList:
            hand = LeapHand()
            hand.armBasis = self.__asVector3List(h["armBasis"])
            hand.armWidth = h["armWidth"]
            hand.confidence = h["confidence"]
            hand.direction = self.__asVector3(h["direction"])
            hand.elbow = self.__asPoint(h["elbow"])
            hand.grabStrength = h["grabStrength"]
            hand.ID = h["id"]
            hand.palmNormal = self.__asVector3(h["palmNormal"])
            hand.palmPosition = self.__asPoint(h["palmPosition"])
            hand.palmVelocity = self.__asVector3(h["palmVelocity"])
            hand.pinchStrength = h["pinchStrength"]
            hand.r = self.__asVector3List(h["r"])
            hand.s = h["s"]
            hand.sphereCenter = self.__asPoint(h["sphereCenter"])
            hand.sphereRadius = h["sphereRadius"]
            hand.stabilizedPalmPosition = self.__asPoint(h["stabilizedPalmPosition"])
            hand.t = self.__asVector3(h["t"])
            hand.timeVisible = h["timeVisible"]
            hand.handType = h["type"]
            hand.wrist = self.__asPoint(h["wrist"])
            hands.append(hand)
        return hands

    def __createGestures(self, aList):
        # Not implemented yet
        gestures = []
        return gestures

    def __createPointables(self, aList):
        pointables = []
        for p in aList:
            pointable = LeapPointable()
            # The 3 basis vectors for each bone, in index order, wrist to tip, metacarpal, proximal, intermediate, and distal
            bases = p["bases"]
            pointable.metacarpalBasis = self.__asVector3List(bases[0])
            pointable.proximalBasis = self.__asVector3List(bases[1])
            pointable.intermediateBasis = self.__asVector3List(bases[2])
            pointable.distalBasis = self.__asVector3List(bases[3])
            pointable.btipPosition = self.__asPoint(p["btipPosition"])
            pointable.carpPosition = self.__asPoint(p["carpPosition"])
            pointable.dipPosition = self.__asPoint(p["dipPosition"])
            pointable.direction = self.__asVector3(p["direction"])
            pointable.extended = p["extended"]
            pointable.handId = p["handId"]
            pointable.ID = p["id"]
            pointable.length = p["length"]
            pointable.mcpPosition = self.__asPoint(p["mcpPosition"])
            pointable.pipPosition = self.__asPoint(p["pipPosition"])
            pointable.stabilizedTipPosition = self.__asPoint(p["stabilizedTipPosition"])
            pointable.timeVisible = p["timeVisible"]
            pointable.tipPosition = self.__asPoint(p["tipPosition"])
            pointable.tipVelocity = self.__asVector3(p["tipVelocity"])
            pointable.tool = p["tool"]
            pointable.touchDistance = p["touchDistance"]
            pointable.touchZone = p["touchZone"]
            pointable.pointableType = p["type"]
            pointable.width = p["width"]
            pointables.append(pointable)
        return pointables
        
    def __onMessageDebug(self, ws, message):
        dictionary = json.loads(message)
        if "hands" in dictionary and len(dictionary["hands"]) > 0:
            rospy.loginfo("{0} : {1}".format(dictionary["id"], datetime.datetime.now()))
        
    def __onMessage(self, ws, message):
        # limit frequency of published messages
        self.__status['streaming'] = True
        
        now = rospy.Time.now()
        if((now - self.__lastLeapPublish).to_sec() < PUBLISH_CYCLE_TIME): return
        
        self.__lastLeapPublish = now
        # message is a string
        dictionary = json.loads(message)
        # Do not publish the message if it is an device event or version message
        if "hands" in dictionary and len(dictionary["hands"]) > 0:
            self.lastHandCount = len(dictionary["hands"])
            frame = self.__createFrame(dictionary)
            frame.header.stamp = now # when the message was received from socket
            frame.header.seq = dictionary["id"]
            self.__publisher.publish(frame)
        else:
            self.lastHandCount = 0
            if "serviceVersion" in dictionary:
                # initial connection
                self.__connected()
                
            elif "event" in dictionary:
                # Does not appear to work for disconnects, only reconnects
                # Disconnects implemented with the monitor timer
                event = dictionary['event']
                state = event['state']
                if((self.__status['attached'] is True) and (state['attached'] is False)):
                    self.__disconnected(False, state['streaming'])
                elif((self.__status['attached'] is False) and (state['attached'] is True)):
                    self.__reconnected(True, state['streaming'])
    
    def __connected(self):
        #rospy.loginfo("LeapPublisher__connected")
        self.__status['daemon'] = True
        self.__status['attached'] = True
        self.__status['streaming'] = True
        self.__statusReporter.info(True, "The Leap Motion controller is now connected")
                        
    def __disconnected(self, attached, steaming):
        #rospy.loginfo("LeapPublisher__disconnected")
        self.__status['attached'] = attached
        self.__status['streaming'] = steaming
        self.__statusReporter.warning(False, "The Leap Motion controller is disconnected")
        
    def __reconnected(self, attached, steaming):
        #rospy.loginfo("LeapPublisher__reconnected")
        self.__status['attached'] = attached
        self.__status['streaming'] = steaming
        self.__statusReporter.info(True, "The Leap Motion controller has reconnected")
            
    def __onError(self, ws, error):
        rospy.logerr(error)

    def __onClose(self, ws):
        self.__status['socket'] = False
        rospy.loginfo("The Leap Motion websocket connection closed")

    def __onOpen(self, ws):
        self.__status['socket'] = True
        rospy.loginfo("The Leap Motion websocket connection opened successfully")
        
        backgroundJSON = json.dumps({"background":True})
        rospy.logdebug("Sending: {0}".format(backgroundJSON))
        self.__socket.send(backgroundJSON)
        
        gesturesJSON = json.dumps({"enableGestures": False})
        rospy.logdebug("Sending: {0}".format(gesturesJSON))
        self.__socket.send(gesturesJSON)
        
        # Not sure if this is supported through the websocket interface
        resourcesJSON = json.dumps({"low_resource_mode_enabled": True})
        rospy.logdebug("Sending: {0}".format(resourcesJSON))
        self.__socket.send(resourcesJSON)

    def __onShutdown(self):
        rospy.logdebug("onShutdown called")
        self.stop()
    
    def stop(self):
        rospy.logdebug("Stopping the Lead Motion Publisher")
        self.__monitorTimer.shutdown()
        self.__publisher.unregister()
        self.__socket.close()


if __name__ == "__main__":
    try:
        leapPublisher = LeapPublisher(WEBSOCKET_HOST_URI, DEBUGGING)
        rospy.logdebug("Leap Motion Publisher SUCCESSFULLY started")
        leapPublisher.runForever()
    except:
        rospy.logwarn("Leap Motion Publisher FAILED")
        import sys, traceback
        exc_type, exc_value, exc_traceback = sys.exc_info()
        traceback.print_exception(exc_type, exc_value, exc_traceback, limit=5, file=sys.stdout)