;; Auto-generated. Do not edit!


(when (boundp 'robot_calibration_msgs::GripperLedCommandResult)
  (if (not (find-package "ROBOT_CALIBRATION_MSGS"))
    (make-package "ROBOT_CALIBRATION_MSGS"))
  (shadow 'GripperLedCommandResult (find-package "ROBOT_CALIBRATION_MSGS")))
(unless (find-package "ROBOT_CALIBRATION_MSGS::GRIPPERLEDCOMMANDRESULT")
  (make-package "ROBOT_CALIBRATION_MSGS::GRIPPERLEDCOMMANDRESULT"))

(in-package "ROS")
;;//! \htmlinclude GripperLedCommandResult.msg.html


(defclass robot_calibration_msgs::GripperLedCommandResult
  :super ros::object
  :slots ())

(defmethod robot_calibration_msgs::GripperLedCommandResult
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get robot_calibration_msgs::GripperLedCommandResult :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get robot_calibration_msgs::GripperLedCommandResult :datatype-) "robot_calibration_msgs/GripperLedCommandResult")
(setf (get robot_calibration_msgs::GripperLedCommandResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======


")



(provide :robot_calibration_msgs/GripperLedCommandResult "d41d8cd98f00b204e9800998ecf8427e")


