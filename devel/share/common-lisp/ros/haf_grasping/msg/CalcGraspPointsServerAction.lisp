; Auto-generated. Do not edit!


(cl:in-package haf_grasping-msg)


;//! \htmlinclude CalcGraspPointsServerAction.msg.html

(cl:defclass <CalcGraspPointsServerAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type haf_grasping-msg:CalcGraspPointsServerActionGoal
    :initform (cl:make-instance 'haf_grasping-msg:CalcGraspPointsServerActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type haf_grasping-msg:CalcGraspPointsServerActionResult
    :initform (cl:make-instance 'haf_grasping-msg:CalcGraspPointsServerActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type haf_grasping-msg:CalcGraspPointsServerActionFeedback
    :initform (cl:make-instance 'haf_grasping-msg:CalcGraspPointsServerActionFeedback)))
)

(cl:defclass CalcGraspPointsServerAction (<CalcGraspPointsServerAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalcGraspPointsServerAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalcGraspPointsServerAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name haf_grasping-msg:<CalcGraspPointsServerAction> is deprecated: use haf_grasping-msg:CalcGraspPointsServerAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <CalcGraspPointsServerAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haf_grasping-msg:action_goal-val is deprecated.  Use haf_grasping-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <CalcGraspPointsServerAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haf_grasping-msg:action_result-val is deprecated.  Use haf_grasping-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <CalcGraspPointsServerAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haf_grasping-msg:action_feedback-val is deprecated.  Use haf_grasping-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalcGraspPointsServerAction>) ostream)
  "Serializes a message object of type '<CalcGraspPointsServerAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalcGraspPointsServerAction>) istream)
  "Deserializes a message object of type '<CalcGraspPointsServerAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalcGraspPointsServerAction>)))
  "Returns string type for a message object of type '<CalcGraspPointsServerAction>"
  "haf_grasping/CalcGraspPointsServerAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalcGraspPointsServerAction)))
  "Returns string type for a message object of type 'CalcGraspPointsServerAction"
  "haf_grasping/CalcGraspPointsServerAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalcGraspPointsServerAction>)))
  "Returns md5sum for a message object of type '<CalcGraspPointsServerAction>"
  "3d7edd487ff4cf654bc0c58ebbbbb97e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalcGraspPointsServerAction)))
  "Returns md5sum for a message object of type 'CalcGraspPointsServerAction"
  "3d7edd487ff4cf654bc0c58ebbbbb97e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalcGraspPointsServerAction>)))
  "Returns full string definition for message of type '<CalcGraspPointsServerAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%CalcGraspPointsServerActionGoal action_goal~%CalcGraspPointsServerActionResult action_result~%CalcGraspPointsServerActionFeedback action_feedback~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%CalcGraspPointsServerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the input for grasp calculation: a point cloud~%haf_grasping/GraspInput graspinput~%~%================================================================================~%MSG: haf_grasping/GraspInput~%~%#Header header                        	# header for time/frame information~%sensor_msgs/PointCloud2 input_pc     	# defines the point cloud on which grasps should be calculated (objects)~%string goal_frame_id				 	# the frame_id to which the point cloud should be transformed before grasps are calculated~%geometry_msgs/Point grasp_area_center 	# center of the region where grasps are searched~%float32 grasp_area_length_x				# defines the length of the rectangle (in x direction (in m)) where grasps are searched (with center grasp_area_center)~%float32 grasp_area_length_y				# defines the length of the rectangle (in y direction (in m)) where grasps are searched (with center grasp_area_center)~%~%~%duration max_calculation_time			# maximal calculation time before grasp result is returned~%bool show_only_best_grasp				# If true, only the best grasp is shown in visualization~%int32 threshold_grasp_evaluation		# defines the threshold for return_first_grasp_over_th if it is set to true (otherwise it is ignored)~%~%geometry_msgs/Vector3 approach_vector	# defines the direction from where a grasp should be executed ~%int32 gripper_opening_width				# defines the factor (actually 1/factor) that is used for pre-grasp opening gripper width ~%~%#geometry_msgs/Vector3 scale_gripper	# Scale of the gripper in x and y direction if it deviates from a gripper of the size of a huMAN hand~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CalcGraspPointsServerResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result, if succeeded: defines grasp for gripper~%haf_grasping/GraspOutput graspOutput~%~%================================================================================~%MSG: haf_grasping/GraspOutput~%Header header~%int32 eval~%geometry_msgs/Point graspPoint1~%geometry_msgs/Point graspPoint2~%geometry_msgs/Point averagedGraspPoint~%geometry_msgs/Vector3 approachVector~%float32 roll # radians~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CalcGraspPointsServerFeedback feedback~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%std_msgs/String feedback~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalcGraspPointsServerAction)))
  "Returns full string definition for message of type 'CalcGraspPointsServerAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%CalcGraspPointsServerActionGoal action_goal~%CalcGraspPointsServerActionResult action_result~%CalcGraspPointsServerActionFeedback action_feedback~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%CalcGraspPointsServerGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the input for grasp calculation: a point cloud~%haf_grasping/GraspInput graspinput~%~%================================================================================~%MSG: haf_grasping/GraspInput~%~%#Header header                        	# header for time/frame information~%sensor_msgs/PointCloud2 input_pc     	# defines the point cloud on which grasps should be calculated (objects)~%string goal_frame_id				 	# the frame_id to which the point cloud should be transformed before grasps are calculated~%geometry_msgs/Point grasp_area_center 	# center of the region where grasps are searched~%float32 grasp_area_length_x				# defines the length of the rectangle (in x direction (in m)) where grasps are searched (with center grasp_area_center)~%float32 grasp_area_length_y				# defines the length of the rectangle (in y direction (in m)) where grasps are searched (with center grasp_area_center)~%~%~%duration max_calculation_time			# maximal calculation time before grasp result is returned~%bool show_only_best_grasp				# If true, only the best grasp is shown in visualization~%int32 threshold_grasp_evaluation		# defines the threshold for return_first_grasp_over_th if it is set to true (otherwise it is ignored)~%~%geometry_msgs/Vector3 approach_vector	# defines the direction from where a grasp should be executed ~%int32 gripper_opening_width				# defines the factor (actually 1/factor) that is used for pre-grasp opening gripper width ~%~%#geometry_msgs/Vector3 scale_gripper	# Scale of the gripper in x and y direction if it deviates from a gripper of the size of a huMAN hand~%~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CalcGraspPointsServerResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result, if succeeded: defines grasp for gripper~%haf_grasping/GraspOutput graspOutput~%~%================================================================================~%MSG: haf_grasping/GraspOutput~%Header header~%int32 eval~%geometry_msgs/Point graspPoint1~%geometry_msgs/Point graspPoint2~%geometry_msgs/Point averagedGraspPoint~%geometry_msgs/Vector3 approachVector~%float32 roll # radians~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%CalcGraspPointsServerFeedback feedback~%~%================================================================================~%MSG: haf_grasping/CalcGraspPointsServerFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%std_msgs/String feedback~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalcGraspPointsServerAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalcGraspPointsServerAction>))
  "Converts a ROS message object to a list"
  (cl:list 'CalcGraspPointsServerAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
