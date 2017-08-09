; Auto-generated. Do not edit!


(cl:in-package image_recognition_msgs-msg)


;//! \htmlinclude Recognition.msg.html

(cl:defclass <Recognition> (roslisp-msg-protocol:ros-message)
  ((categorical_distribution
    :reader categorical_distribution
    :initarg :categorical_distribution
    :type image_recognition_msgs-msg:CategoricalDistribution
    :initform (cl:make-instance 'image_recognition_msgs-msg:CategoricalDistribution))
   (roi
    :reader roi
    :initarg :roi
    :type sensor_msgs-msg:RegionOfInterest
    :initform (cl:make-instance 'sensor_msgs-msg:RegionOfInterest)))
)

(cl:defclass Recognition (<Recognition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Recognition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Recognition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name image_recognition_msgs-msg:<Recognition> is deprecated: use image_recognition_msgs-msg:Recognition instead.")))

(cl:ensure-generic-function 'categorical_distribution-val :lambda-list '(m))
(cl:defmethod categorical_distribution-val ((m <Recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:categorical_distribution-val is deprecated.  Use image_recognition_msgs-msg:categorical_distribution instead.")
  (categorical_distribution m))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <Recognition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader image_recognition_msgs-msg:roi-val is deprecated.  Use image_recognition_msgs-msg:roi instead.")
  (roi m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Recognition>) ostream)
  "Serializes a message object of type '<Recognition>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'categorical_distribution) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Recognition>) istream)
  "Deserializes a message object of type '<Recognition>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'categorical_distribution) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Recognition>)))
  "Returns string type for a message object of type '<Recognition>"
  "image_recognition_msgs/Recognition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Recognition)))
  "Returns string type for a message object of type 'Recognition"
  "image_recognition_msgs/Recognition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Recognition>)))
  "Returns md5sum for a message object of type '<Recognition>"
  "4b43115e31295aecb76e808f68d9d2b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Recognition)))
  "Returns md5sum for a message object of type 'Recognition"
  "4b43115e31295aecb76e808f68d9d2b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Recognition>)))
  "Returns full string definition for message of type '<Recognition>"
  (cl:format cl:nil "# A recognition in an image region of interest (roi) that is described by a~%# categorical distribution that contains of labels with their probabilities~%CategoricalDistribution categorical_distribution~%sensor_msgs/RegionOfInterest roi~%~%================================================================================~%MSG: image_recognition_msgs/CategoricalDistribution~%# Categorical distribution; if the probability of an element is below the unknown~%# probability, it can be classified as unknown~%CategoryProbability[] probabilities~%float32 unknown_probability~%~%================================================================================~%MSG: image_recognition_msgs/CategoryProbability~%# A category (label) with its probability (probablity) that ranges from 0..1~%string  label~%float32 probability~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Recognition)))
  "Returns full string definition for message of type 'Recognition"
  (cl:format cl:nil "# A recognition in an image region of interest (roi) that is described by a~%# categorical distribution that contains of labels with their probabilities~%CategoricalDistribution categorical_distribution~%sensor_msgs/RegionOfInterest roi~%~%================================================================================~%MSG: image_recognition_msgs/CategoricalDistribution~%# Categorical distribution; if the probability of an element is below the unknown~%# probability, it can be classified as unknown~%CategoryProbability[] probabilities~%float32 unknown_probability~%~%================================================================================~%MSG: image_recognition_msgs/CategoryProbability~%# A category (label) with its probability (probablity) that ranges from 0..1~%string  label~%float32 probability~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Recognition>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'categorical_distribution))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Recognition>))
  "Converts a ROS message object to a list"
  (cl:list 'Recognition
    (cl:cons ':categorical_distribution (categorical_distribution msg))
    (cl:cons ':roi (roi msg))
))
