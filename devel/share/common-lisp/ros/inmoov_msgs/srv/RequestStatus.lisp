; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-srv)


;//! \htmlinclude RequestStatus-request.msg.html

(cl:defclass <RequestStatus-request> (roslisp-msg-protocol:ros-message)
  ((caller
    :reader caller
    :initarg :caller
    :type cl:string
    :initform ""))
)

(cl:defclass RequestStatus-request (<RequestStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<RequestStatus-request> is deprecated: use inmoov_msgs-srv:RequestStatus-request instead.")))

(cl:ensure-generic-function 'caller-val :lambda-list '(m))
(cl:defmethod caller-val ((m <RequestStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:caller-val is deprecated.  Use inmoov_msgs-srv:caller instead.")
  (caller m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestStatus-request>) ostream)
  "Serializes a message object of type '<RequestStatus-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'caller))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'caller))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestStatus-request>) istream)
  "Deserializes a message object of type '<RequestStatus-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'caller) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'caller) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestStatus-request>)))
  "Returns string type for a service object of type '<RequestStatus-request>"
  "inmoov_msgs/RequestStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestStatus-request)))
  "Returns string type for a service object of type 'RequestStatus-request"
  "inmoov_msgs/RequestStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestStatus-request>)))
  "Returns md5sum for a message object of type '<RequestStatus-request>"
  "1ba6f49c4dbbcc62a030b0539b05a793")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestStatus-request)))
  "Returns md5sum for a message object of type 'RequestStatus-request"
  "1ba6f49c4dbbcc62a030b0539b05a793")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestStatus-request>)))
  "Returns full string definition for message of type '<RequestStatus-request>"
  (cl:format cl:nil "~%string caller~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestStatus-request)))
  "Returns full string definition for message of type 'RequestStatus-request"
  (cl:format cl:nil "~%string caller~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestStatus-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'caller))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestStatus-request
    (cl:cons ':caller (caller msg))
))
;//! \htmlinclude RequestStatus-response.msg.html

(cl:defclass <RequestStatus-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RequestStatus-response (<RequestStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RequestStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RequestStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-srv:<RequestStatus-response> is deprecated: use inmoov_msgs-srv:RequestStatus-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <RequestStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-srv:status-val is deprecated.  Use inmoov_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RequestStatus-response>) ostream)
  "Serializes a message object of type '<RequestStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RequestStatus-response>) istream)
  "Deserializes a message object of type '<RequestStatus-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RequestStatus-response>)))
  "Returns string type for a service object of type '<RequestStatus-response>"
  "inmoov_msgs/RequestStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestStatus-response)))
  "Returns string type for a service object of type 'RequestStatus-response"
  "inmoov_msgs/RequestStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RequestStatus-response>)))
  "Returns md5sum for a message object of type '<RequestStatus-response>"
  "1ba6f49c4dbbcc62a030b0539b05a793")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RequestStatus-response)))
  "Returns md5sum for a message object of type 'RequestStatus-response"
  "1ba6f49c4dbbcc62a030b0539b05a793")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RequestStatus-response>)))
  "Returns full string definition for message of type '<RequestStatus-response>"
  (cl:format cl:nil "uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RequestStatus-response)))
  "Returns full string definition for message of type 'RequestStatus-response"
  (cl:format cl:nil "uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RequestStatus-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RequestStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RequestStatus-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RequestStatus)))
  'RequestStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RequestStatus)))
  'RequestStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RequestStatus)))
  "Returns string type for a service object of type '<RequestStatus>"
  "inmoov_msgs/RequestStatus")