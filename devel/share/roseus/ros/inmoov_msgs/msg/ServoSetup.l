;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::ServoSetup)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'ServoSetup (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::SERVOSETUP")
  (make-package "INMOOV_MSGS::SERVOSETUP"))

(in-package "ROS")
;;//! \htmlinclude ServoSetup.msg.html


(defclass inmoov_msgs::ServoSetup
  :super ros::object
  :slots (_servoPin _sensorPin _minAngle _maxAngle _rest _minPulse _maxPulse _minSensor _maxSensor _smoothing _maxSpeed ))

(defmethod inmoov_msgs::ServoSetup
  (:init
   (&key
    ((:servoPin __servoPin) 0)
    ((:sensorPin __sensorPin) 0)
    ((:minAngle __minAngle) 0.0)
    ((:maxAngle __maxAngle) 0.0)
    ((:rest __rest) 0.0)
    ((:minPulse __minPulse) 0.0)
    ((:maxPulse __maxPulse) 0.0)
    ((:minSensor __minSensor) 0.0)
    ((:maxSensor __maxSensor) 0.0)
    ((:smoothing __smoothing) 0)
    ((:maxSpeed __maxSpeed) 0.0)
    )
   (send-super :init)
   (setq _servoPin (round __servoPin))
   (setq _sensorPin (round __sensorPin))
   (setq _minAngle (float __minAngle))
   (setq _maxAngle (float __maxAngle))
   (setq _rest (float __rest))
   (setq _minPulse (float __minPulse))
   (setq _maxPulse (float __maxPulse))
   (setq _minSensor (float __minSensor))
   (setq _maxSensor (float __maxSensor))
   (setq _smoothing (round __smoothing))
   (setq _maxSpeed (float __maxSpeed))
   self)
  (:servoPin
   (&optional __servoPin)
   (if __servoPin (setq _servoPin __servoPin)) _servoPin)
  (:sensorPin
   (&optional __sensorPin)
   (if __sensorPin (setq _sensorPin __sensorPin)) _sensorPin)
  (:minAngle
   (&optional __minAngle)
   (if __minAngle (setq _minAngle __minAngle)) _minAngle)
  (:maxAngle
   (&optional __maxAngle)
   (if __maxAngle (setq _maxAngle __maxAngle)) _maxAngle)
  (:rest
   (&optional __rest)
   (if __rest (setq _rest __rest)) _rest)
  (:minPulse
   (&optional __minPulse)
   (if __minPulse (setq _minPulse __minPulse)) _minPulse)
  (:maxPulse
   (&optional __maxPulse)
   (if __maxPulse (setq _maxPulse __maxPulse)) _maxPulse)
  (:minSensor
   (&optional __minSensor)
   (if __minSensor (setq _minSensor __minSensor)) _minSensor)
  (:maxSensor
   (&optional __maxSensor)
   (if __maxSensor (setq _maxSensor __maxSensor)) _maxSensor)
  (:smoothing
   (&optional __smoothing)
   (if __smoothing (setq _smoothing __smoothing)) _smoothing)
  (:maxSpeed
   (&optional __maxSpeed)
   (if __maxSpeed (setq _maxSpeed __maxSpeed)) _maxSpeed)
  (:serialization-length
   ()
   (+
    ;; int32 _servoPin
    4
    ;; int32 _sensorPin
    4
    ;; float32 _minAngle
    4
    ;; float32 _maxAngle
    4
    ;; float32 _rest
    4
    ;; float32 _minPulse
    4
    ;; float32 _maxPulse
    4
    ;; float32 _minSensor
    4
    ;; float32 _maxSensor
    4
    ;; int32 _smoothing
    4
    ;; float32 _maxSpeed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _servoPin
       (write-long _servoPin s)
     ;; int32 _sensorPin
       (write-long _sensorPin s)
     ;; float32 _minAngle
       (sys::poke _minAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxAngle
       (sys::poke _maxAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _rest
       (sys::poke _rest (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _minPulse
       (sys::poke _minPulse (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxPulse
       (sys::poke _maxPulse (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _minSensor
       (sys::poke _minSensor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _maxSensor
       (sys::poke _maxSensor (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _smoothing
       (write-long _smoothing s)
     ;; float32 _maxSpeed
       (sys::poke _maxSpeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _servoPin
     (setq _servoPin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _sensorPin
     (setq _sensorPin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _minAngle
     (setq _minAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxAngle
     (setq _maxAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _rest
     (setq _rest (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _minPulse
     (setq _minPulse (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxPulse
     (setq _maxPulse (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _minSensor
     (setq _minSensor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _maxSensor
     (setq _maxSensor (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _smoothing
     (setq _smoothing (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _maxSpeed
     (setq _maxSpeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get inmoov_msgs::ServoSetup :md5sum-) "9352507e0ae979f797e9e298510545cf")
(setf (get inmoov_msgs::ServoSetup :datatype-) "inmoov_msgs/ServoSetup")
(setf (get inmoov_msgs::ServoSetup :definition-)
      "int32 servoPin 		#pin number for Servo
int32 sensorPin		#pin number for Sensor
float32 minAngle		#min physical angle of joint
float32 maxAngle		#max physical angle of joint
float32 rest			#rest angle
float32 minPulse		#min Pulse for the servo - physical robot should be at min angle when this is set
float32 maxPulse		#max Pulse for the servo - physical robot should be at max angle when this is set
float32 minSensor		#min reading for sensor
float32 maxSensor		#max reading for sensor
int32 smoothing		#sets default smoothing pattern for joint
float32 maxSpeed		#sets maxspeed





")



(provide :inmoov_msgs/ServoSetup "9352507e0ae979f797e9e298510545cf")


