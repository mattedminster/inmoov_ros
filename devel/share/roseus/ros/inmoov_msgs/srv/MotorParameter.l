;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::MotorParameter)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'MotorParameter (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::MOTORPARAMETER")
  (make-package "INMOOV_MSGS::MOTORPARAMETER"))
(unless (find-package "INMOOV_MSGS::MOTORPARAMETERREQUEST")
  (make-package "INMOOV_MSGS::MOTORPARAMETERREQUEST"))
(unless (find-package "INMOOV_MSGS::MOTORPARAMETERRESPONSE")
  (make-package "INMOOV_MSGS::MOTORPARAMETERRESPONSE"))

(in-package "ROS")





(defclass inmoov_msgs::MotorParameterRequest
  :super ros::object
  :slots (_pin _parameter ))

(defmethod inmoov_msgs::MotorParameterRequest
  (:init
   (&key
    ((:pin __pin) 0)
    ((:parameter __parameter) 0)
    )
   (send-super :init)
   (setq _pin (round __pin))
   (setq _parameter (round __parameter))
   self)
  (:pin
   (&optional __pin)
   (if __pin (setq _pin __pin)) _pin)
  (:parameter
   (&optional __parameter)
   (if __parameter (setq _parameter __parameter)) _parameter)
  (:serialization-length
   ()
   (+
    ;; uint8 _pin
    1
    ;; uint8 _parameter
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _pin
       (write-byte _pin s)
     ;; uint8 _parameter
       (write-byte _parameter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _pin
     (setq _pin (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _parameter
     (setq _parameter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass inmoov_msgs::MotorParameterResponse
  :super ros::object
  :slots (_data ))

(defmethod inmoov_msgs::MotorParameterResponse
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inmoov_msgs::MotorParameter
  :super ros::object
  :slots ())

(setf (get inmoov_msgs::MotorParameter :md5sum-) "5f77ee216d4d41fb39b36b0a0436a53b")
(setf (get inmoov_msgs::MotorParameter :datatype-) "inmoov_msgs/MotorParameter")
(setf (get inmoov_msgs::MotorParameter :request) inmoov_msgs::MotorParameterRequest)
(setf (get inmoov_msgs::MotorParameter :response) inmoov_msgs::MotorParameterResponse)

(defmethod inmoov_msgs::MotorParameterRequest
  (:response () (instance inmoov_msgs::MotorParameterResponse :init)))

(setf (get inmoov_msgs::MotorParameterRequest :md5sum-) "5f77ee216d4d41fb39b36b0a0436a53b")
(setf (get inmoov_msgs::MotorParameterRequest :datatype-) "inmoov_msgs/MotorParameterRequest")
(setf (get inmoov_msgs::MotorParameterRequest :definition-)
      "uint8   pin
uint8   parameter
---
float32 data

")

(setf (get inmoov_msgs::MotorParameterResponse :md5sum-) "5f77ee216d4d41fb39b36b0a0436a53b")
(setf (get inmoov_msgs::MotorParameterResponse :datatype-) "inmoov_msgs/MotorParameterResponse")
(setf (get inmoov_msgs::MotorParameterResponse :definition-)
      "uint8   pin
uint8   parameter
---
float32 data

")



(provide :inmoov_msgs/MotorParameter "5f77ee216d4d41fb39b36b0a0436a53b")


