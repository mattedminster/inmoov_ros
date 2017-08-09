; Auto-generated. Do not edit!


(cl:in-package inmoov_msgs-msg)


;//! \htmlinclude NeoPixel.msg.html

(cl:defclass <NeoPixel> (roslisp-msg-protocol:ros-message)
  ((pixelNum
    :reader pixelNum
    :initarg :pixelNum
    :type cl:integer
    :initform 0)
   (pixel_red
    :reader pixel_red
    :initarg :pixel_red
    :type cl:integer
    :initform 0)
   (pixel_green
    :reader pixel_green
    :initarg :pixel_green
    :type cl:integer
    :initform 0)
   (pixel_blue
    :reader pixel_blue
    :initarg :pixel_blue
    :type cl:integer
    :initform 0)
   (show
    :reader show
    :initarg :show
    :type cl:integer
    :initform 0))
)

(cl:defclass NeoPixel (<NeoPixel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NeoPixel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NeoPixel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name inmoov_msgs-msg:<NeoPixel> is deprecated: use inmoov_msgs-msg:NeoPixel instead.")))

(cl:ensure-generic-function 'pixelNum-val :lambda-list '(m))
(cl:defmethod pixelNum-val ((m <NeoPixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:pixelNum-val is deprecated.  Use inmoov_msgs-msg:pixelNum instead.")
  (pixelNum m))

(cl:ensure-generic-function 'pixel_red-val :lambda-list '(m))
(cl:defmethod pixel_red-val ((m <NeoPixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:pixel_red-val is deprecated.  Use inmoov_msgs-msg:pixel_red instead.")
  (pixel_red m))

(cl:ensure-generic-function 'pixel_green-val :lambda-list '(m))
(cl:defmethod pixel_green-val ((m <NeoPixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:pixel_green-val is deprecated.  Use inmoov_msgs-msg:pixel_green instead.")
  (pixel_green m))

(cl:ensure-generic-function 'pixel_blue-val :lambda-list '(m))
(cl:defmethod pixel_blue-val ((m <NeoPixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:pixel_blue-val is deprecated.  Use inmoov_msgs-msg:pixel_blue instead.")
  (pixel_blue m))

(cl:ensure-generic-function 'show-val :lambda-list '(m))
(cl:defmethod show-val ((m <NeoPixel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader inmoov_msgs-msg:show-val is deprecated.  Use inmoov_msgs-msg:show instead.")
  (show m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NeoPixel>) ostream)
  "Serializes a message object of type '<NeoPixel>"
  (cl:let* ((signed (cl:slot-value msg 'pixelNum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pixel_red)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pixel_green)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'pixel_blue)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'show)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NeoPixel>) istream)
  "Deserializes a message object of type '<NeoPixel>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pixelNum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pixel_red) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pixel_green) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pixel_blue) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'show) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NeoPixel>)))
  "Returns string type for a message object of type '<NeoPixel>"
  "inmoov_msgs/NeoPixel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NeoPixel)))
  "Returns string type for a message object of type 'NeoPixel"
  "inmoov_msgs/NeoPixel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NeoPixel>)))
  "Returns md5sum for a message object of type '<NeoPixel>"
  "d4a1ce762728c83a5b2027e8e116f9ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NeoPixel)))
  "Returns md5sum for a message object of type 'NeoPixel"
  "d4a1ce762728c83a5b2027e8e116f9ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NeoPixel>)))
  "Returns full string definition for message of type '<NeoPixel>"
  (cl:format cl:nil "int32 pixelNum~%int32 pixel_red~%int32 pixel_green~%int32 pixel_blue~%int32 show~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NeoPixel)))
  "Returns full string definition for message of type 'NeoPixel"
  (cl:format cl:nil "int32 pixelNum~%int32 pixel_red~%int32 pixel_green~%int32 pixel_blue~%int32 show~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NeoPixel>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NeoPixel>))
  "Converts a ROS message object to a list"
  (cl:list 'NeoPixel
    (cl:cons ':pixelNum (pixelNum msg))
    (cl:cons ':pixel_red (pixel_red msg))
    (cl:cons ':pixel_green (pixel_green msg))
    (cl:cons ':pixel_blue (pixel_blue msg))
    (cl:cons ':show (show msg))
))
