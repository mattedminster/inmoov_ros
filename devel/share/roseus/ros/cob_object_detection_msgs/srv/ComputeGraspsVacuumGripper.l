;; Auto-generated. Do not edit!


(when (boundp 'cob_object_detection_msgs::ComputeGraspsVacuumGripper)
  (if (not (find-package "COB_OBJECT_DETECTION_MSGS"))
    (make-package "COB_OBJECT_DETECTION_MSGS"))
  (shadow 'ComputeGraspsVacuumGripper (find-package "COB_OBJECT_DETECTION_MSGS")))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::COMPUTEGRASPSVACUUMGRIPPER")
  (make-package "COB_OBJECT_DETECTION_MSGS::COMPUTEGRASPSVACUUMGRIPPER"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::COMPUTEGRASPSVACUUMGRIPPERREQUEST")
  (make-package "COB_OBJECT_DETECTION_MSGS::COMPUTEGRASPSVACUUMGRIPPERREQUEST"))
(unless (find-package "COB_OBJECT_DETECTION_MSGS::COMPUTEGRASPSVACUUMGRIPPERRESPONSE")
  (make-package "COB_OBJECT_DETECTION_MSGS::COMPUTEGRASPSVACUUMGRIPPERRESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest
  :super ros::object
  :slots (_object _external_reference_frame_id ))

(defmethod cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest
  (:init
   (&key
    ((:object __object) (instance cob_object_detection_msgs::Detection :init))
    ((:external_reference_frame_id __external_reference_frame_id) "")
    )
   (send-super :init)
   (setq _object __object)
   (setq _external_reference_frame_id (string __external_reference_frame_id))
   self)
  (:object
   (&rest __object)
   (if (keywordp (car __object))
       (send* _object __object)
     (progn
       (if __object (setq _object (car __object)))
       _object)))
  (:external_reference_frame_id
   (&optional __external_reference_frame_id)
   (if __external_reference_frame_id (setq _external_reference_frame_id __external_reference_frame_id)) _external_reference_frame_id)
  (:serialization-length
   ()
   (+
    ;; cob_object_detection_msgs/Detection _object
    (send _object :serialization-length)
    ;; string _external_reference_frame_id
    4 (length _external_reference_frame_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; cob_object_detection_msgs/Detection _object
       (send _object :serialize s)
     ;; string _external_reference_frame_id
       (write-long (length _external_reference_frame_id) s) (princ _external_reference_frame_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; cob_object_detection_msgs/Detection _object
     (send _object :deserialize buf ptr-) (incf ptr- (send _object :serialization-length))
   ;; string _external_reference_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _external_reference_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::ComputeGraspsVacuumGripperResponse
  :super ros::object
  :slots (_grasp_points ))

(defmethod cob_object_detection_msgs::ComputeGraspsVacuumGripperResponse
  (:init
   (&key
    ((:grasp_points __grasp_points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::PoseStamped :init) r)) r))
    )
   (send-super :init)
   (setq _grasp_points __grasp_points)
   self)
  (:grasp_points
   (&rest __grasp_points)
   (if (keywordp (car __grasp_points))
       (send* _grasp_points __grasp_points)
     (progn
       (if __grasp_points (setq _grasp_points (car __grasp_points)))
       _grasp_points)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped[] _grasp_points
    (apply #'+ (send-all _grasp_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped[] _grasp_points
     (write-long (length _grasp_points) s)
     (dolist (elem _grasp_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped[] _grasp_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _grasp_points (let (r) (dotimes (i n) (push (instance geometry_msgs::PoseStamped :init) r)) r))
     (dolist (elem- _grasp_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass cob_object_detection_msgs::ComputeGraspsVacuumGripper
  :super ros::object
  :slots ())

(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripper :md5sum-) "5fd579d4198961aee43fea3a6b180c4e")
(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripper :datatype-) "cob_object_detection_msgs/ComputeGraspsVacuumGripper")
(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripper :request) cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest)
(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripper :response) cob_object_detection_msgs::ComputeGraspsVacuumGripperResponse)

(defmethod cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest
  (:response () (instance cob_object_detection_msgs::ComputeGraspsVacuumGripperResponse :init)))

(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest :md5sum-) "5fd579d4198961aee43fea3a6b180c4e")
(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest :datatype-) "cob_object_detection_msgs/ComputeGraspsVacuumGripperRequest")
(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripperRequest :definition-)
      "

cob_object_detection_msgs/Detection object


string external_reference_frame_id

================================================================================
MSG: cob_object_detection_msgs/Detection
Header header
string label
int32 id
string detector
float32 score
Mask mask
geometry_msgs/PoseStamped pose
geometry_msgs/Point bounding_box_lwh

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
MSG: cob_object_detection_msgs/Mask
# this message is used to mark where an object is present in an image
# this can be done either by a roi region on the image (less precise) or a mask (more precise)

Rect roi

# in the case when mask is used, 'roi' specifies the image region and 'mask'
# (which should be of the same size) a binary mask in that region
sensor_msgs/Image mask

# in the case there is 3D data available, 'indices' are used to index the 
# part of the point cloud representing the object
#pcl/PointIndices indices

================================================================================
MSG: cob_object_detection_msgs/Rect
int32 x
int32 y
int32 width
int32 height

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

geometry_msgs/PoseStamped[] grasp_points

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripperResponse :md5sum-) "5fd579d4198961aee43fea3a6b180c4e")
(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripperResponse :datatype-) "cob_object_detection_msgs/ComputeGraspsVacuumGripperResponse")
(setf (get cob_object_detection_msgs::ComputeGraspsVacuumGripperResponse :definition-)
      "

cob_object_detection_msgs/Detection object


string external_reference_frame_id

================================================================================
MSG: cob_object_detection_msgs/Detection
Header header
string label
int32 id
string detector
float32 score
Mask mask
geometry_msgs/PoseStamped pose
geometry_msgs/Point bounding_box_lwh

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
MSG: cob_object_detection_msgs/Mask
# this message is used to mark where an object is present in an image
# this can be done either by a roi region on the image (less precise) or a mask (more precise)

Rect roi

# in the case when mask is used, 'roi' specifies the image region and 'mask'
# (which should be of the same size) a binary mask in that region
sensor_msgs/Image mask

# in the case there is 3D data available, 'indices' are used to index the 
# part of the point cloud representing the object
#pcl/PointIndices indices

================================================================================
MSG: cob_object_detection_msgs/Rect
int32 x
int32 y
int32 width
int32 height

================================================================================
MSG: sensor_msgs/Image
# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

geometry_msgs/PoseStamped[] grasp_points

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :cob_object_detection_msgs/ComputeGraspsVacuumGripper "5fd579d4198961aee43fea3a6b180c4e")


