; Auto-generated. Do not edit!


(cl:in-package cob_people_detection-msg)


;//! \htmlinclude getDetectionsFeedback.msg.html

(cl:defclass <getDetectionsFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass getDetectionsFeedback (<getDetectionsFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <getDetectionsFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'getDetectionsFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_people_detection-msg:<getDetectionsFeedback> is deprecated: use cob_people_detection-msg:getDetectionsFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <getDetectionsFeedback>) ostream)
  "Serializes a message object of type '<getDetectionsFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <getDetectionsFeedback>) istream)
  "Deserializes a message object of type '<getDetectionsFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<getDetectionsFeedback>)))
  "Returns string type for a message object of type '<getDetectionsFeedback>"
  "cob_people_detection/getDetectionsFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'getDetectionsFeedback)))
  "Returns string type for a message object of type 'getDetectionsFeedback"
  "cob_people_detection/getDetectionsFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<getDetectionsFeedback>)))
  "Returns md5sum for a message object of type '<getDetectionsFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'getDetectionsFeedback)))
  "Returns md5sum for a message object of type 'getDetectionsFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<getDetectionsFeedback>)))
  "Returns full string definition for message of type '<getDetectionsFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'getDetectionsFeedback)))
  "Returns full string definition for message of type 'getDetectionsFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <getDetectionsFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <getDetectionsFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'getDetectionsFeedback
))
