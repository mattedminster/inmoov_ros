; Auto-generated. Do not edit!


(cl:in-package cob_3d_mapping_msgs-msg)


;//! \htmlinclude TriggerFeedback.msg.html

(cl:defclass <TriggerFeedback> (roslisp-msg-protocol:ros-message)
  ((currentStep
    :reader currentStep
    :initarg :currentStep
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass TriggerFeedback (<TriggerFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TriggerFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TriggerFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cob_3d_mapping_msgs-msg:<TriggerFeedback> is deprecated: use cob_3d_mapping_msgs-msg:TriggerFeedback instead.")))

(cl:ensure-generic-function 'currentStep-val :lambda-list '(m))
(cl:defmethod currentStep-val ((m <TriggerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cob_3d_mapping_msgs-msg:currentStep-val is deprecated.  Use cob_3d_mapping_msgs-msg:currentStep instead.")
  (currentStep m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TriggerFeedback>) ostream)
  "Serializes a message object of type '<TriggerFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'currentStep) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TriggerFeedback>) istream)
  "Deserializes a message object of type '<TriggerFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'currentStep) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TriggerFeedback>)))
  "Returns string type for a message object of type '<TriggerFeedback>"
  "cob_3d_mapping_msgs/TriggerFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TriggerFeedback)))
  "Returns string type for a message object of type 'TriggerFeedback"
  "cob_3d_mapping_msgs/TriggerFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TriggerFeedback>)))
  "Returns md5sum for a message object of type '<TriggerFeedback>"
  "7c51960fbfdc31dbfce9bf929242f080")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TriggerFeedback)))
  "Returns md5sum for a message object of type 'TriggerFeedback"
  "7c51960fbfdc31dbfce9bf929242f080")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TriggerFeedback>)))
  "Returns full string definition for message of type '<TriggerFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%std_msgs/String currentStep~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TriggerFeedback)))
  "Returns full string definition for message of type 'TriggerFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%std_msgs/String currentStep~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TriggerFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'currentStep))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TriggerFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'TriggerFeedback
    (cl:cons ':currentStep (currentStep msg))
))
