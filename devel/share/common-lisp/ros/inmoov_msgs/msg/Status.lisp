; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-msg)


;//! \htmlinclude Status.msg.html

(cl:defclass <Status> (roslisp-msg-protocol:ros-message)
  ((component
    :reader component
    :initarg :component
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (severity
    :reader severity
    :initarg :severity
    :type cl:fixnum
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Status (<Status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-msg:<Status> is deprecated: use inmoov_msgs-msg:Status instead.")))

(cl:ensure-generic-function 'component-val :lambda-list '(m))
(cl:defmethod component-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:component-val is deprecated.  Use inmoov_msgs-msg:component instead.")
  (component m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:status-val is deprecated.  Use inmoov_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'severity-val :lambda-list '(m))
(cl:defmethod severity-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:severity-val is deprecated.  Use inmoov_msgs-msg:severity instead.")
  (severity m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:message-val is deprecated.  Use inmoov_msgs-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Status>)))
    "Constants for message type '<Status>"
  '((:SEVERITY_INFO . 0)
    (:SEVERITY_WARNING . 1)
    (:SEVERITY_ERROR . 2)
    (:SEVERITY_FATAL . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Status)))
    "Constants for message type 'Status"
  '((:SEVERITY_INFO . 0)
    (:SEVERITY_WARNING . 1)
    (:SEVERITY_ERROR . 2)
    (:SEVERITY_FATAL . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Status>) ostream)
  "Serializes a message object of type '<Status>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'component))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'component))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'severity)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Status>) istream)
  "Deserializes a message object of type '<Status>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'component) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'component) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'severity)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Status>)))
  "Returns string type for a message object of type '<Status>"
  "inmoov_msgs/Status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Status)))
  "Returns string type for a message object of type 'Status"
  "inmoov_msgs/Status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Status>)))
  "Returns md5sum for a message object of type '<Status>"
  "148ef940c96440f91ff132cdf07570ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Status)))
  "Returns md5sum for a message object of type 'Status"
  "148ef940c96440f91ff132cdf07570ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Status>)))
  "Returns full string definition for message of type '<Status>"
  (cl:format cl:nil "# Status reporting message~%#~%#~%uint8 SEVERITY_INFO=0~%uint8 SEVERITY_WARNING=1~%uint8 SEVERITY_ERROR=2~%uint8 SEVERITY_FATAL=3~%string  component~%bool    status~%uint8   severity~%string  message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Status)))
  "Returns full string definition for message of type 'Status"
  (cl:format cl:nil "# Status reporting message~%#~%#~%uint8 SEVERITY_INFO=0~%uint8 SEVERITY_WARNING=1~%uint8 SEVERITY_ERROR=2~%uint8 SEVERITY_FATAL=3~%string  component~%bool    status~%uint8   severity~%string  message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Status>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'component))
     1
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Status>))
  "Converts a ROS message object to a list"
  (cl:list 'Status
    (cl:cons ':component (component msg))
    (cl:cons ':status (status msg))
    (cl:cons ':severity (severity msg))
    (cl:cons ':message (message msg))
))
