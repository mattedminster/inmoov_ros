; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-msg)


;//! \htmlinclude MotorStatus.msg.html

(cl:defclass <MotorStatus> (roslisp-msg-protocol:ros-message)
  ((joint
    :reader joint
    :initarg :joint
    :type cl:string
    :initform "")
   (bus
    :reader bus
    :initarg :bus
    :type cl:fixnum
    :initform 0)
   (servoPin
    :reader servoPin
    :initarg :servoPin
    :type cl:fixnum
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type cl:float
    :initform 0.0)
   (position
    :reader position
    :initarg :position
    :type cl:float
    :initform 0.0)
   (smooth
    :reader smooth
    :initarg :smooth
    :type cl:fixnum
    :initform 0)
   (maxSpeed
    :reader maxSpeed
    :initarg :maxSpeed
    :type cl:float
    :initform 0.0)
   (presentspeed
    :reader presentspeed
    :initarg :presentspeed
    :type cl:float
    :initform 0.0)
   (moving
    :reader moving
    :initarg :moving
    :type cl:boolean
    :initform cl:nil)
   (posraw
    :reader posraw
    :initarg :posraw
    :type cl:fixnum
    :initform 0)
   (enabled
    :reader enabled
    :initarg :enabled
    :type cl:boolean
    :initform cl:nil)
   (power
    :reader power
    :initarg :power
    :type cl:boolean
    :initform cl:nil)
   (Debug1
    :reader Debug1
    :initarg :Debug1
    :type cl:float
    :initform 0.0)
   (Debug2
    :reader Debug2
    :initarg :Debug2
    :type cl:float
    :initform 0.0)
   (Debug3
    :reader Debug3
    :initarg :Debug3
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorStatus (<MotorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-msg:<MotorStatus> is deprecated: use inmoov_msgs-msg:MotorStatus instead.")))

(cl:ensure-generic-function 'joint-val :lambda-list '(m))
(cl:defmethod joint-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:joint-val is deprecated.  Use inmoov_msgs-msg:joint instead.")
  (joint m))

(cl:ensure-generic-function 'bus-val :lambda-list '(m))
(cl:defmethod bus-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:bus-val is deprecated.  Use inmoov_msgs-msg:bus instead.")
  (bus m))

(cl:ensure-generic-function 'servoPin-val :lambda-list '(m))
(cl:defmethod servoPin-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:servoPin-val is deprecated.  Use inmoov_msgs-msg:servoPin instead.")
  (servoPin m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:goal-val is deprecated.  Use inmoov_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:position-val is deprecated.  Use inmoov_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'smooth-val :lambda-list '(m))
(cl:defmethod smooth-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:smooth-val is deprecated.  Use inmoov_msgs-msg:smooth instead.")
  (smooth m))

(cl:ensure-generic-function 'maxSpeed-val :lambda-list '(m))
(cl:defmethod maxSpeed-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:maxSpeed-val is deprecated.  Use inmoov_msgs-msg:maxSpeed instead.")
  (maxSpeed m))

(cl:ensure-generic-function 'presentspeed-val :lambda-list '(m))
(cl:defmethod presentspeed-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:presentspeed-val is deprecated.  Use inmoov_msgs-msg:presentspeed instead.")
  (presentspeed m))

(cl:ensure-generic-function 'moving-val :lambda-list '(m))
(cl:defmethod moving-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:moving-val is deprecated.  Use inmoov_msgs-msg:moving instead.")
  (moving m))

(cl:ensure-generic-function 'posraw-val :lambda-list '(m))
(cl:defmethod posraw-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:posraw-val is deprecated.  Use inmoov_msgs-msg:posraw instead.")
  (posraw m))

(cl:ensure-generic-function 'enabled-val :lambda-list '(m))
(cl:defmethod enabled-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:enabled-val is deprecated.  Use inmoov_msgs-msg:enabled instead.")
  (enabled m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:power-val is deprecated.  Use inmoov_msgs-msg:power instead.")
  (power m))

(cl:ensure-generic-function 'Debug1-val :lambda-list '(m))
(cl:defmethod Debug1-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:Debug1-val is deprecated.  Use inmoov_msgs-msg:Debug1 instead.")
  (Debug1 m))

(cl:ensure-generic-function 'Debug2-val :lambda-list '(m))
(cl:defmethod Debug2-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:Debug2-val is deprecated.  Use inmoov_msgs-msg:Debug2 instead.")
  (Debug2 m))

(cl:ensure-generic-function 'Debug3-val :lambda-list '(m))
(cl:defmethod Debug3-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:Debug3-val is deprecated.  Use inmoov_msgs-msg:Debug3 instead.")
  (Debug3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorStatus>) ostream)
  "Serializes a message object of type '<MotorStatus>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servoPin)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'goal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'smooth)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'presentspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'moving) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'posraw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'posraw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'power) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Debug1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Debug2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Debug3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorStatus>) istream)
  "Deserializes a message object of type '<MotorStatus>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servoPin)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'goal) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'smooth)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxSpeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'presentspeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'moving) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'posraw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'posraw)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'enabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'power) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Debug1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Debug2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Debug3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorStatus>)))
  "Returns string type for a message object of type '<MotorStatus>"
  "inmoov_msgs/MotorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorStatus)))
  "Returns string type for a message object of type 'MotorStatus"
  "inmoov_msgs/MotorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorStatus>)))
  "Returns md5sum for a message object of type '<MotorStatus>"
  "9168929a0bdbdd12367c31a81e54ef98")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorStatus)))
  "Returns md5sum for a message object of type 'MotorStatus"
  "9168929a0bdbdd12367c31a81e54ef98")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorStatus>)))
  "Returns full string definition for message of type '<MotorStatus>"
  (cl:format cl:nil "string   joint          # joint name for status frame (populated in motor_status_dispatcher)~%uint8    bus            # bus source for status frame (populated in motor_status_dispatcher)~%uint8    servoPin       # motor id 0-11~%float32  goal           # command position~%float32  position       # current sensed position~%uint8    smooth         #smooth setting servo is set to~%float32  maxSpeed	#max speed setting~%float32  presentspeed   # calculated rotational speed~%bool     moving         # is servo moving?~%uint16   posraw         # raw position sensor value~%bool     enabled        # is servo enabled?~%bool     power          # does servo have power?~%float32  Debug1		#Debug 1~%float32  Debug2		#Debug 2~%float32  Debug3		#Debug 3~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorStatus)))
  "Returns full string definition for message of type 'MotorStatus"
  (cl:format cl:nil "string   joint          # joint name for status frame (populated in motor_status_dispatcher)~%uint8    bus            # bus source for status frame (populated in motor_status_dispatcher)~%uint8    servoPin       # motor id 0-11~%float32  goal           # command position~%float32  position       # current sensed position~%uint8    smooth         #smooth setting servo is set to~%float32  maxSpeed	#max speed setting~%float32  presentspeed   # calculated rotational speed~%bool     moving         # is servo moving?~%uint16   posraw         # raw position sensor value~%bool     enabled        # is servo enabled?~%bool     power          # does servo have power?~%float32  Debug1		#Debug 1~%float32  Debug2		#Debug 2~%float32  Debug3		#Debug 3~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorStatus>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint))
     1
     1
     4
     4
     1
     4
     4
     1
     2
     1
     1
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorStatus
    (cl:cons ':joint (joint msg))
    (cl:cons ':bus (bus msg))
    (cl:cons ':servoPin (servoPin msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':position (position msg))
    (cl:cons ':smooth (smooth msg))
    (cl:cons ':maxSpeed (maxSpeed msg))
    (cl:cons ':presentspeed (presentspeed msg))
    (cl:cons ':moving (moving msg))
    (cl:cons ':posraw (posraw msg))
    (cl:cons ':enabled (enabled msg))
    (cl:cons ':power (power msg))
    (cl:cons ':Debug1 (Debug1 msg))
    (cl:cons ':Debug2 (Debug2 msg))
    (cl:cons ':Debug3 (Debug3 msg))
))
