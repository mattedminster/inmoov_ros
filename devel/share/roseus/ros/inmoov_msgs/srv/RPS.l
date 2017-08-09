;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::RPS)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'RPS (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::RPS")
  (make-package "INMOOV_MSGS::RPS"))
(unless (find-package "INMOOV_MSGS::RPSREQUEST")
  (make-package "INMOOV_MSGS::RPSREQUEST"))
(unless (find-package "INMOOV_MSGS::RPSRESPONSE")
  (make-package "INMOOV_MSGS::RPSRESPONSE"))

(in-package "ROS")





(defclass inmoov_msgs::RPSRequest
  :super ros::object
  :slots (_numOfSamples ))

(defmethod inmoov_msgs::RPSRequest
  (:init
   (&key
    ((:numOfSamples __numOfSamples) 0)
    )
   (send-super :init)
   (setq _numOfSamples (round __numOfSamples))
   self)
  (:numOfSamples
   (&optional __numOfSamples)
   (if __numOfSamples (setq _numOfSamples __numOfSamples)) _numOfSamples)
  (:serialization-length
   ()
   (+
    ;; uint8 _numOfSamples
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _numOfSamples
       (write-byte _numOfSamples s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _numOfSamples
     (setq _numOfSamples (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass inmoov_msgs::RPSResponse
  :super ros::object
  :slots (_optMove ))

(defmethod inmoov_msgs::RPSResponse
  (:init
   (&key
    ((:optMove __optMove) "")
    )
   (send-super :init)
   (setq _optMove (string __optMove))
   self)
  (:optMove
   (&optional __optMove)
   (if __optMove (setq _optMove __optMove)) _optMove)
  (:serialization-length
   ()
   (+
    ;; string _optMove
    4 (length _optMove)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _optMove
       (write-long (length _optMove) s) (princ _optMove s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _optMove
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _optMove (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass inmoov_msgs::RPS
  :super ros::object
  :slots ())

(setf (get inmoov_msgs::RPS :md5sum-) "9acda9860bc8c37eb184a52b3d4300b0")
(setf (get inmoov_msgs::RPS :datatype-) "inmoov_msgs/RPS")
(setf (get inmoov_msgs::RPS :request) inmoov_msgs::RPSRequest)
(setf (get inmoov_msgs::RPS :response) inmoov_msgs::RPSResponse)

(defmethod inmoov_msgs::RPSRequest
  (:response () (instance inmoov_msgs::RPSResponse :init)))

(setf (get inmoov_msgs::RPSRequest :md5sum-) "9acda9860bc8c37eb184a52b3d4300b0")
(setf (get inmoov_msgs::RPSRequest :datatype-) "inmoov_msgs/RPSRequest")
(setf (get inmoov_msgs::RPSRequest :definition-)
      "uint8  numOfSamples
---
string optMove

")

(setf (get inmoov_msgs::RPSResponse :md5sum-) "9acda9860bc8c37eb184a52b3d4300b0")
(setf (get inmoov_msgs::RPSResponse :datatype-) "inmoov_msgs/RPSResponse")
(setf (get inmoov_msgs::RPSResponse :definition-)
      "uint8  numOfSamples
---
string optMove

")



(provide :inmoov_msgs/RPS "9acda9860bc8c37eb184a52b3d4300b0")


