; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-srv)


;//! \htmlinclude MotorParameter-request.msg.html

(cl:defclass <MotorParameter-request> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (parameter
    :reader parameter
    :initarg :parameter
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MotorParameter-request (<MotorParameter-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorParameter-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorParameter-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<MotorParameter-request> is deprecated: use inmoov_msgs-srv:MotorParameter-request instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MotorParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:id-val is deprecated.  Use inmoov_msgs-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'parameter-val :lambda-list '(m))
(cl:defmethod parameter-val ((m <MotorParameter-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:parameter-val is deprecated.  Use inmoov_msgs-srv:parameter instead.")
  (parameter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorParameter-request>) ostream)
  "Serializes a message object of type '<MotorParameter-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parameter)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorParameter-request>) istream)
  "Deserializes a message object of type '<MotorParameter-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'parameter)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorParameter-request>)))
  "Returns string type for a service object of type '<MotorParameter-request>"
  "inmoov_msgs/MotorParameterRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorParameter-request)))
  "Returns string type for a service object of type 'MotorParameter-request"
  "inmoov_msgs/MotorParameterRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorParameter-request>)))
  "Returns md5sum for a message object of type '<MotorParameter-request>"
  "97de38f733bf57ad772faf1928f3cb93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorParameter-request)))
  "Returns md5sum for a message object of type 'MotorParameter-request"
  "97de38f733bf57ad772faf1928f3cb93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorParameter-request>)))
  "Returns full string definition for message of type '<MotorParameter-request>"
  (cl:format cl:nil "uint8   id~%uint8   parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorParameter-request)))
  "Returns full string definition for message of type 'MotorParameter-request"
  (cl:format cl:nil "uint8   id~%uint8   parameter~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorParameter-request>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorParameter-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorParameter-request
    (cl:cons ':id (id msg))
    (cl:cons ':parameter (parameter msg))
))
;//! \htmlinclude MotorParameter-response.msg.html

(cl:defclass <MotorParameter-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorParameter-response (<MotorParameter-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorParameter-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorParameter-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<MotorParameter-response> is deprecated: use inmoov_msgs-srv:MotorParameter-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <MotorParameter-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:data-val is deprecated.  Use inmoov_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorParameter-response>) ostream)
  "Serializes a message object of type '<MotorParameter-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorParameter-response>) istream)
  "Deserializes a message object of type '<MotorParameter-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorParameter-response>)))
  "Returns string type for a service object of type '<MotorParameter-response>"
  "inmoov_msgs/MotorParameterResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorParameter-response)))
  "Returns string type for a service object of type 'MotorParameter-response"
  "inmoov_msgs/MotorParameterResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorParameter-response>)))
  "Returns md5sum for a message object of type '<MotorParameter-response>"
  "97de38f733bf57ad772faf1928f3cb93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorParameter-response)))
  "Returns md5sum for a message object of type 'MotorParameter-response"
  "97de38f733bf57ad772faf1928f3cb93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorParameter-response>)))
  "Returns full string definition for message of type '<MotorParameter-response>"
  (cl:format cl:nil "float32 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorParameter-response)))
  "Returns full string definition for message of type 'MotorParameter-response"
  (cl:format cl:nil "float32 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorParameter-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorParameter-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorParameter-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MotorParameter)))
  'MotorParameter-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MotorParameter)))
  'MotorParameter-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorParameter)))
  "Returns string type for a service object of type '<MotorParameter>"
  "inmoov_msgs/MotorParameter")