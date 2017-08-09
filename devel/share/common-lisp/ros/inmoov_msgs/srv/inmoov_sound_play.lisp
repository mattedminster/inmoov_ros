; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-srv)


;//! \htmlinclude inmoov_sound_play-request.msg.html

(cl:defclass <inmoov_sound_play-request> (roslisp-msg-protocol:ros-message)
  ((location
    :reader location
    :initarg :location
    :type cl:string
    :initform ""))
)

(cl:defclass inmoov_sound_play-request (<inmoov_sound_play-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inmoov_sound_play-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inmoov_sound_play-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<inmoov_sound_play-request> is deprecated: use inmoov_msgs-srv:inmoov_sound_play-request instead.")))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <inmoov_sound_play-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:location-val is deprecated.  Use inmoov_msgs-srv:location instead.")
  (location m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inmoov_sound_play-request>) ostream)
  "Serializes a message object of type '<inmoov_sound_play-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inmoov_sound_play-request>) istream)
  "Deserializes a message object of type '<inmoov_sound_play-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inmoov_sound_play-request>)))
  "Returns string type for a service object of type '<inmoov_sound_play-request>"
  "inmoov_msgs/inmoov_sound_playRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inmoov_sound_play-request)))
  "Returns string type for a service object of type 'inmoov_sound_play-request"
  "inmoov_msgs/inmoov_sound_playRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inmoov_sound_play-request>)))
  "Returns md5sum for a message object of type '<inmoov_sound_play-request>"
  "b4c96d106202669b53526a839d3e3eba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inmoov_sound_play-request)))
  "Returns md5sum for a message object of type 'inmoov_sound_play-request"
  "b4c96d106202669b53526a839d3e3eba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inmoov_sound_play-request>)))
  "Returns full string definition for message of type '<inmoov_sound_play-request>"
  (cl:format cl:nil "string  location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inmoov_sound_play-request)))
  "Returns full string definition for message of type 'inmoov_sound_play-request"
  (cl:format cl:nil "string  location~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inmoov_sound_play-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'location))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inmoov_sound_play-request>))
  "Converts a ROS message object to a list"
  (cl:list 'inmoov_sound_play-request
    (cl:cons ':location (location msg))
))
;//! \htmlinclude inmoov_sound_play-response.msg.html

(cl:defclass <inmoov_sound_play-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass inmoov_sound_play-response (<inmoov_sound_play-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <inmoov_sound_play-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'inmoov_sound_play-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<inmoov_sound_play-response> is deprecated: use inmoov_msgs-srv:inmoov_sound_play-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <inmoov_sound_play-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:data-val is deprecated.  Use inmoov_msgs-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <inmoov_sound_play-response>) ostream)
  "Serializes a message object of type '<inmoov_sound_play-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <inmoov_sound_play-response>) istream)
  "Deserializes a message object of type '<inmoov_sound_play-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<inmoov_sound_play-response>)))
  "Returns string type for a service object of type '<inmoov_sound_play-response>"
  "inmoov_msgs/inmoov_sound_playResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inmoov_sound_play-response)))
  "Returns string type for a service object of type 'inmoov_sound_play-response"
  "inmoov_msgs/inmoov_sound_playResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<inmoov_sound_play-response>)))
  "Returns md5sum for a message object of type '<inmoov_sound_play-response>"
  "b4c96d106202669b53526a839d3e3eba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'inmoov_sound_play-response)))
  "Returns md5sum for a message object of type 'inmoov_sound_play-response"
  "b4c96d106202669b53526a839d3e3eba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<inmoov_sound_play-response>)))
  "Returns full string definition for message of type '<inmoov_sound_play-response>"
  (cl:format cl:nil "float32 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'inmoov_sound_play-response)))
  "Returns full string definition for message of type 'inmoov_sound_play-response"
  (cl:format cl:nil "float32 data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <inmoov_sound_play-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <inmoov_sound_play-response>))
  "Converts a ROS message object to a list"
  (cl:list 'inmoov_sound_play-response
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'inmoov_sound_play)))
  'inmoov_sound_play-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'inmoov_sound_play)))
  'inmoov_sound_play-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'inmoov_sound_play)))
  "Returns string type for a service object of type '<inmoov_sound_play>"
  "inmoov_msgs/inmoov_sound_play")