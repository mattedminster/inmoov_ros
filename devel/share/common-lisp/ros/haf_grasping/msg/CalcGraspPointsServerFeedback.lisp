; Auto-generated. Do not edit!


(cl:in-package haf_grasping-msg)


;//! \htmlinclude CalcGraspPointsServerFeedback.msg.html

(cl:defclass <CalcGraspPointsServerFeedback> (roslisp-msg-protocol:ros-message)
  ((feedback
    :reader feedback
    :initarg :feedback
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass CalcGraspPointsServerFeedback (<CalcGraspPointsServerFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalcGraspPointsServerFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalcGraspPointsServerFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name haf_grasping-msg:<CalcGraspPointsServerFeedback> is deprecated: use haf_grasping-msg:CalcGraspPointsServerFeedback instead.")))

(cl:ensure-generic-function 'feedback-val :lambda-list '(m))
(cl:defmethod feedback-val ((m <CalcGraspPointsServerFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader haf_grasping-msg:feedback-val is deprecated.  Use haf_grasping-msg:feedback instead.")
  (feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalcGraspPointsServerFeedback>) ostream)
  "Serializes a message object of type '<CalcGraspPointsServerFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalcGraspPointsServerFeedback>) istream)
  "Deserializes a message object of type '<CalcGraspPointsServerFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalcGraspPointsServerFeedback>)))
  "Returns string type for a message object of type '<CalcGraspPointsServerFeedback>"
  "haf_grasping/CalcGraspPointsServerFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalcGraspPointsServerFeedback)))
  "Returns string type for a message object of type 'CalcGraspPointsServerFeedback"
  "haf_grasping/CalcGraspPointsServerFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalcGraspPointsServerFeedback>)))
  "Returns md5sum for a message object of type '<CalcGraspPointsServerFeedback>"
  "be452bdb25132e643f85b55a53a6b2e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalcGraspPointsServerFeedback)))
  "Returns md5sum for a message object of type 'CalcGraspPointsServerFeedback"
  "be452bdb25132e643f85b55a53a6b2e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalcGraspPointsServerFeedback>)))
  "Returns full string definition for message of type '<CalcGraspPointsServerFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%std_msgs/String feedback~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalcGraspPointsServerFeedback)))
  "Returns full string definition for message of type 'CalcGraspPointsServerFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define a feedback message~%std_msgs/String feedback~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalcGraspPointsServerFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalcGraspPointsServerFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'CalcGraspPointsServerFeedback
    (cl:cons ':feedback (feedback msg))
))
