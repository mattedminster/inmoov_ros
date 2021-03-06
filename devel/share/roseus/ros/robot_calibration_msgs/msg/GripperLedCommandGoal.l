;; Auto-generated. Do not edit!


(when (boundp 'robot_calibration_msgs::GripperLedCommandGoal)
  (if (not (find-package "ROBOT_CALIBRATION_MSGS"))
    (make-package "ROBOT_CALIBRATION_MSGS"))
  (shadow 'GripperLedCommandGoal (find-package "ROBOT_CALIBRATION_MSGS")))
(unless (find-package "ROBOT_CALIBRATION_MSGS::GRIPPERLEDCOMMANDGOAL")
  (make-package "ROBOT_CALIBRATION_MSGS::GRIPPERLEDCOMMANDGOAL"))

(in-package "ROS")
;;//! \htmlinclude GripperLedCommandGoal.msg.html


(defclass robot_calibration_msgs::GripperLedCommandGoal
  :super ros::object
  :slots (_led_code ))

(defmethod robot_calibration_msgs::GripperLedCommandGoal
  (:init
   (&key
    ((:led_code __led_code) 0)
    )
   (send-super :init)
   (setq _led_code (round __led_code))
   self)
  (:led_code
   (&optional __led_code)
   (if __led_code (setq _led_code __led_code)) _led_code)
  (:serialization-length
   ()
   (+
    ;; uint8 _led_code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _led_code
       (write-byte _led_code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _led_code
     (setq _led_code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_calibration_msgs::GripperLedCommandGoal :md5sum-) "11513917910062a2ca72ae2699b68556")
(setf (get robot_calibration_msgs::GripperLedCommandGoal :datatype-) "robot_calibration_msgs/GripperLedCommandGoal")
(setf (get robot_calibration_msgs::GripperLedCommandGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# This action is used to flash a sequence with LEDs, which can then be detected by calibration

uint8 led_code


")



(provide :robot_calibration_msgs/GripperLedCommandGoal "11513917910062a2ca72ae2699b68556")


