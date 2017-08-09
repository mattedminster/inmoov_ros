;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::RequestStatus)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'RequestStatus (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::REQUESTSTATUS")
  (make-package "INMOOV_MSGS::REQUESTSTATUS"))
(unless (find-package "INMOOV_MSGS::REQUESTSTATUSREQUEST")
  (make-package "INMOOV_MSGS::REQUESTSTATUSREQUEST"))
(unless (find-package "INMOOV_MSGS::REQUESTSTATUSRESPONSE")
  (make-package "INMOOV_MSGS::REQUESTSTATUSRESPONSE"))

(in-package "ROS")





(defclass inmoov_msgs::RequestStatusRequest
  :super ros::object
  :slots (_caller ))

(defmethod inmoov_msgs::RequestStatusRequest
  (:init
   (&key
    ((:caller __caller) "")
    )
   (send-super :init)
   (setq _caller (string __caller))
   self)
  (:caller
   (&optional __caller)
   (if __caller (setq _caller __caller)) _caller)
  (:serialization-length
   ()
   (+
    ;; string _caller
    4 (length _caller)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _caller
       (write-long (length _caller) s) (princ _caller s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _caller
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _caller (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass inmoov_msgs::RequestStatusResponse
  :super ros::object
  :slots (_status ))

(defmethod inmoov_msgs::RequestStatusResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass inmoov_msgs::RequestStatus
  :super ros::object
  :slots ())

(setf (get inmoov_msgs::RequestStatus :md5sum-) "1ba6f49c4dbbcc62a030b0539b05a793")
(setf (get inmoov_msgs::RequestStatus :datatype-) "inmoov_msgs/RequestStatus")
(setf (get inmoov_msgs::RequestStatus :request) inmoov_msgs::RequestStatusRequest)
(setf (get inmoov_msgs::RequestStatus :response) inmoov_msgs::RequestStatusResponse)

(defmethod inmoov_msgs::RequestStatusRequest
  (:response () (instance inmoov_msgs::RequestStatusResponse :init)))

(setf (get inmoov_msgs::RequestStatusRequest :md5sum-) "1ba6f49c4dbbcc62a030b0539b05a793")
(setf (get inmoov_msgs::RequestStatusRequest :datatype-) "inmoov_msgs/RequestStatusRequest")
(setf (get inmoov_msgs::RequestStatusRequest :definition-)
      "
string caller
---
uint8 status

")

(setf (get inmoov_msgs::RequestStatusResponse :md5sum-) "1ba6f49c4dbbcc62a030b0539b05a793")
(setf (get inmoov_msgs::RequestStatusResponse :datatype-) "inmoov_msgs/RequestStatusResponse")
(setf (get inmoov_msgs::RequestStatusResponse :definition-)
      "
string caller
---
uint8 status

")



(provide :inmoov_msgs/RequestStatus "1ba6f49c4dbbcc62a030b0539b05a793")


