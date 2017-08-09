; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-srv)


;//! \htmlinclude RPS-request.msg.html

(cl:defclass <RPS-request> (roslisp-msg-protocol:ros-message)
  ((numOfSamples
    :reader numOfSamples
    :initarg :numOfSamples
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RPS-request (<RPS-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RPS-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RPS-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<RPS-request> is deprecated: use inmoov_msgs-srv:RPS-request instead.")))

(cl:ensure-generic-function 'numOfSamples-val :lambda-list '(m))
(cl:defmethod numOfSamples-val ((m <RPS-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:numOfSamples-val is deprecated.  Use inmoov_msgs-srv:numOfSamples instead.")
  (numOfSamples m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RPS-request>) ostream)
  "Serializes a message object of type '<RPS-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numOfSamples)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RPS-request>) istream)
  "Deserializes a message object of type '<RPS-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'numOfSamples)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RPS-request>)))
  "Returns string type for a service object of type '<RPS-request>"
  "inmoov_msgs/RPSRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RPS-request)))
  "Returns string type for a service object of type 'RPS-request"
  "inmoov_msgs/RPSRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RPS-request>)))
  "Returns md5sum for a message object of type '<RPS-request>"
  "9acda9860bc8c37eb184a52b3d4300b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RPS-request)))
  "Returns md5sum for a message object of type 'RPS-request"
  "9acda9860bc8c37eb184a52b3d4300b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RPS-request>)))
  "Returns full string definition for message of type '<RPS-request>"
  (cl:format cl:nil "uint8  numOfSamples~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RPS-request)))
  "Returns full string definition for message of type 'RPS-request"
  (cl:format cl:nil "uint8  numOfSamples~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RPS-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RPS-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RPS-request
    (cl:cons ':numOfSamples (numOfSamples msg))
))
;//! \htmlinclude RPS-response.msg.html

(cl:defclass <RPS-response> (roslisp-msg-protocol:ros-message)
  ((optMove
    :reader optMove
    :initarg :optMove
    :type cl:string
    :initform ""))
)

(cl:defclass RPS-response (<RPS-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RPS-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RPS-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<RPS-response> is deprecated: use inmoov_msgs-srv:RPS-response instead.")))

(cl:ensure-generic-function 'optMove-val :lambda-list '(m))
(cl:defmethod optMove-val ((m <RPS-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:optMove-val is deprecated.  Use inmoov_msgs-srv:optMove instead.")
  (optMove m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RPS-response>) ostream)
  "Serializes a message object of type '<RPS-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'optMove))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'optMove))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RPS-response>) istream)
  "Deserializes a message object of type '<RPS-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'optMove) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'optMove) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RPS-response>)))
  "Returns string type for a service object of type '<RPS-response>"
  "inmoov_msgs/RPSResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RPS-response)))
  "Returns string type for a service object of type 'RPS-response"
  "inmoov_msgs/RPSResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RPS-response>)))
  "Returns md5sum for a message object of type '<RPS-response>"
  "9acda9860bc8c37eb184a52b3d4300b0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RPS-response)))
  "Returns md5sum for a message object of type 'RPS-response"
  "9acda9860bc8c37eb184a52b3d4300b0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RPS-response>)))
  "Returns full string definition for message of type '<RPS-response>"
  (cl:format cl:nil "string optMove~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RPS-response)))
  "Returns full string definition for message of type 'RPS-response"
  (cl:format cl:nil "string optMove~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RPS-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'optMove))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RPS-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RPS-response
    (cl:cons ':optMove (optMove msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RPS)))
  'RPS-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RPS)))
  'RPS-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RPS)))
  "Returns string type for a service object of type '<RPS>"
  "inmoov_msgs/RPS")