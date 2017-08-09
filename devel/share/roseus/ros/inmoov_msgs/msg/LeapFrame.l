;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::LeapFrame)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'LeapFrame (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::LEAPFRAME")
  (make-package "INMOOV_MSGS::LEAPFRAME"))

(in-package "ROS")
;;//! \htmlinclude LeapFrame.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass inmoov_msgs::LeapFrame
  :super ros::object
  :slots (_header _currentFrameRate _ID _r _s _t _timestamp _gestures _hands _pointables ))

(defmethod inmoov_msgs::LeapFrame
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:currentFrameRate __currentFrameRate) 0.0)
    ((:ID __ID) 0)
    ((:r __r) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:s __s) 0.0)
    ((:t __t) (instance geometry_msgs::Vector3 :init))
    ((:timestamp __timestamp) (instance ros::time :init))
    ((:gestures __gestures) (let (r) (dotimes (i 0) (push (instance inmoov_msgs::LeapGesture :init) r)) r))
    ((:hands __hands) (let (r) (dotimes (i 0) (push (instance inmoov_msgs::LeapHand :init) r)) r))
    ((:pointables __pointables) (let (r) (dotimes (i 0) (push (instance inmoov_msgs::LeapPointable :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _currentFrameRate (float __currentFrameRate))
   (setq _ID (round __ID))
   (setq _r __r)
   (setq _s (float __s))
   (setq _t __t)
   (setq _timestamp __timestamp)
   (setq _gestures __gestures)
   (setq _hands __hands)
   (setq _pointables __pointables)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:currentFrameRate
   (&optional __currentFrameRate)
   (if __currentFrameRate (setq _currentFrameRate __currentFrameRate)) _currentFrameRate)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:r
   (&rest __r)
   (if (keywordp (car __r))
       (send* _r __r)
     (progn
       (if __r (setq _r (car __r)))
       _r)))
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:t
   (&rest __t)
   (if (keywordp (car __t))
       (send* _t __t)
     (progn
       (if __t (setq _t (car __t)))
       _t)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:gestures
   (&rest __gestures)
   (if (keywordp (car __gestures))
       (send* _gestures __gestures)
     (progn
       (if __gestures (setq _gestures (car __gestures)))
       _gestures)))
  (:hands
   (&rest __hands)
   (if (keywordp (car __hands))
       (send* _hands __hands)
     (progn
       (if __hands (setq _hands (car __hands)))
       _hands)))
  (:pointables
   (&rest __pointables)
   (if (keywordp (car __pointables))
       (send* _pointables __pointables)
     (progn
       (if __pointables (setq _pointables (car __pointables)))
       _pointables)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _currentFrameRate
    8
    ;; uint32 _ID
    4
    ;; geometry_msgs/Vector3[] _r
    (apply #'+ (send-all _r :serialization-length)) 4
    ;; float64 _s
    8
    ;; geometry_msgs/Vector3 _t
    (send _t :serialization-length)
    ;; time _timestamp
    8
    ;; inmoov_msgs/LeapGesture[] _gestures
    (apply #'+ (send-all _gestures :serialization-length)) 4
    ;; inmoov_msgs/LeapHand[] _hands
    (apply #'+ (send-all _hands :serialization-length)) 4
    ;; inmoov_msgs/LeapPointable[] _pointables
    (apply #'+ (send-all _pointables :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _currentFrameRate
       (sys::poke _currentFrameRate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _ID
       (write-long _ID s)
     ;; geometry_msgs/Vector3[] _r
     (write-long (length _r) s)
     (dolist (elem _r)
       (send elem :serialize s)
       )
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _t
       (send _t :serialize s)
     ;; time _timestamp
       (write-long (send _timestamp :sec) s) (write-long (send _timestamp :nsec) s)
     ;; inmoov_msgs/LeapGesture[] _gestures
     (write-long (length _gestures) s)
     (dolist (elem _gestures)
       (send elem :serialize s)
       )
     ;; inmoov_msgs/LeapHand[] _hands
     (write-long (length _hands) s)
     (dolist (elem _hands)
       (send elem :serialize s)
       )
     ;; inmoov_msgs/LeapPointable[] _pointables
     (write-long (length _pointables) s)
     (dolist (elem _pointables)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _currentFrameRate
     (setq _currentFrameRate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3[] _r
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _r (let (r) (dotimes (i n) (push (instance geometry_msgs::Vector3 :init) r)) r))
     (dolist (elem- _r)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _t
     (send _t :deserialize buf ptr-) (incf ptr- (send _t :serialization-length))
   ;; time _timestamp
     (send _timestamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _timestamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; inmoov_msgs/LeapGesture[] _gestures
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _gestures (let (r) (dotimes (i n) (push (instance inmoov_msgs::LeapGesture :init) r)) r))
     (dolist (elem- _gestures)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; inmoov_msgs/LeapHand[] _hands
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _hands (let (r) (dotimes (i n) (push (instance inmoov_msgs::LeapHand :init) r)) r))
     (dolist (elem- _hands)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; inmoov_msgs/LeapPointable[] _pointables
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointables (let (r) (dotimes (i n) (push (instance inmoov_msgs::LeapPointable :init) r)) r))
     (dolist (elem- _pointables)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get inmoov_msgs::LeapFrame :md5sum-) "1be96930b5a5f7da0ae5f4ae85fd4442")
(setf (get inmoov_msgs::LeapFrame :datatype-) "inmoov_msgs/LeapFrame")
(setf (get inmoov_msgs::LeapFrame :definition-)
      "# Leap Motion v6 Frame JSON-based message
# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
#
#
Header header
float64 currentFrameRate
uint32 ID                       # Leap Motion documents this as a float, but that's not right
geometry_msgs/Vector3[] r      # Leap Motion documentation as Matrix (ambigous)
float64 s
geometry_msgs/Vector3 t
time timestamp
LeapGesture[] gestures
LeapHand[] hands
# interaction box not included
LeapPointable[] pointables

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: inmoov_msgs/LeapGesture
# Leap Motion v6 Gesture JSON-based submessage
# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
#
#
geometry_msgs/Point center          # array of floats (vector) -- circle only
geometry_msgs/Vector3 direction     # array of floats (vector) -- swipe, keyTap, screenTap only
uint32 duration                     # integer microseconds
uint32[] handIds                    # array of integers
uint32 ID                           # integer
geometry_msgs/Vector3 normal        # array of floats -- circle only
uint32[] pointableIds               # array
geometry_msgs/Point position        # array of floats (vector) -- swipe, keyTap, screenTap only
float64 progress                    # float -- circle, keyTap, screenTap only
float64 radius                      # float -- circle only
float64 speed                       # float -- swipe only
geometry_msgs/Point startPosition   # array of float (vector) -- swipe only
string state                        # string - one of \"start\", \"update\", \"stop\"
string gestureType                  # string - one of \"circle\", \"swipe\", \"keyTap\", \"screenTap\"

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: inmoov_msgs/LeapHand
# Leap Motion v6 Hand JSON-based submessage
# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
#
#
geometry_msgs/Vector3[3] armBasis           # the 3 basis vectors of the arm (array of vectors)
float64 armWidth
float64 confidence
geometry_msgs/Vector3 direction             # array of floats (vector)
geometry_msgs/Point elbow
float64 grabStrength
uint32 ID
geometry_msgs/Vector3 palmNormal
geometry_msgs/Point palmPosition
geometry_msgs/Vector3 palmVelocity
float64 pinchStrength
geometry_msgs/Vector3[3] r                  # Leap Motion documentation as Matrix (ambigous)
float64 s
geometry_msgs/Point sphereCenter
float64 sphereRadius
geometry_msgs/Point stabilizedPalmPosition
geometry_msgs/Vector3 t
float64 timeVisible
string handType                                 # string - one of \"right\", \"left\"
geometry_msgs/Point wrist

================================================================================
MSG: inmoov_msgs/LeapPointable
# Leap Motion v6 Pointable JSON-based submessage
# https://developer.leapmotion.com/documentation/v2/javascript/supplements/Leap_JSON.html#version-6
#
#

# Leap uses a two dimensional array for the bases but ROS messages only support one dimension
# Unroll the Leap bases into individual bone basis instead
# geometry_msgs/Vector3[3][] bases          # the 3 basis vectors for each bone, in index order, wrist to tip, metacarpal, proximal, intermediate, and distal.
geometry_msgs/Vector3[3] metacarpalBasis
geometry_msgs/Vector3[3] proximalBasis
geometry_msgs/Vector3[3] intermediateBasis
geometry_msgs/Vector3[3] distalBasis
geometry_msgs/Point btipPosition            # the position of the tip of the distal phalanx as an array of 3 floats.
geometry_msgs/Point carpPosition            # the position of the base of metacarpal bone as an array of 3 floats.
geometry_msgs/Point dipPosition             # the position of the base of the distal phalanx as an array of 3 floats.
geometry_msgs/Vector3 direction
bool extended
uint32 handId
uint32 ID
float64 length
geometry_msgs/Point mcpPosition             # a position vector as an array of 3 floating point numbers
geometry_msgs/Point pipPosition             # a position vector as an array of 3 floating point numbers
geometry_msgs/Point stabilizedTipPosition   # array of floats (vector)
float64 timeVisible
geometry_msgs/Point tipPosition             #  array of floats (vector)
geometry_msgs/Vector3 tipVelocity           #  array of floats (vector)
bool tool
float64 touchDistance
string touchZone                            # string - one of \"none\", \"hovering\", \"touching\"
uint32 pointableType                        # integer - 0 is thumb; 4 is pinky
float64 width

")



(provide :inmoov_msgs/LeapFrame "1be96930b5a5f7da0ae5f4ae85fd4442")


