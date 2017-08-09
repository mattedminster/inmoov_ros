;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::MotorStatus)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'MotorStatus (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::MOTORSTATUS")
  (make-package "INMOOV_MSGS::MOTORSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MotorStatus.msg.html


(defclass inmoov_msgs::MotorStatus
  :super ros::object
  :slots (_joint _bus _servoPin _goal _position _smooth _maxSpeed _presentspeed _moving _posraw _enabled _power _Debug1 _Debug2 _Debug3 ))

(defmethod inmoov_msgs::MotorStatus
  (:init
   (&key
    ((:joint __joint) "")
    ((:bus __bus) 0)
    ((:servoPin __servoPin) 0)
    ((:goal __goal) 0.0)
    ((:position __position) 0.0)
    ((:smooth __smooth) 0)
    ((:maxSpeed __maxSpeed) 0.0)
    ((:presentspeed __presentspeed) 0.0)
    ((:moving __moving) nil)
    ((:posraw __posraw) 0)
    ((:enabled __enabled) nil)
    ((:power __power) nil)
    ((:Debug1 __Debug1) 0.0)
    ((:Debug2 __Debug2) 0.0)
    ((:Debug3 __Debug3) 0.0)
    )
   (send-super :init)
   (setq _joint (string __joint))
   (setq _bus (round __bus))
   (setq _servoPin (round __servoPin))
   (setq _goal (float __goal))
   (setq _position (float __position))
   (setq _smooth (round __smooth))
   (setq _maxSpeed (float __maxSpeed))
   (setq _presentspeed (float __presentspeed))
   (setq _moving __moving)
   (setq _posraw (round __posraw))
   (setq _enabled __enabled)
   (setq _power __power)
   (setq _Debug1 (float __Debug1))
   (setq _Debug2 (float __Debug2))
   (setq _Debug3 (float __Debug3))
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:bus
   (&optional __bus)
   (if __bus (setq _bus __bus)) _bus)
  (:servoPin
   (&optional __servoPin)
   (if __servoPin (setq _servoPin __servoPin)) _servoPin)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:smooth
   (&optional __smooth)
   (if __smooth (setq _smooth __smooth)) _smooth)
  (:maxSpeed
   (&optional __maxSpeed)
   (if __maxSpeed (setq _maxSpeed __maxSpeed)) _maxSpeed)
  (:presentspeed
   (&optional __presentspeed)
   (if __presentspeed (setq _presentspeed __presentspeed)) _presentspeed)
  (:moving
   (&optional __moving)
   (if __moving (setq _moving __moving)) _moving)
  (:posraw
   (&optional __posraw)
   (if __posraw (setq _posraw __posraw)) _posraw)
  (:enabled
   (&optional __enabled)
   (if __enabled (setq _enabled __enabled)) _enabled)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:Debug1
   (&optional __Debug1)
   (if __Debug1 (setq _Debug1 __Debug1)) _Debug1)
  (:Debug2
   (&optional __Debug2)
   (if __Debug2 (setq _Debug2 __Debug2)) _Debug2)
  (:Debug3
   (&optional __Debug3)
   (if __Debug3 (setq _Debug3 __Debug3)) _Debug3)
  (:serialization-length
   ()
   (+
    ;; string _joint
    4 (length _joint)
    ;; uint8 _bus
    1
    ;; uint8 _servoPin
    1
    ;; float32 _goal
    4
    ;; float32 _position
    4
    ;; uint8 _smooth
    1
    ;; float32 _maxSpeed
    4
    ;; float32 _presentspeed
    4
    ;; bool _moving
    1
    ;; uint16 _posraw
    2
    ;; bool _enabled
    1
    ;; bool _power
    1
    ;; float32 _Debug1
    4
    ;; float32 _Debug2
    4
    ;; float32 _Debug3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint
       (write-long (length _joint) s) (princ _joint s)
     ;; uint8 _bus
       (write-byte _bus s)
     ;; uint8 _servoPin
       (write-byte _servoPin s)
     ;; float32 _goal
       (sys::poke _goal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _smooth
       (write-byte _smooth s)
     ;; float32 _maxSpeed
       (sys::poke _maxSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _presentspeed
       (sys::poke _presentspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _moving
       (if _moving (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _posraw
       (write-word _posraw s)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _power
       (if _power (write-byte -1 s) (write-byte 0 s))
     ;; float32 _Debug1
       (sys::poke _Debug1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Debug2
       (sys::poke _Debug2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Debug3
       (sys::poke _Debug3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _bus
     (setq _bus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _servoPin
     (setq _servoPin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _goal
     (setq _goal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _smooth
     (setq _smooth (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _maxSpeed
     (setq _maxSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _presentspeed
     (setq _presentspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _moving
     (setq _moving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _posraw
     (setq _posraw (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _power
     (setq _power (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _Debug1
     (setq _Debug1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Debug2
     (setq _Debug2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Debug3
     (setq _Debug3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get inmoov_msgs::MotorStatus :md5sum-) "9168929a0bdbdd12367c31a81e54ef98")
(setf (get inmoov_msgs::MotorStatus :datatype-) "inmoov_msgs/MotorStatus")
(setf (get inmoov_msgs::MotorStatus :definition-)
      "string   joint          # joint name for status frame (populated in motor_status_dispatcher)
uint8    bus            # bus source for status frame (populated in motor_status_dispatcher)
uint8    servoPin       # motor id 0-11
float32  goal           # command position
float32  position       # current sensed position
uint8    smooth         #smooth setting servo is set to
float32  maxSpeed	#max speed setting
float32  presentspeed   # calculated rotational speed
bool     moving         # is servo moving?
uint16   posraw         # raw position sensor value
bool     enabled        # is servo enabled?
bool     power          # does servo have power?
float32  Debug1		#Debug 1
float32  Debug2		#Debug 2
float32  Debug3		#Debug 3



")



(provide :inmoov_msgs/MotorStatus "9168929a0bdbdd12367c31a81e54ef98")


