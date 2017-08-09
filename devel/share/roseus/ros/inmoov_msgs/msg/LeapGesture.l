;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::LeapGesture)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'LeapGesture (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::LEAPGESTURE")
  (make-package "INMOOV_MSGS::LEAPGESTURE"))

(in-package "ROS")
;;//! \htmlinclude LeapGesture.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass inmoov_msgs::LeapGesture
  :super ros::object
  :slots (_center _direction _duration _handIds _ID _normal _pointableIds _position _progress _radius _speed _startPosition _state _gestureType ))

(defmethod inmoov_msgs::LeapGesture
  (:init
   (&key
    ((:center __center) (instance geometry_msgs::Point :init))
    ((:direction __direction) (instance geometry_msgs::Vector3 :init))
    ((:duration __duration) 0)
    ((:handIds __handIds) (make-array 0 :initial-element 0 :element-type :integer))
    ((:ID __ID) 0)
    ((:normal __normal) (instance geometry_msgs::Vector3 :init))
    ((:pointableIds __pointableIds) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:progress __progress) 0.0)
    ((:radius __radius) 0.0)
    ((:speed __speed) 0.0)
    ((:startPosition __startPosition) (instance geometry_msgs::Point :init))
    ((:state __state) "")
    ((:gestureType __gestureType) "")
    )
   (send-super :init)
   (setq _center __center)
   (setq _direction __direction)
   (setq _duration (round __duration))
   (setq _handIds __handIds)
   (setq _ID (round __ID))
   (setq _normal __normal)
   (setq _pointableIds __pointableIds)
   (setq _position __position)
   (setq _progress (float __progress))
   (setq _radius (float __radius))
   (setq _speed (float __speed))
   (setq _startPosition __startPosition)
   (setq _state (string __state))
   (setq _gestureType (string __gestureType))
   self)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:direction
   (&rest __direction)
   (if (keywordp (car __direction))
       (send* _direction __direction)
     (progn
       (if __direction (setq _direction (car __direction)))
       _direction)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:handIds
   (&optional __handIds)
   (if __handIds (setq _handIds __handIds)) _handIds)
  (:ID
   (&optional __ID)
   (if __ID (setq _ID __ID)) _ID)
  (:normal
   (&rest __normal)
   (if (keywordp (car __normal))
       (send* _normal __normal)
     (progn
       (if __normal (setq _normal (car __normal)))
       _normal)))
  (:pointableIds
   (&optional __pointableIds)
   (if __pointableIds (setq _pointableIds __pointableIds)) _pointableIds)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:progress
   (&optional __progress)
   (if __progress (setq _progress __progress)) _progress)
  (:radius
   (&optional __radius)
   (if __radius (setq _radius __radius)) _radius)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:startPosition
   (&rest __startPosition)
   (if (keywordp (car __startPosition))
       (send* _startPosition __startPosition)
     (progn
       (if __startPosition (setq _startPosition (car __startPosition)))
       _startPosition)))
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:gestureType
   (&optional __gestureType)
   (if __gestureType (setq _gestureType __gestureType)) _gestureType)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _center
    (send _center :serialization-length)
    ;; geometry_msgs/Vector3 _direction
    (send _direction :serialization-length)
    ;; uint32 _duration
    4
    ;; uint32[] _handIds
    (* 4    (length _handIds)) 4
    ;; uint32 _ID
    4
    ;; geometry_msgs/Vector3 _normal
    (send _normal :serialization-length)
    ;; uint32[] _pointableIds
    (* 4    (length _pointableIds)) 4
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _progress
    8
    ;; float64 _radius
    8
    ;; float64 _speed
    8
    ;; geometry_msgs/Point _startPosition
    (send _startPosition :serialization-length)
    ;; string _state
    4 (length _state)
    ;; string _gestureType
    4 (length _gestureType)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _center
       (send _center :serialize s)
     ;; geometry_msgs/Vector3 _direction
       (send _direction :serialize s)
     ;; uint32 _duration
       (write-long _duration s)
     ;; uint32[] _handIds
     (write-long (length _handIds) s)
     (dotimes (i (length _handIds))
       (write-long (elt _handIds i) s)
       )
     ;; uint32 _ID
       (write-long _ID s)
     ;; geometry_msgs/Vector3 _normal
       (send _normal :serialize s)
     ;; uint32[] _pointableIds
     (write-long (length _pointableIds) s)
     (dotimes (i (length _pointableIds))
       (write-long (elt _pointableIds i) s)
       )
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _progress
       (sys::poke _progress (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _radius
       (sys::poke _radius (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _startPosition
       (send _startPosition :serialize s)
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;; string _gestureType
       (write-long (length _gestureType) s) (princ _gestureType s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; geometry_msgs/Vector3 _direction
     (send _direction :deserialize buf ptr-) (incf ptr- (send _direction :serialization-length))
   ;; uint32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32[] _handIds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _handIds (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _handIds i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32 _ID
     (setq _ID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _normal
     (send _normal :deserialize buf ptr-) (incf ptr- (send _normal :serialization-length))
   ;; uint32[] _pointableIds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pointableIds (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _pointableIds i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _progress
     (setq _progress (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _radius
     (setq _radius (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _startPosition
     (send _startPosition :deserialize buf ptr-) (incf ptr- (send _startPosition :serialization-length))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gestureType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gestureType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get inmoov_msgs::LeapGesture :md5sum-) "967e671f82992095ab401d46b1c41311")
(setf (get inmoov_msgs::LeapGesture :datatype-) "inmoov_msgs/LeapGesture")
(setf (get inmoov_msgs::LeapGesture :definition-)
      "# Leap Motion v6 Gesture JSON-based submessage
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
")



(provide :inmoov_msgs/LeapGesture "967e671f82992095ab401d46b1c41311")


