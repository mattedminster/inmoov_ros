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
  :slots (_id _goal _position _presentspeed _moving _posraw _enabled _power ))

(defmethod inmoov_msgs::MotorStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:goal __goal) 0.0)
    ((:position __position) 0.0)
    ((:presentspeed __presentspeed) 0.0)
    ((:moving __moving) nil)
    ((:posraw __posraw) 0)
    ((:enabled __enabled) nil)
    ((:power __power) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _goal (float __goal))
   (setq _position (float __position))
   (setq _presentspeed (float __presentspeed))
   (setq _moving __moving)
   (setq _posraw (round __posraw))
   (setq _enabled __enabled)
   (setq _power __power)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
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
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32 _goal
    4
    ;; float32 _position
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
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _goal
       (sys::poke _goal (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position
       (sys::poke _position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _goal
     (setq _goal (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position
     (setq _position (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;;
   self)
  )

(setf (get inmoov_msgs::MotorStatus :md5sum-) "d4a9e09f5fbe6a9414f80ffc2b3c7dc9")
(setf (get inmoov_msgs::MotorStatus :datatype-) "inmoov_msgs/MotorStatus")
(setf (get inmoov_msgs::MotorStatus :definition-)
      "uint8    id             # motor id 0-11
float32  goal		# command position
float32  position	# current sensed position
float32  presentspeed	# calculated rotational speed
bool     moving		# is servo moving?
uint16   posraw		# raw position sensor value
bool     enabled	# is servo enabled?
bool     power		# does servo have power?



")



(provide :inmoov_msgs/MotorStatus "d4a9e09f5fbe6a9414f80ffc2b3c7dc9")


