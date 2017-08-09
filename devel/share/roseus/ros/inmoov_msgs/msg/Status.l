;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::Status)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'Status (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::STATUS")
  (make-package "INMOOV_MSGS::STATUS"))

(in-package "ROS")
;;//! \htmlinclude Status.msg.html


(intern "*SEVERITY_INFO*" (find-package "INMOOV_MSGS::STATUS"))
(shadow '*SEVERITY_INFO* (find-package "INMOOV_MSGS::STATUS"))
(defconstant inmoov_msgs::Status::*SEVERITY_INFO* 0)
(intern "*SEVERITY_WARNING*" (find-package "INMOOV_MSGS::STATUS"))
(shadow '*SEVERITY_WARNING* (find-package "INMOOV_MSGS::STATUS"))
(defconstant inmoov_msgs::Status::*SEVERITY_WARNING* 1)
(intern "*SEVERITY_ERROR*" (find-package "INMOOV_MSGS::STATUS"))
(shadow '*SEVERITY_ERROR* (find-package "INMOOV_MSGS::STATUS"))
(defconstant inmoov_msgs::Status::*SEVERITY_ERROR* 2)
(intern "*SEVERITY_FATAL*" (find-package "INMOOV_MSGS::STATUS"))
(shadow '*SEVERITY_FATAL* (find-package "INMOOV_MSGS::STATUS"))
(defconstant inmoov_msgs::Status::*SEVERITY_FATAL* 3)
(defclass inmoov_msgs::Status
  :super ros::object
  :slots (_component _status _severity _message ))

(defmethod inmoov_msgs::Status
  (:init
   (&key
    ((:component __component) "")
    ((:status __status) nil)
    ((:severity __severity) 0)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _component (string __component))
   (setq _status __status)
   (setq _severity (round __severity))
   (setq _message (string __message))
   self)
  (:component
   (&optional __component)
   (if __component (setq _component __component)) _component)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:severity
   (&optional __severity)
   (if __severity (setq _severity __severity)) _severity)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _component
    4 (length _component)
    ;; bool _status
    1
    ;; uint8 _severity
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _component
       (write-long (length _component) s) (princ _component s)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _severity
       (write-byte _severity s)
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _component
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _component (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _severity
     (setq _severity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get inmoov_msgs::Status :md5sum-) "148ef940c96440f91ff132cdf07570ea")
(setf (get inmoov_msgs::Status :datatype-) "inmoov_msgs/Status")
(setf (get inmoov_msgs::Status :definition-)
      "# Status reporting message
#
#
uint8 SEVERITY_INFO=0
uint8 SEVERITY_WARNING=1
uint8 SEVERITY_ERROR=2
uint8 SEVERITY_FATAL=3
string  component
bool    status
uint8   severity
string  message

")



(provide :inmoov_msgs/Status "148ef940c96440f91ff132cdf07570ea")


