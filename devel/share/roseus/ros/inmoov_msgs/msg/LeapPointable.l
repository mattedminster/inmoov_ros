;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::LeapPointable)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'LeapPointable (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::LEAPPOINTABLE")
  (make-package "INMOOV_MSGS::LEAPPOINTABLE"))

(in-package "ROS")
;;//! \htmlinclude LeapPointable.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass inmoov_msgs::LeapPointable
  :super ros::object
  :slots (_metacarpalBasis _proximalBasis _intermediateBasis _distalBasis _btipPosition _carpPosition _dipPosition _direction _extended _handId _ID _length _mcpPosition _pipPosition _stabilizedTipPosition _timeVisible _tipPosition _tipVelocity _tool _touchDistance _touchZone _pointableType _width ))

(defmethod inmoov_msgs::LeapPointable
  (:init
   (&key
    ((:metacarpalBasis __metacarpalBasis) (let (r) (dotimes (i 3) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:proximalBasis __proximalBasis) (let (r) (dotimes (i 3) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:intermediateBasis __intermediateBasis) (let (r) (dotimes (i 3) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:distalBasis __distalBasis) (let (r) (dotimes (i 3) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:btipPosition __btipPosition) (instance geometry_msgs::Point :init))
    ((:carpPosition __carpPosition) (instance geometry_msgs::Point :init))
    ((:dipPosition __dipPosition) (instance geometry_msgs::Point :init))
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:extended __extended) nil)
    ((:handId __handId) 0)
    ((:ID __ID) 0)
    ((:length __length) 0.0)
    ((:mcpPosition __mcpPosition) (instance geometry_msgs::Point :init))
    ((:pipPosition __pipPosition) (instance geometry_msgs::Point :init))
    ((:stabilizedTipPosition __stabilizedTipPosition) (instance geometry_msgs::Point :init))
    ((:timeVisible __timeVisible) 0.0)
    ((:tipPosition __tipPosition) (instance geometry_msgs::Point :init))
    ((:tipVelocity __tipVelocity) (instance geometry_msgs::Vector3 :init))
    ((:tool __tool) nil)
    ((:touchDistance __touchDistance) 0.0)
    ((:touchZone __touchZone) "")
    ((:pointableType __pointableType) 0)
    ((:width __width) 0.0)
    )
   (send-super :init)
   (setq _metacarpalBasis __metacarpalBasis)
   (setq _proximalBasis __proximalBasis)
   (setq _intermediateBasis __intermediateBasis)
   (setq _distalBasis __distalBasis)
   (setq _btipPosition __btipPosition)
   (setq _carpPosition __carpPosition)
   (setq _dipPosition __dipPosition)
   (setq _direction __direction)
   (setq _extended __extended)
   (setq _handId (round __handId))
   (setq _ID (round __ID))
   (setq _length (float __length))
   (setq _mcpPosition __mcpPosition)
   (setq _pipPosition __pipPosition)
   (setq _stabilizedTipPosition __stabilizedTipPosition)
   (setq _timeVisible (float __timeVisible))
   (setq _tipPosition __tipPosition)
   (setq _tipVelocity __tipVelocity)
   (setq _tool __tool)
   (setq _touchDistance (float __touchDistance))
   (setq _touchZone (string __touchZone))
   (setq _pointableType (round __pointableType))
   (setq _width (float __width))
   self)
  (:metacarpalBasis
   (&rest __metacarpalBasis)
   (if (keywordp (car __metacarpalBasis))
       (send* _metacarpalBasis __metacarpalBasis)
     (progn
       (if __metacarpalBasis (setq _metacarpalBasis (car __metacarpalBasis)))
       _metacarpalBasis)))
  (:proximalBasis
   (&rest __proximalBasis)
   (if (keywordp (car __proximalBasis))
       (send* _proximalBasis __proximalBasis)
     (progn
       (if __proximalBasis (setq _proximalBasis (car __proximalBasis)))
       _proximalBasis)))
  (:intermediateBasis
   (&rest __intermediateBasis)
   (if (keywordp (car __intermediateBasis))
       (send* _intermediateBasis __intermediateBasis)
     (progn
       (if __intermediateBasis (setq _intermediateBasis (car __intermediateBasis)))
       _intermediateBasis)))
  (:distalBasis
   (&rest __distalBasis)
   (if (keywordp (car __distalBasis))
       (send* _distalBasis __distalBasis)
     (progn
       (if __distalBasis (setq _distalBasis (car __distalBasis)))
       _distalBasis)))
  (:btipPosition
   (&rest __btipPosition)
   (if (keywordp (car __btipPosition))
       (send* _btipPosition __btipPosition)
     (progn
       (if __btipPosition (setq _btipPosition (car __btipPosition)))
       _btipPosition)))
  (:carpPosition
   (&rest __carpPosition)
   (if (keywordp (car __carpPosition))
       (send* _carpPosition __carpPosition)
     (progn
       (if __carpPosition (setq _carpPosition (car __carpPosition)))
       _carpPosition)))
  (:dipPosition
   (&rest __dipPosition)
   (if (keywordp (car __dipPosition))
       (send* _dipPosition __dipPosition)
     (progn
       (if __dipPosition (setq _dipPosition (car __dipPosition)))
       _dipPosition)))
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:extended
   (&optional __extended)
   (if __extended (setq _extended __extended)) _extended)
  (:handId
   (&optional __handId)
   (if __handId (setq _handId __handId)) _handId)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:mcpPosition
   (&rest __mcpPosition)
   (if (keywordp (car __mcpPosition))
       (send* _mcpPosition __mcpPosition)
     (progn
       (if __mcpPosition (setq _mcpPosition (car __mcpPosition)))
       _mcpPosition)))
  (:pipPosition
   (&rest __pipPosition)
   (if (keywordp (car __pipPosition))
       (send* _pipPosition __pipPosition)
     (progn
       (if __pipPosition (setq _pipPosition (car __pipPosition)))
       _pipPosition)))
  (:stabilizedTipPosition
   (&rest __stabilizedTipPosition)
   (if (keywordp (car __stabilizedTipPosition))
       (send* _stabilizedTipPosition __stabilizedTipPosition)
     (progn
       (if __stabilizedTipPosition (setq _stabilizedTipPosition (car __stabilizedTipPosition)))
       _stabilizedTipPosition)))
  (:timeVisible
   (&optional __timeVisible)
   (if __timeVisible (setq _timeVisible __timeVisible)) _timeVisible)
  (:tipPosition
   (&rest __tipPosition)
   (if (keywordp (car __tipPosition))
       (send* _tipPosition __tipPosition)
     (progn
       (if __tipPosition (setq _tipPosition (car __tipPosition)))
       _tipPosition)))
  (:tipVelocity
   (&rest __tipVelocity)
   (if (keywordp (car __tipVelocity))
       (send* _tipVelocity __tipVelocity)
     (progn
       (if __tipVelocity (setq _tipVelocity (car __tipVelocity)))
       _tipVelocity)))
  (:tool
   (&optional __tool)
   (if __tool (setq _tool __tool)) _tool)
  (:touchDistance
   (&optional __touchDistance)
   (if __touchDistance (setq _touchDistance __touchDistance)) _touchDistance)
  (:touchZone
   (&optional __touchZone)
   (if __touchZone (setq _touchZone __touchZone)) _touchZone)
  (:pointableType
   (&optional __pointableType)
   (if __pointableType (setq _pointableType __pointableType)) _pointableType)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3[3] _metacarpalBasis
    (apply #'+ (send-all _metacarpalBasis :serialization-length))
    ;; geometry_msgs/Vector3[3] _proximalBasis
    (apply #'+ (send-all _proximalBasis :serialization-length))
    ;; geometry_msgs/Vector3[3] _intermediateBasis
    (apply #'+ (send-all _intermediateBasis :serialization-length))
    ;; geometry_msgs/Vector3[3] _distalBasis
    (apply #'+ (send-all _distalBasis :serialization-length))
    ;; geometry_msgs/Point _btipPosition
    (send _btipPosition :serialization-length)
    ;; geometry_msgs/Point _carpPosition
    (send _carpPosition :serialization-length)
    ;; geometry_msgs/Point _dipPosition
    (send _dipPosition :serialization-length)
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; bool _extended
    1
    ;; uint32 _handId
    4
    ;; uint32 _ID
    4
    ;; float64 _length
    8
    ;; geometry_msgs/Point _mcpPosition
    (send _mcpPosition :serialization-length)
    ;; geometry_msgs/Point _pipPosition
    (send _pipPosition :serialization-length)
    ;; geometry_msgs/Point _stabilizedTipPosition
    (send _stabilizedTipPosition :serialization-length)
    ;; float64 _timeVisible
    8
    ;; geometry_msgs/Point _tipPosition
    (send _tipPosition :serialization-length)
    ;; geometry_msgs/Vector3 _tipVelocity
    (send _tipVelocity :serialization-length)
    ;; bool _tool
    1
    ;; float64 _touchDistance
    8
    ;; string _touchZone
    4 (length _touchZone)
    ;; uint32 _pointableType
    4
    ;; float64 _width
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3[3] _metacarpalBasis
     (dolist (elem _metacarpalBasis)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[3] _proximalBasis
     (dolist (elem _proximalBasis)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[3] _intermediateBasis
     (dolist (elem _intermediateBasis)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Vector3[3] _distalBasis
     (dolist (elem _distalBasis)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point _btipPosition
       (send _btipPosition :serialize s)
     ;; geometry_msgs/Point _carpPosition
       (send _carpPosition :serialize s)
     ;; geometry_msgs/Point _dipPosition
       (send _dipPosition :serialize s)
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; bool _extended
       (if _extended (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _handId
       (write-long _handId s)
     ;; uint32 _ID
       (write-long _ID s)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _mcpPosition
       (send _mcpPosition :serialize s)
     ;; geometry_msgs/Point _pipPosition
       (send _pipPosition :serialize s)
     ;; geometry_msgs/Point _stabilizedTipPosition
       (send _stabilizedTipPosition :serialize s)
     ;; float64 _timeVisible
       (sys::poke _timeVisible (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _tipPosition
       (send _tipPosition :serialize s)
     ;; geometry_msgs/Vector3 _tipVelocity
       (send _tipVelocity :serialize s)
     ;; bool _tool
       (if _tool (write-byte -1 s) (write-byte 0 s))
     ;; float64 _touchDistance
       (sys::poke _touchDistance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _touchZone
       (write-long (length _touchZone) s) (princ _touchZone s)
     ;; uint32 _pointableType
       (write-long _pointableType s)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3[3] _metacarpalBasis
   (dotimes (i 3)
     (send (elt _metacarpalBasis i) :deserialize buf ptr-) (incf ptr- (send (elt _metacarpalBasis i) :serialization-length))
     )
   ;; geometry_msgs/Vector3[3] _proximalBasis
   (dotimes (i 3)
     (send (elt _proximalBasis i) :deserialize buf ptr-) (incf ptr- (send (elt _proximalBasis i) :serialization-length))
     )
   ;; geometry_msgs/Vector3[3] _intermediateBasis
   (dotimes (i 3)
     (send (elt _intermediateBasis i) :deserialize buf ptr-) (incf ptr- (send (elt _intermediateBasis i) :serialization-length))
     )
   ;; geometry_msgs/Vector3[3] _distalBasis
   (dotimes (i 3)
     (send (elt _distalBasis i) :deserialize buf ptr-) (incf ptr- (send (elt _distalBasis i) :serialization-length))
     )
   ;; geometry_msgs/Point _btipPosition
     (send _btipPosition :deserialize buf ptr-) (incf ptr- (send _btipPosition :serialization-length))
   ;; geometry_msgs/Point _carpPosition
     (send _carpPosition :deserialize buf ptr-) (incf ptr- (send _carpPosition :serialization-length))
   ;; geometry_msgs/Point _dipPosition
     (send _dipPosition :deserialize buf ptr-) (incf ptr- (send _dipPosition :serialization-length))
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; bool _extended
     (setq _extended (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _handId
     (setq _handId (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _mcpPosition
     (send _mcpPosition :deserialize buf ptr-) (incf ptr- (send _mcpPosition :serialization-length))
   ;; geometry_msgs/Point _pipPosition
     (send _pipPosition :deserialize buf ptr-) (incf ptr- (send _pipPosition :serialization-length))
   ;; geometry_msgs/Point _stabilizedTipPosition
     (send _stabilizedTipPosition :deserialize buf ptr-) (incf ptr- (send _stabilizedTipPosition :serialization-length))
   ;; float64 _timeVisible
     (setq _timeVisible (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _tipPosition
     (send _tipPosition :deserialize buf ptr-) (incf ptr- (send _tipPosition :serialization-length))
   ;; geometry_msgs/Vector3 _tipVelocity
     (send _tipVelocity :deserialize buf ptr-) (incf ptr- (send _tipVelocity :serialization-length))
   ;; bool _tool
     (setq _tool (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _touchDistance
     (setq _touchDistance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _touchZone
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _touchZone (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _pointableType
     (setq _pointableType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get inmoov_msgs::LeapPointable :md5sum-) "17349b2abd8a7a1f31586b0c52c91cb7")
(setf (get inmoov_msgs::LeapPointable :datatype-) "inmoov_msgs/LeapPointable")
(setf (get inmoov_msgs::LeapPointable :definition-)
      "# Leap Motion v6 Pointable JSON-based submessage
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :inmoov_msgs/LeapPointable "17349b2abd8a7a1f31586b0c52c91cb7")


