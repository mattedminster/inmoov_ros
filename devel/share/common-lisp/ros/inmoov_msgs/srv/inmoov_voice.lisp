; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-srv)


;//! \htmlinclude inmoov_voice-request.msg.html

(cl:defclass <inmoov_voice-request> (roslisp-msg-protocol:ros-message)
  ((toSpeak
    :reader toSpeak
    :initarg :toSpeak
    :type cl:string
    :initform ""))
)

(cl:defclass inmoov_voice-request (<inmoov_voice-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inmoov_voice-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inmoov_voice-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<inmoov_voice-request> is deprecated: use inmoov_msgs-srv:inmoov_voice-request instead.")))

(cl:ensure-generic-function 'toSpeak-val :lambda-list '(m))
(cl:defmethod toSpeak-val ((m <inmoov_voice-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:toSpeak-val is deprecated.  Use inmoov_msgs-srv:toSpeak instead.")
  (toSpeak m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inmoov_voice-request>) ostream)
  "Serializes a message object of type '<inmoov_voice-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'toSpeak))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'toSpeak))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inmoov_voice-request>) istream)
  "Deserializes a message object of type '<inmoov_voice-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'toSpeak) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'toSpeak) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inmoov_voice-request>)))
  "Returns string type for a service object of type '<inmoov_voice-request>"
  "inmoov_msgs/inmoov_voiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inmoov_voice-request)))
  "Returns string type for a service object of type 'inmoov_voice-request"
  "inmoov_msgs/inmoov_voiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inmoov_voice-request>)))
  "Returns md5sum for a message object of type '<inmoov_voice-request>"
  "9c774e72535a80436c5470ca70b0364d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inmoov_voice-request)))
  "Returns md5sum for a message object of type 'inmoov_voice-request"
  "9c774e72535a80436c5470ca70b0364d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inmoov_voice-request>)))
  "Returns full string definition for message of type '<inmoov_voice-request>"
  (cl:format cl:nil "string   toSpeak~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inmoov_voice-request)))
  "Returns full string definition for message of type 'inmoov_voice-request"
  (cl:format cl:nil "string   toSpeak~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inmoov_voice-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'toSpeak))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inmoov_voice-request>))
  "Converts a ROS message object to a list"
  (cl:list 'inmoov_voice-request
    (cl:cons ':toSpeak (toSpeak msg))
))
;//! \htmlinclude inmoov_voice-response.msg.html

(cl:defclass <inmoov_voice-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass inmoov_voice-response (<inmoov_voice-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inmoov_voice-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inmoov_voice-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<inmoov_voice-response> is deprecated: use inmoov_msgs-srv:inmoov_voice-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <inmoov_voice-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:data-val is deprecated.  Use inmoov_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inmoov_voice-response>) ostream)
  "Serializes a message object of type '<inmoov_voice-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inmoov_voice-response>) istream)
  "Deserializes a message object of type '<inmoov_voice-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inmoov_voice-response>)))
  "Returns string type for a service object of type '<inmoov_voice-response>"
  "inmoov_msgs/inmoov_voiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inmoov_voice-response)))
  "Returns string type for a service object of type 'inmoov_voice-response"
  "inmoov_msgs/inmoov_voiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inmoov_voice-response>)))
  "Returns md5sum for a message object of type '<inmoov_voice-response>"
  "9c774e72535a80436c5470ca70b0364d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inmoov_voice-response)))
  "Returns md5sum for a message object of type 'inmoov_voice-response"
  "9c774e72535a80436c5470ca70b0364d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inmoov_voice-response>)))
  "Returns full string definition for message of type '<inmoov_voice-response>"
  (cl:format cl:nil "float32 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inmoov_voice-response)))
  "Returns full string definition for message of type 'inmoov_voice-response"
  (cl:format cl:nil "float32 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inmoov_voice-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inmoov_voice-response>))
  "Converts a ROS message object to a list"
  (cl:list 'inmoov_voice-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'inmoov_voice)))
  'inmoov_voice-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'inmoov_voice)))
  'inmoov_voice-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inmoov_voice)))
  "Returns string type for a service object of type '<inmoov_voice>"
  "inmoov_msgs/inmoov_voice")