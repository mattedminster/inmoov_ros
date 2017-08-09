;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::NeoPixel)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'NeoPixel (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::NEOPIXEL")
  (make-package "INMOOV_MSGS::NEOPIXEL"))

(in-package "ROS")
;;//! \htmlinclude NeoPixel.msg.html


(defclass inmoov_msgs::NeoPixel
  :super ros::object
  :slots (_pixelNum _pixel_red _pixel_green _pixel_blue _show ))

(defmethod inmoov_msgs::NeoPixel
  (:init
   (&key
    ((:pixelNum __pixelNum) 0)
    ((:pixel_red __pixel_red) 0)
    ((:pixel_green __pixel_green) 0)
    ((:pixel_blue __pixel_blue) 0)
    ((:show __show) 0)
    )
   (send-super :init)
   (setq _pixelNum (round __pixelNum))
   (setq _pixel_red (round __pixel_red))
   (setq _pixel_green (round __pixel_green))
   (setq _pixel_blue (round __pixel_blue))
   (setq _show (round __show))
   self)
  (:pixelNum
   (&optional __pixelNum)
   (if __pixelNum (setq _pixelNum __pixelNum)) _pixelNum)
  (:pixel_red
   (&optional __pixel_red)
   (if __pixel_red (setq _pixel_red __pixel_red)) _pixel_red)
  (:pixel_green
   (&optional __pixel_green)
   (if __pixel_green (setq _pixel_green __pixel_green)) _pixel_green)
  (:pixel_blue
   (&optional __pixel_blue)
   (if __pixel_blue (setq _pixel_blue __pixel_blue)) _pixel_blue)
  (:show
   (&optional __show)
   (if __show (setq _show __show)) _show)
  (:serialization-length
   ()
   (+
    ;; int32 _pixelNum
    4
    ;; int32 _pixel_red
    4
    ;; int32 _pixel_green
    4
    ;; int32 _pixel_blue
    4
    ;; int32 _show
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _pixelNum
       (write-long _pixelNum s)
     ;; int32 _pixel_red
       (write-long _pixel_red s)
     ;; int32 _pixel_green
       (write-long _pixel_green s)
     ;; int32 _pixel_blue
       (write-long _pixel_blue s)
     ;; int32 _show
       (write-long _show s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _pixelNum
     (setq _pixelNum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pixel_red
     (setq _pixel_red (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pixel_green
     (setq _pixel_green (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _pixel_blue
     (setq _pixel_blue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _show
     (setq _show (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get inmoov_msgs::NeoPixel :md5sum-) "d4a1ce762728c83a5b2027e8e116f9ea")
(setf (get inmoov_msgs::NeoPixel :datatype-) "inmoov_msgs/NeoPixel")
(setf (get inmoov_msgs::NeoPixel :definition-)
      "int32 pixelNum
int32 pixel_red
int32 pixel_green
int32 pixel_blue
int32 show

")



(provide :inmoov_msgs/NeoPixel "d4a1ce762728c83a5b2027e8e116f9ea")


