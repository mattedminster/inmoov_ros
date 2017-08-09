;; Auto-generated. Do not edit!


(when (boundp 'haf_grasping::CalcGraspPointsServerResult)
  (if (not (find-package "HAF_GRASPING"))
    (make-package "HAF_GRASPING"))
  (shadow 'CalcGraspPointsServerResult (find-package "HAF_GRASPING")))
(unless (find-package "HAF_GRASPING::CALCGRASPPOINTSSERVERRESULT")
  (make-package "HAF_GRASPING::CALCGRASPPOINTSSERVERRESULT"))

(in-package "ROS")
;;//! \htmlinclude CalcGraspPointsServerResult.msg.html


(defclass haf_grasping::CalcGraspPointsServerResult
  :super ros::object
  :slots (_graspOutput ))

(defmethod haf_grasping::CalcGraspPointsServerResult
  (:init
   (&key
    ((:graspOutput __graspOutput) (instance haf_grasping::GraspOutput :init))
    )
   (send-super :init)
   (setq _graspOutput __graspOutput)
   self)
  (:graspOutput
   (&rest __graspOutput)
   (if (keywordp (car __graspOutput))
       (send* _graspOutput __graspOutput)
     (progn
       (if __graspOutput (setq _graspOutput (car __graspOutput)))
       _graspOutput)))
  (:serialization-length
   ()
   (+
    ;; haf_grasping/GraspOutput _graspOutput
    (send _graspOutput :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; haf_grasping/GraspOutput _graspOutput
       (send _graspOutput :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; haf_grasping/GraspOutput _graspOutput
     (send _graspOutput :deserialize buf ptr-) (incf ptr- (send _graspOutput :serialization-length))
   ;;
   self)
  )

(setf (get haf_grasping::CalcGraspPointsServerResult :md5sum-) "4d60c1e64258adfc60c950e0e4e2bab1")
(setf (get haf_grasping::CalcGraspPointsServerResult :datatype-) "haf_grasping/CalcGraspPointsServerResult")
(setf (get haf_grasping::CalcGraspPointsServerResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result, if succeeded: defines grasp for gripper
haf_grasping/GraspOutput graspOutput

================================================================================
MSG: haf_grasping/GraspOutput
Header header
int32 eval
geometry_msgs/Point graspPoint1
geometry_msgs/Point graspPoint2
geometry_msgs/Point averagedGraspPoint
geometry_msgs/Vector3 approachVector
float32 roll # radians

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :haf_grasping/CalcGraspPointsServerResult "4d60c1e64258adfc60c950e0e4e2bab1")

