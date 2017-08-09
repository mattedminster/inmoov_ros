;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::LeapHand)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'LeapHand (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::LEAPHAND")
  (make-package "INMOOV_MSGS::LEAPHAND"))

(in-package "ROS")
;;//! \htmlinclude LeapHand.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass inmoov_msgs::LeapHand
  :super ros::object
  :slots (_armBasis _armWidth _confidence _direction _elbow _grabStrength _ID _palmNormal _palmPosition _palmVelocity _pinchStrength _r _s _sphereCenter _sphereRadius _stabilizedPalmPosition _t _timeVisible _handType _wrist ))

(defmethod inmoov_msgs::LeapHand
  (:init
   (&key
    ((:armBasis __armBasis) (let (r) (dotimes (i 3) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:armWidth __armWidth) 0.0)
    ((:confidence __confidence) 0.0)
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:elbow __elbow) (instance geometry_msgs::Point :init))
    ((:grabStrength __grabStrength) 0.0)
    ((:ID __ID) 0)
    ((:palmNormal __palmNormal) (instance geometry_msgs::Vector3 :init))
    ((:palmPosition __palmPosition) (instance geometry_msgs::Point :init))
    ((:palmVelocity __palmVelocity) (instance geometry_msgs::Vector3 :init))
    ((:pinchStrength __pinchStrength) 0.0)
    ((:r __r) (let (r) (dotimes (i 3) (push (instance geometry_msgs::Vector3 :init) r)) r))
    ((:s __s) 0.0)
    ((:sphereCenter __sphereCenter) (instance geometry_msgs::Point :init))
    ((:sphereRadius __sphereRadius) 0.0)
    ((:stabilizedPalmPosition __stabilizedPalmPosition) (instance geometry_msgs::Point :init))
    ((:t __t) (instance geometry_msgs::Vector3 :init))
    ((:timeVisible __timeVisible) 0.0)
    ((:handType __handType) "")
    ((:wrist __wrist) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _armBasis __armBasis)
   (setq _armWidth (float __armWidth))
   (setq _confidence (float __confidence))
   (setq _direction __direction)
   (setq _elbow __elbow)
   (setq _grabStrength (float __grabStrength))
   (setq _ID (round __ID))
   (setq _palmNormal __palmNormal)
   (setq _palmPosition __palmPosition)
   (setq _palmVelocity __palmVelocity)
   (setq _pinchStrength (float __pinchStrength))
   (setq _r __r)
   (setq _s (float __s))
   (setq _sphereCenter __sphereCenter)
   (setq _sphereRadius (float __sphereRadius))
   (setq _stabilizedPalmPosition __stabilizedPalmPosition)
   (setq _t __t)
   (setq _timeVisible (float __timeVisible))
   (setq _handType (string __handType))
   (setq _wrist __wrist)
   self)
  (:armBasis
   (&rest __armBasis)
   (if (keywordp (car __armBasis))
       (send* _armBasis __armBasis)
     (progn
       (if __armBasis (setq _armBasis (car __armBasis)))
       _armBasis)))
  (:armWidth
   (&optional __armWidth)
   (if __armWidth (setq _armWidth __armWidth)) _armWidth)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:elbow
   (&rest __elbow)
   (if (keywordp (car __elbow))
       (send* _elbow __elbow)
     (progn
       (if __elbow (setq _elbow (car __elbow)))
       _elbow)))
  (:grabStrength
   (&optional __grabStrength)
   (if __grabStrength (setq _grabStrength __grabStrength)) _grabStrength)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:palmNormal
   (&rest __palmNormal)
   (if (keywordp (car __palmNormal))
       (send* _palmNormal __palmNormal)
     (progn
       (if __palmNormal (setq _palmNormal (car __palmNormal)))
       _palmNormal)))
  (:palmPosition
   (&rest __palmPosition)
   (if (keywordp (car __palmPosition))
       (send* _palmPosition __palmPosition)
     (progn
       (if __palmPosition (setq _palmPosition (car __palmPosition)))
       _palmPosition)))
  (:palmVelocity
   (&rest __palmVelocity)
   (if (keywordp (car __palmVelocity))
       (send* _palmVelocity __palmVelocity)
     (progn
       (if __palmVelocity (setq _palmVelocity (car __palmVelocity)))
       _palmVelocity)))
  (:pinchStrength
   (&optional __pinchStrength)
   (if __pinchStrength (setq _pinchStrength __pinchStrength)) _pinchStrength)
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
  (:sphereCenter
   (&rest __sphereCenter)
   (if (keywordp (car __sphereCenter))
       (send* _sphereCenter __sphereCenter)
     (progn
       (if __sphereCenter (setq _sphereCenter (car __sphereCenter)))
       _sphereCenter)))
  (:sphereRadius
   (&optional __sphereRadius)
   (if __sphereRadius (setq _sphereRadius __sphereRadius)) _sphereRadius)
  (:stabilizedPalmPosition
   (&rest __stabilizedPalmPosition)
   (if (keywordp (car __stabilizedPalmPosition))
       (send* _stabilizedPalmPosition __stabilizedPalmPosition)
     (progn
       (if __stabilizedPalmPosition (setq _stabilizedPalmPosition (car __stabilizedPalmPosition)))
       _stabilizedPalmPosition)))
  (:t
   (&rest __t)
   (if (keywordp (car __t))
       (send* _t __t)
     (progn
       (if __t (setq _t (car __t)))
       _t)))
  (:timeVisible
   (&optional __timeVisible)
   (if __timeVisible (setq _timeVisible __timeVisible)) _timeVisible)
  (:handType
   (&optional __handType)
   (if __handType (setq _handType __handType)) _handType)
  (:wrist
   (&rest __wrist)
   (if (keywordp (car __wrist))
       (send* _wrist __wrist)
     (progn
       (if __wrist (setq _wrist (car __wrist)))
       _wrist)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Vector3[3] _armBasis
    (apply #'+ (send-all _armBasis :serialization-length))
    ;; float64 _armWidth
    8
    ;; float64 _confidence
    8
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; geometry_msgs/Point _elbow
    (send _elbow :serialization-length)
    ;; float64 _grabStrength
    8
    ;; uint32 _ID
    4
    ;; geometry_msgs/Vector3 _palmNormal
    (send _palmNormal :serialization-length)
    ;; geometry_msgs/Point _palmPosition
    (send _palmPosition :serialization-length)
    ;; geometry_msgs/Vector3 _palmVelocity
    (send _palmVelocity :serialization-length)
    ;; float64 _pinchStrength
    8
    ;; geometry_msgs/Vector3[3] _r
    (apply #'+ (send-all _r :serialization-length))
    ;; float64 _s
    8
    ;; geometry_msgs/Point _sphereCenter
    (send _sphereCenter :serialization-length)
    ;; float64 _sphereRadius
    8
    ;; geometry_msgs/Point _stabilizedPalmPosition
    (send _stabilizedPalmPosition :serialization-length)
    ;; geometry_msgs/Vector3 _t
    (send _t :serialization-length)
    ;; float64 _timeVisible
    8
    ;; string _handType
    4 (length _handType)
    ;; geometry_msgs/Point _wrist
    (send _wrist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Vector3[3] _armBasis
     (dolist (elem _armBasis)
       (send elem :serialize s)
       )
     ;; float64 _armWidth
       (sys::poke _armWidth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; geometry_msgs/Point _elbow
       (send _elbow :serialize s)
     ;; float64 _grabStrength
       (sys::poke _grabStrength (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint32 _ID
       (write-long _ID s)
     ;; geometry_msgs/Vector3 _palmNormal
       (send _palmNormal :serialize s)
     ;; geometry_msgs/Point _palmPosition
       (send _palmPosition :serialize s)
     ;; geometry_msgs/Vector3 _palmVelocity
       (send _palmVelocity :serialize s)
     ;; float64 _pinchStrength
       (sys::poke _pinchStrength (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3[3] _r
     (dolist (elem _r)
       (send elem :serialize s)
       )
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _sphereCenter
       (send _sphereCenter :serialize s)
     ;; float64 _sphereRadius
       (sys::poke _sphereRadius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _stabilizedPalmPosition
       (send _stabilizedPalmPosition :serialize s)
     ;; geometry_msgs/Vector3 _t
       (send _t :serialize s)
     ;; float64 _timeVisible
       (sys::poke _timeVisible (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _handType
       (write-long (length _handType) s) (princ _handType s)
     ;; geometry_msgs/Point _wrist
       (send _wrist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Vector3[3] _armBasis
   (dotimes (i 3)
     (send (elt _armBasis i) :deserialize buf ptr-) (incf ptr- (send (elt _armBasis i) :serialization-length))
     )
   ;; float64 _armWidth
     (setq _armWidth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; geometry_msgs/Point _elbow
     (send _elbow :deserialize buf ptr-) (incf ptr- (send _elbow :serialization-length))
   ;; float64 _grabStrength
     (setq _grabStrength (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _palmNormal
     (send _palmNormal :deserialize buf ptr-) (incf ptr- (send _palmNormal :serialization-length))
   ;; geometry_msgs/Point _palmPosition
     (send _palmPosition :deserialize buf ptr-) (incf ptr- (send _palmPosition :serialization-length))
   ;; geometry_msgs/Vector3 _palmVelocity
     (send _palmVelocity :deserialize buf ptr-) (incf ptr- (send _palmVelocity :serialization-length))
   ;; float64 _pinchStrength
     (setq _pinchStrength (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3[3] _r
   (dotimes (i 3)
     (send (elt _r i) :deserialize buf ptr-) (incf ptr- (send (elt _r i) :serialization-length))
     )
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _sphereCenter
     (send _sphereCenter :deserialize buf ptr-) (incf ptr- (send _sphereCenter :serialization-length))
   ;; float64 _sphereRadius
     (setq _sphereRadius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _stabilizedPalmPosition
     (send _stabilizedPalmPosition :deserialize buf ptr-) (incf ptr- (send _stabilizedPalmPosition :serialization-length))
   ;; geometry_msgs/Vector3 _t
     (send _t :deserialize buf ptr-) (incf ptr- (send _t :serialization-length))
   ;; float64 _timeVisible
     (setq _timeVisible (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _handType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _handType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _wrist
     (send _wrist :deserialize buf ptr-) (incf ptr- (send _wrist :serialization-length))
   ;;
   self)
  )

(setf (get inmoov_msgs::LeapHand :md5sum-) "e1f168193e08481c556346f6b4c70f16")
(setf (get inmoov_msgs::LeapHand :datatype-) "inmoov_msgs/LeapHand")
(setf (get inmoov_msgs::LeapHand :definition-)
      "# Leap Motion v6 Hand JSON-based submessage
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



(provide :inmoov_msgs/LeapHand "e1f168193e08481c556346f6b4c70f16")


