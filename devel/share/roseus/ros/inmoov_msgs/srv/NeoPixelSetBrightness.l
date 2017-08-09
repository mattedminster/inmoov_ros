;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::NeoPixelSetBrightness)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'NeoPixelSetBrightness (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::NEOPIXELSETBRIGHTNESS")
  (make-package "INMOOV_MSGS::NEOPIXELSETBRIGHTNESS"))
(unless (find-package "INMOOV_MSGS::NEOPIXELSETBRIGHTNESSREQUEST")
  (make-package "INMOOV_MSGS::NEOPIXELSETBRIGHTNESSREQUEST"))
(unless (find-package "INMOOV_MSGS::NEOPIXELSETBRIGHTNESSRESPONSE")
  (make-package "INMOOV_MSGS::NEOPIXELSETBRIGHTNESSRESPONSE"))

(in-package "ROS")





(defclass inmoov_msgs::NeoPixelSetBrightnessRequest
  :super ros::object
  :slots (_bright ))

(defmethod inmoov_msgs::NeoPixelSetBrightnessRequest
  (:init
   (&key
    ((:bright __bright) 0)
    )
   (send-super :init)
   (setq _bright (round __bright))
   self)
  (:bright
   (&optional __bright)
   (if __bright (setq _bright __bright)) _bright)
  (:serialization-length
   ()
   (+
    ;; uint32 _bright
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _bright
       (write-long _bright s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _bright
     (setq _bright (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inmoov_msgs::NeoPixelSetBrightnessResponse
  :super ros::object
  :slots (_response ))

(defmethod inmoov_msgs::NeoPixelSetBrightnessResponse
  (:init
   (&key
    ((:response __response) nil)
    )
   (send-super :init)
   (setq _response __response)
   self)
  (:response
   (&optional __response)
   (if __response (setq _response __response)) _response)
  (:serialization-length
   ()
   (+
    ;; bool _response
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _response
       (if _response (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _response
     (setq _response (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass inmoov_msgs::NeoPixelSetBrightness
  :super ros::object
  :slots ())

(setf (get inmoov_msgs::NeoPixelSetBrightness :md5sum-) "6dac20c177c42b22ca026285392803c8")
(setf (get inmoov_msgs::NeoPixelSetBrightness :datatype-) "inmoov_msgs/NeoPixelSetBrightness")
(setf (get inmoov_msgs::NeoPixelSetBrightness :request) inmoov_msgs::NeoPixelSetBrightnessRequest)
(setf (get inmoov_msgs::NeoPixelSetBrightness :response) inmoov_msgs::NeoPixelSetBrightnessResponse)

(defmethod inmoov_msgs::NeoPixelSetBrightnessRequest
  (:response () (instance inmoov_msgs::NeoPixelSetBrightnessResponse :init)))

(setf (get inmoov_msgs::NeoPixelSetBrightnessRequest :md5sum-) "6dac20c177c42b22ca026285392803c8")
(setf (get inmoov_msgs::NeoPixelSetBrightnessRequest :datatype-) "inmoov_msgs/NeoPixelSetBrightnessRequest")
(setf (get inmoov_msgs::NeoPixelSetBrightnessRequest :definition-)
      "uint32   bright
---
bool response

")

(setf (get inmoov_msgs::NeoPixelSetBrightnessResponse :md5sum-) "6dac20c177c42b22ca026285392803c8")
(setf (get inmoov_msgs::NeoPixelSetBrightnessResponse :datatype-) "inmoov_msgs/NeoPixelSetBrightnessResponse")
(setf (get inmoov_msgs::NeoPixelSetBrightnessResponse :definition-)
      "uint32   bright
---
bool response

")



(provide :inmoov_msgs/NeoPixelSetBrightness "6dac20c177c42b22ca026285392803c8")


