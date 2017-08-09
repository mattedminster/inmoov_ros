; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-srv)


;//! \htmlinclude NeoPixelSetBrightness-request.msg.html

(cl:defclass <NeoPixelSetBrightness-request> (roslisp-msg-protocol:ros-message)
  ((bright
    :reader bright
    :initarg :bright
    :type cl:integer
    :initform 0))
)

(cl:defclass NeoPixelSetBrightness-request (<NeoPixelSetBrightness-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeoPixelSetBrightness-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeoPixelSetBrightness-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<NeoPixelSetBrightness-request> is deprecated: use inmoov_msgs-srv:NeoPixelSetBrightness-request instead.")))

(cl:ensure-generic-function 'bright-val :lambda-list '(m))
(cl:defmethod bright-val ((m <NeoPixelSetBrightness-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:bright-val is deprecated.  Use inmoov_msgs-srv:bright instead.")
  (bright m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeoPixelSetBrightness-request>) ostream)
  "Serializes a message object of type '<NeoPixelSetBrightness-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bright)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bright)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bright)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bright)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeoPixelSetBrightness-request>) istream)
  "Deserializes a message object of type '<NeoPixelSetBrightness-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bright)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bright)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bright)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bright)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeoPixelSetBrightness-request>)))
  "Returns string type for a service object of type '<NeoPixelSetBrightness-request>"
  "inmoov_msgs/NeoPixelSetBrightnessRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeoPixelSetBrightness-request)))
  "Returns string type for a service object of type 'NeoPixelSetBrightness-request"
  "inmoov_msgs/NeoPixelSetBrightnessRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeoPixelSetBrightness-request>)))
  "Returns md5sum for a message object of type '<NeoPixelSetBrightness-request>"
  "6dac20c177c42b22ca026285392803c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeoPixelSetBrightness-request)))
  "Returns md5sum for a message object of type 'NeoPixelSetBrightness-request"
  "6dac20c177c42b22ca026285392803c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeoPixelSetBrightness-request>)))
  "Returns full string definition for message of type '<NeoPixelSetBrightness-request>"
  (cl:format cl:nil "uint32   bright~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeoPixelSetBrightness-request)))
  "Returns full string definition for message of type 'NeoPixelSetBrightness-request"
  (cl:format cl:nil "uint32   bright~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeoPixelSetBrightness-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeoPixelSetBrightness-request>))
  "Converts a ROS message object to a list"
  (cl:list 'NeoPixelSetBrightness-request
    (cl:cons ':bright (bright msg))
))
;//! \htmlinclude NeoPixelSetBrightness-response.msg.html

(cl:defclass <NeoPixelSetBrightness-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass NeoPixelSetBrightness-response (<NeoPixelSetBrightness-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeoPixelSetBrightness-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeoPixelSetBrightness-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<NeoPixelSetBrightness-response> is deprecated: use inmoov_msgs-srv:NeoPixelSetBrightness-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <NeoPixelSetBrightness-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:response-val is deprecated.  Use inmoov_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeoPixelSetBrightness-response>) ostream)
  "Serializes a message object of type '<NeoPixelSetBrightness-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeoPixelSetBrightness-response>) istream)
  "Deserializes a message object of type '<NeoPixelSetBrightness-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeoPixelSetBrightness-response>)))
  "Returns string type for a service object of type '<NeoPixelSetBrightness-response>"
  "inmoov_msgs/NeoPixelSetBrightnessResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeoPixelSetBrightness-response)))
  "Returns string type for a service object of type 'NeoPixelSetBrightness-response"
  "inmoov_msgs/NeoPixelSetBrightnessResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeoPixelSetBrightness-response>)))
  "Returns md5sum for a message object of type '<NeoPixelSetBrightness-response>"
  "6dac20c177c42b22ca026285392803c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeoPixelSetBrightness-response)))
  "Returns md5sum for a message object of type 'NeoPixelSetBrightness-response"
  "6dac20c177c42b22ca026285392803c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeoPixelSetBrightness-response>)))
  "Returns full string definition for message of type '<NeoPixelSetBrightness-response>"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeoPixelSetBrightness-response)))
  "Returns full string definition for message of type 'NeoPixelSetBrightness-response"
  (cl:format cl:nil "bool response~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeoPixelSetBrightness-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeoPixelSetBrightness-response>))
  "Converts a ROS message object to a list"
  (cl:list 'NeoPixelSetBrightness-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'NeoPixelSetBrightness)))
  'NeoPixelSetBrightness-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'NeoPixelSetBrightness)))
  'NeoPixelSetBrightness-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeoPixelSetBrightness)))
  "Returns string type for a service object of type '<NeoPixelSetBrightness>"
  "inmoov_msgs/NeoPixelSetBrightness")