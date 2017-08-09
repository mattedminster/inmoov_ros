; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-msg)


;//! \htmlinclude ServoSetup.msg.html

(cl:defclass <ServoSetup> (roslisp-msg-protocol:ros-message)
  ((servoPin
    :reader servoPin
    :initarg :servoPin
    :type cl:integer
    :initform 0)
   (sensorPin
    :reader sensorPin
    :initarg :sensorPin
    :type cl:integer
    :initform 0)
   (minAngle
    :reader minAngle
    :initarg :minAngle
    :type cl:float
    :initform 0.0)
   (maxAngle
    :reader maxAngle
    :initarg :maxAngle
    :type cl:float
    :initform 0.0)
   (rest
    :reader rest
    :initarg :rest
    :type cl:float
    :initform 0.0)
   (minPulse
    :reader minPulse
    :initarg :minPulse
    :type cl:float
    :initform 0.0)
   (maxPulse
    :reader maxPulse
    :initarg :maxPulse
    :type cl:float
    :initform 0.0)
   (minSensor
    :reader minSensor
    :initarg :minSensor
    :type cl:float
    :initform 0.0)
   (maxSensor
    :reader maxSensor
    :initarg :maxSensor
    :type cl:float
    :initform 0.0)
   (smoothing
    :reader smoothing
    :initarg :smoothing
    :type cl:integer
    :initform 0)
   (maxSpeed
    :reader maxSpeed
    :initarg :maxSpeed
    :type cl:float
    :initform 0.0))
)

(cl:defclass ServoSetup (<ServoSetup>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoSetup>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoSetup)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-msg:<ServoSetup> is deprecated: use inmoov_msgs-msg:ServoSetup instead.")))

(cl:ensure-generic-function 'servoPin-val :lambda-list '(m))
(cl:defmethod servoPin-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:servoPin-val is deprecated.  Use inmoov_msgs-msg:servoPin instead.")
  (servoPin m))

(cl:ensure-generic-function 'sensorPin-val :lambda-list '(m))
(cl:defmethod sensorPin-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:sensorPin-val is deprecated.  Use inmoov_msgs-msg:sensorPin instead.")
  (sensorPin m))

(cl:ensure-generic-function 'minAngle-val :lambda-list '(m))
(cl:defmethod minAngle-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:minAngle-val is deprecated.  Use inmoov_msgs-msg:minAngle instead.")
  (minAngle m))

(cl:ensure-generic-function 'maxAngle-val :lambda-list '(m))
(cl:defmethod maxAngle-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:maxAngle-val is deprecated.  Use inmoov_msgs-msg:maxAngle instead.")
  (maxAngle m))

(cl:ensure-generic-function 'rest-val :lambda-list '(m))
(cl:defmethod rest-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:rest-val is deprecated.  Use inmoov_msgs-msg:rest instead.")
  (rest m))

(cl:ensure-generic-function 'minPulse-val :lambda-list '(m))
(cl:defmethod minPulse-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:minPulse-val is deprecated.  Use inmoov_msgs-msg:minPulse instead.")
  (minPulse m))

(cl:ensure-generic-function 'maxPulse-val :lambda-list '(m))
(cl:defmethod maxPulse-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:maxPulse-val is deprecated.  Use inmoov_msgs-msg:maxPulse instead.")
  (maxPulse m))

(cl:ensure-generic-function 'minSensor-val :lambda-list '(m))
(cl:defmethod minSensor-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:minSensor-val is deprecated.  Use inmoov_msgs-msg:minSensor instead.")
  (minSensor m))

(cl:ensure-generic-function 'maxSensor-val :lambda-list '(m))
(cl:defmethod maxSensor-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:maxSensor-val is deprecated.  Use inmoov_msgs-msg:maxSensor instead.")
  (maxSensor m))

(cl:ensure-generic-function 'smoothing-val :lambda-list '(m))
(cl:defmethod smoothing-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:smoothing-val is deprecated.  Use inmoov_msgs-msg:smoothing instead.")
  (smoothing m))

(cl:ensure-generic-function 'maxSpeed-val :lambda-list '(m))
(cl:defmethod maxSpeed-val ((m <ServoSetup>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:maxSpeed-val is deprecated.  Use inmoov_msgs-msg:maxSpeed instead.")
  (maxSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoSetup>) ostream)
  "Serializes a message object of type '<ServoSetup>"
  (cl:let* ((signed (cl:slot-value msg 'servoPin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'sensorPin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rest))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minPulse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxPulse))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minSensor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxSensor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'smoothing)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxSpeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoSetup>) istream)
  "Deserializes a message object of type '<ServoSetup>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'servoPin) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sensorPin) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rest) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minPulse) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxPulse) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minSensor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxSensor) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'smoothing) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxSpeed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoSetup>)))
  "Returns string type for a message object of type '<ServoSetup>"
  "inmoov_msgs/ServoSetup")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoSetup)))
  "Returns string type for a message object of type 'ServoSetup"
  "inmoov_msgs/ServoSetup")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoSetup>)))
  "Returns md5sum for a message object of type '<ServoSetup>"
  "9352507e0ae979f797e9e298510545cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoSetup)))
  "Returns md5sum for a message object of type 'ServoSetup"
  "9352507e0ae979f797e9e298510545cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoSetup>)))
  "Returns full string definition for message of type '<ServoSetup>"
  (cl:format cl:nil "int32 servoPin 		#pin number for Servo~%int32 sensorPin		#pin number for Sensor~%float32 minAngle		#min physical angle of joint~%float32 maxAngle		#max physical angle of joint~%float32 rest			#rest angle~%float32 minPulse		#min Pulse for the servo - physical robot should be at min angle when this is set~%float32 maxPulse		#max Pulse for the servo - physical robot should be at max angle when this is set~%float32 minSensor		#min reading for sensor~%float32 maxSensor		#max reading for sensor~%int32 smoothing		#sets default smoothing pattern for joint~%float32 maxSpeed		#sets maxspeed~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoSetup)))
  "Returns full string definition for message of type 'ServoSetup"
  (cl:format cl:nil "int32 servoPin 		#pin number for Servo~%int32 sensorPin		#pin number for Sensor~%float32 minAngle		#min physical angle of joint~%float32 maxAngle		#max physical angle of joint~%float32 rest			#rest angle~%float32 minPulse		#min Pulse for the servo - physical robot should be at min angle when this is set~%float32 maxPulse		#max Pulse for the servo - physical robot should be at max angle when this is set~%float32 minSensor		#min reading for sensor~%float32 maxSensor		#max reading for sensor~%int32 smoothing		#sets default smoothing pattern for joint~%float32 maxSpeed		#sets maxspeed~%~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoSetup>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoSetup>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoSetup
    (cl:cons ':servoPin (servoPin msg))
    (cl:cons ':sensorPin (sensorPin msg))
    (cl:cons ':minAngle (minAngle msg))
    (cl:cons ':maxAngle (maxAngle msg))
    (cl:cons ':rest (rest msg))
    (cl:cons ':minPulse (minPulse msg))
    (cl:cons ':maxPulse (maxPulse msg))
    (cl:cons ':minSensor (minSensor msg))
    (cl:cons ':maxSensor (maxSensor msg))
    (cl:cons ':smoothing (smoothing msg))
    (cl:cons ':maxSpeed (maxSpeed msg))
))
