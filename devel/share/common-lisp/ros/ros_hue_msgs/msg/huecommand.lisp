; Auto-generated. Do not edit!


(cl:in-package ros_hue_msgs-msg)


;//! \htmlinclude huecommand.msg.html

(cl:defclass <huecommand> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:string
    :initform "")
   (modevalue
    :reader modevalue
    :initarg :modevalue
    :type cl:string
    :initform "")
   (on
    :reader on
    :initarg :on
    :type cl:boolean
    :initform cl:nil)
   (bri
    :reader bri
    :initarg :bri
    :type cl:integer
    :initform 0)
   (hue
    :reader hue
    :initarg :hue
    :type cl:integer
    :initform 0)
   (sat
    :reader sat
    :initarg :sat
    :type cl:integer
    :initform 0))
)

(cl:defclass huecommand (<huecommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <huecommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'huecommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_hue_msgs-msg:<huecommand> is deprecated: use ros_hue_msgs-msg:huecommand instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <huecommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_hue_msgs-msg:mode-val is deprecated.  Use ros_hue_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'modevalue-val :lambda-list '(m))
(cl:defmethod modevalue-val ((m <huecommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_hue_msgs-msg:modevalue-val is deprecated.  Use ros_hue_msgs-msg:modevalue instead.")
  (modevalue m))

(cl:ensure-generic-function 'on-val :lambda-list '(m))
(cl:defmethod on-val ((m <huecommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_hue_msgs-msg:on-val is deprecated.  Use ros_hue_msgs-msg:on instead.")
  (on m))

(cl:ensure-generic-function 'bri-val :lambda-list '(m))
(cl:defmethod bri-val ((m <huecommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_hue_msgs-msg:bri-val is deprecated.  Use ros_hue_msgs-msg:bri instead.")
  (bri m))

(cl:ensure-generic-function 'hue-val :lambda-list '(m))
(cl:defmethod hue-val ((m <huecommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_hue_msgs-msg:hue-val is deprecated.  Use ros_hue_msgs-msg:hue instead.")
  (hue m))

(cl:ensure-generic-function 'sat-val :lambda-list '(m))
(cl:defmethod sat-val ((m <huecommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_hue_msgs-msg:sat-val is deprecated.  Use ros_hue_msgs-msg:sat instead.")
  (sat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <huecommand>) ostream)
  "Serializes a message object of type '<huecommand>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'modevalue))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'modevalue))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'on) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bri)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bri)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bri)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bri)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'hue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'hue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sat)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <huecommand>) istream)
  "Deserializes a message object of type '<huecommand>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'modevalue) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'modevalue) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'on) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bri)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bri)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bri)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bri)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'hue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'hue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sat)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<huecommand>)))
  "Returns string type for a message object of type '<huecommand>"
  "ros_hue_msgs/huecommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'huecommand)))
  "Returns string type for a message object of type 'huecommand"
  "ros_hue_msgs/huecommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<huecommand>)))
  "Returns md5sum for a message object of type '<huecommand>"
  "9ac66e96124ba30aaff7d6cdedaa1ac6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'huecommand)))
  "Returns md5sum for a message object of type 'huecommand"
  "9ac66e96124ba30aaff7d6cdedaa1ac6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<huecommand>)))
  "Returns full string definition for message of type '<huecommand>"
  (cl:format cl:nil "string   mode                  ~%string   modevalue~%bool on~%uint32 bri~%uint32 hue~%uint32 sat             ~%	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'huecommand)))
  "Returns full string definition for message of type 'huecommand"
  (cl:format cl:nil "string   mode                  ~%string   modevalue~%bool on~%uint32 bri~%uint32 hue~%uint32 sat             ~%	~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <huecommand>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'mode))
     4 (cl:length (cl:slot-value msg 'modevalue))
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <huecommand>))
  "Converts a ROS message object to a list"
  (cl:list 'huecommand
    (cl:cons ':mode (mode msg))
    (cl:cons ':modevalue (modevalue msg))
    (cl:cons ':on (on msg))
    (cl:cons ':bri (bri msg))
    (cl:cons ':hue (hue msg))
    (cl:cons ':sat (sat msg))
))
