;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::NeoPixel_command)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'NeoPixel_command (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::NEOPIXEL_COMMAND")
  (make-package "INMOOV_MSGS::NEOPIXEL_COMMAND"))

(in-package "ROS")
;;//! \htmlinclude NeoPixel_command.msg.html


(defclass inmoov_msgs::NeoPixel_command
  :super ros::object
  :slots (_displayType _wait _red _green _blue _red2 _green2 _blue2 ))

(defmethod inmoov_msgs::NeoPixel_command
  (:init
   (&key
    ((:displayType __displayType) "")
    ((:wait __wait) 0)
    ((:red __red) 0)
    ((:green __green) 0)
    ((:blue __blue) 0)
    ((:red2 __red2) 0)
    ((:green2 __green2) 0)
    ((:blue2 __blue2) 0)
    )
   (send-super :init)
   (setq _displayType (string __displayType))
   (setq _wait (round __wait))
   (setq _red (round __red))
   (setq _green (round __green))
   (setq _blue (round __blue))
   (setq _red2 (round __red2))
   (setq _green2 (round __green2))
   (setq _blue2 (round __blue2))
   self)
  (:displayType
   (&optional __displayType)
   (if __displayType (setq _displayType __displayType)) _displayType)
  (:wait
   (&optional __wait)
   (if __wait (setq _wait __wait)) _wait)
  (:red
   (&optional __red)
   (if __red (setq _red __red)) _red)
  (:green
   (&optional __green)
   (if __green (setq _green __green)) _green)
  (:blue
   (&optional __blue)
   (if __blue (setq _blue __blue)) _blue)
  (:red2
   (&optional __red2)
   (if __red2 (setq _red2 __red2)) _red2)
  (:green2
   (&optional __green2)
   (if __green2 (setq _green2 __green2)) _green2)
  (:blue2
   (&optional __blue2)
   (if __blue2 (setq _blue2 __blue2)) _blue2)
  (:serialization-length
   ()
   (+
    ;; string _displayType
    4 (length _displayType)
    ;; int32 _wait
    4
    ;; int32 _red
    4
    ;; int32 _green
    4
    ;; int32 _blue
    4
    ;; int32 _red2
    4
    ;; int32 _green2
    4
    ;; int32 _blue2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _displayType
       (write-long (length _displayType) s) (princ _displayType s)
     ;; int32 _wait
       (write-long _wait s)
     ;; int32 _red
       (write-long _red s)
     ;; int32 _green
       (write-long _green s)
     ;; int32 _blue
       (write-long _blue s)
     ;; int32 _red2
       (write-long _red2 s)
     ;; int32 _green2
       (write-long _green2 s)
     ;; int32 _blue2
       (write-long _blue2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _displayType
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _displayType (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _wait
     (setq _wait (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _red
     (setq _red (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _green
     (setq _green (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _blue
     (setq _blue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _red2
     (setq _red2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _green2
     (setq _green2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _blue2
     (setq _blue2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get inmoov_msgs::NeoPixel_command :md5sum-) "101f9c07dca2c5b64e40edc6e84d3160")
(setf (get inmoov_msgs::NeoPixel_command :datatype-) "inmoov_msgs/NeoPixel_command")
(setf (get inmoov_msgs::NeoPixel_command :definition-)
      "string displayType
int32 wait
int32 red
int32 green
int32 blue
int32 red2
int32 green2
int32 blue2




")



(provide :inmoov_msgs/NeoPixel_command "101f9c07dca2c5b64e40edc6e84d3160")


