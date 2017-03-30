;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::MotorCommand)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'MotorCommand (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::MOTORCOMMAND")
  (make-package "INMOOV_MSGS::MOTORCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MotorCommand.msg.html


(defclass inmoov_msgs::MotorCommand
  :super ros::object
  :slots (_id _parameter _value ))

(defmethod inmoov_msgs::MotorCommand
  (:init
   (&key
    ((:id __id) 0)
    ((:parameter __parameter) 0)
    ((:value __value) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _parameter (round __parameter))
   (setq _value (float __value))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _parameter
    1
    ;; float32 _value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _parameter
       (write-byte _parameter s)
     ;; float32 _value
       (sys::poke _value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _parameter
     (setq _parameter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _value
     (setq _value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get inmoov_msgs::MotorCommand :md5sum-) "eb0b08dd62a5eaff08551ecb80949ef6")
(setf (get inmoov_msgs::MotorCommand :datatype-) "inmoov_msgs/MotorCommand")
(setf (get inmoov_msgs::MotorCommand :definition-)
      "uint8   id                      # motor id
uint8   parameter               # parameter
float32 value			# value


")



(provide :inmoov_msgs/MotorCommand "eb0b08dd62a5eaff08551ecb80949ef6")


