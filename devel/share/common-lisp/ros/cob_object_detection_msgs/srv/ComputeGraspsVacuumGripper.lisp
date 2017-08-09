; Auto-generated. Do not edit!


(cl:in-package cob_object_detection_msgs-srv)


;//! \htmlinclude ComputeGraspsVacuumGripper-request.msg.html

(cl:defclass <ComputeGraspsVacuumGripper-request> (roslisp-msg-protocol:ros-message)
  ((object
    :reader object
    :initarg :object
    :type cob_object_detection_msgs-msg:Detection
    :initform (cl:make-instance 'cob_object_detection_msgs-msg:Detection))
   (external_reference_frame_id
    :reader external_reference_frame_id
    :initarg :external_reference_frame_id
    :type cl:string
    :initform ""))
)

(cl:defclass ComputeGraspsVacuumGripper-request (<ComputeGraspsVacuumGripper-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeGraspsVacuumGripper-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeGraspsVacuumGripper-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<ComputeGraspsVacuumGripper-request> is deprecated: use cob_object_detection_msgs-srv:ComputeGraspsVacuumGripper-request instead.")))

(cl:ensure-generic-function 'object-val :lambda-list '(m))
(cl:defmethod object-val ((m <ComputeGraspsVacuumGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:object-val is deprecated.  Use cob_object_detection_msgs-srv:object instead.")
  (object m))

(cl:ensure-generic-function 'external_reference_frame_id-val :lambda-list '(m))
(cl:defmethod external_reference_frame_id-val ((m <ComputeGraspsVacuumGripper-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:external_reference_frame_id-val is deprecated.  Use cob_object_detection_msgs-srv:external_reference_frame_id instead.")
  (external_reference_frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeGraspsVacuumGripper-request>) ostream)
  "Serializes a message object of type '<ComputeGraspsVacuumGripper-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'external_reference_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'external_reference_frame_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeGraspsVacuumGripper-request>) istream)
  "Deserializes a message object of type '<ComputeGraspsVacuumGripper-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'external_reference_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'external_reference_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeGraspsVacuumGripper-request>)))
  "Returns string type for a service object of type '<ComputeGraspsVacuumGripper-request>"
  "cob_object_detection_msgs/ComputeGraspsVacuumGripperRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeGraspsVacuumGripper-request)))
  "Returns string type for a service object of type 'ComputeGraspsVacuumGripper-request"
  "cob_object_detection_msgs/ComputeGraspsVacuumGripperRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeGraspsVacuumGripper-request>)))
  "Returns md5sum for a message object of type '<ComputeGraspsVacuumGripper-request>"
  "5fd579d4198961aee43fea3a6b180c4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeGraspsVacuumGripper-request)))
  "Returns md5sum for a message object of type 'ComputeGraspsVacuumGripper-request"
  "5fd579d4198961aee43fea3a6b180c4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeGraspsVacuumGripper-request>)))
  "Returns full string definition for message of type '<ComputeGraspsVacuumGripper-request>"
  (cl:format cl:nil "~%~%cob_object_detection_msgs/Detection object~%~%~%string external_reference_frame_id~%~%================================================================================~%MSG: cob_object_detection_msgs/Detection~%Header header~%string label~%int32 id~%string detector~%float32 score~%Mask mask~%geometry_msgs/PoseStamped pose~%geometry_msgs/Point bounding_box_lwh~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_object_detection_msgs/Mask~%# this message is used to mark where an object is present in an image~%# this can be done either by a roi region on the image (less precise) or a mask (more precise)~%~%Rect roi~%~%# in the case when mask is used, 'roi' specifies the image region and 'mask'~%# (which should be of the same size) a binary mask in that region~%sensor_msgs/Image mask~%~%# in the case there is 3D data available, 'indices' are used to index the ~%# part of the point cloud representing the object~%#pcl/PointIndices indices~%~%================================================================================~%MSG: cob_object_detection_msgs/Rect~%int32 x~%int32 y~%int32 width~%int32 height~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeGraspsVacuumGripper-request)))
  "Returns full string definition for message of type 'ComputeGraspsVacuumGripper-request"
  (cl:format cl:nil "~%~%cob_object_detection_msgs/Detection object~%~%~%string external_reference_frame_id~%~%================================================================================~%MSG: cob_object_detection_msgs/Detection~%Header header~%string label~%int32 id~%string detector~%float32 score~%Mask mask~%geometry_msgs/PoseStamped pose~%geometry_msgs/Point bounding_box_lwh~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: cob_object_detection_msgs/Mask~%# this message is used to mark where an object is present in an image~%# this can be done either by a roi region on the image (less precise) or a mask (more precise)~%~%Rect roi~%~%# in the case when mask is used, 'roi' specifies the image region and 'mask'~%# (which should be of the same size) a binary mask in that region~%sensor_msgs/Image mask~%~%# in the case there is 3D data available, 'indices' are used to index the ~%# part of the point cloud representing the object~%#pcl/PointIndices indices~%~%================================================================================~%MSG: cob_object_detection_msgs/Rect~%int32 x~%int32 y~%int32 width~%int32 height~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeGraspsVacuumGripper-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object))
     4 (cl:length (cl:slot-value msg 'external_reference_frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeGraspsVacuumGripper-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeGraspsVacuumGripper-request
    (cl:cons ':object (object msg))
    (cl:cons ':external_reference_frame_id (external_reference_frame_id msg))
))
;//! \htmlinclude ComputeGraspsVacuumGripper-response.msg.html

(cl:defclass <ComputeGraspsVacuumGripper-response> (roslisp-msg-protocol:ros-message)
  ((grasp_points
    :reader grasp_points
    :initarg :grasp_points
    :type (cl:vector geometry_msgs-msg:PoseStamped)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:PoseStamped :initial-element (cl:make-instance 'geometry_msgs-msg:PoseStamped))))
)

(cl:defclass ComputeGraspsVacuumGripper-response (<ComputeGraspsVacuumGripper-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ComputeGraspsVacuumGripper-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ComputeGraspsVacuumGripper-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_object_detection_msgs-srv:<ComputeGraspsVacuumGripper-response> is deprecated: use cob_object_detection_msgs-srv:ComputeGraspsVacuumGripper-response instead.")))

(cl:ensure-generic-function 'grasp_points-val :lambda-list '(m))
(cl:defmethod grasp_points-val ((m <ComputeGraspsVacuumGripper-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_object_detection_msgs-srv:grasp_points-val is deprecated.  Use cob_object_detection_msgs-srv:grasp_points instead.")
  (grasp_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ComputeGraspsVacuumGripper-response>) ostream)
  "Serializes a message object of type '<ComputeGraspsVacuumGripper-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'grasp_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'grasp_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ComputeGraspsVacuumGripper-response>) istream)
  "Deserializes a message object of type '<ComputeGraspsVacuumGripper-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'grasp_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'grasp_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:PoseStamped))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ComputeGraspsVacuumGripper-response>)))
  "Returns string type for a service object of type '<ComputeGraspsVacuumGripper-response>"
  "cob_object_detection_msgs/ComputeGraspsVacuumGripperResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeGraspsVacuumGripper-response)))
  "Returns string type for a service object of type 'ComputeGraspsVacuumGripper-response"
  "cob_object_detection_msgs/ComputeGraspsVacuumGripperResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ComputeGraspsVacuumGripper-response>)))
  "Returns md5sum for a message object of type '<ComputeGraspsVacuumGripper-response>"
  "5fd579d4198961aee43fea3a6b180c4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ComputeGraspsVacuumGripper-response)))
  "Returns md5sum for a message object of type 'ComputeGraspsVacuumGripper-response"
  "5fd579d4198961aee43fea3a6b180c4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ComputeGraspsVacuumGripper-response>)))
  "Returns full string definition for message of type '<ComputeGraspsVacuumGripper-response>"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped[] grasp_points~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ComputeGraspsVacuumGripper-response)))
  "Returns full string definition for message of type 'ComputeGraspsVacuumGripper-response"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped[] grasp_points~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ComputeGraspsVacuumGripper-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'grasp_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ComputeGraspsVacuumGripper-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ComputeGraspsVacuumGripper-response
    (cl:cons ':grasp_points (grasp_points msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ComputeGraspsVacuumGripper)))
  'ComputeGraspsVacuumGripper-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ComputeGraspsVacuumGripper)))
  'ComputeGraspsVacuumGripper-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ComputeGraspsVacuumGripper)))
  "Returns string type for a service object of type '<ComputeGraspsVacuumGripper>"
  "cob_object_detection_msgs/ComputeGraspsVacuumGripper")