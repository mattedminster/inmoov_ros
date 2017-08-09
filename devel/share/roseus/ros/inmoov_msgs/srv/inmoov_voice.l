;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::inmoov_voice)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'inmoov_voice (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::INMOOV_VOICE")
  (make-package "INMOOV_MSGS::INMOOV_VOICE"))
(unless (find-package "INMOOV_MSGS::INMOOV_VOICEREQUEST")
  (make-package "INMOOV_MSGS::INMOOV_VOICEREQUEST"))
(unless (find-package "INMOOV_MSGS::INMOOV_VOICERESPONSE")
  (make-package "INMOOV_MSGS::INMOOV_VOICERESPONSE"))

(in-package "ROS")





(defclass inmoov_msgs::inmoov_voiceRequest
  :super ros::object
  :slots (_toSpeak ))

(defmethod inmoov_msgs::inmoov_voiceRequest
  (:init
   (&key
    ((:toSpeak __toSpeak) "")
    )
   (send-super :init)
   (setq _toSpeak (string __toSpeak))
   self)
  (:toSpeak
   (&optional __toSpeak)
   (if __toSpeak (setq _toSpeak __toSpeak)) _toSpeak)
  (:serialization-length
   ()
   (+
    ;; string _toSpeak
    4 (length _toSpeak)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _toSpeak
       (write-long (length _toSpeak) s) (princ _toSpeak s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _toSpeak
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _toSpeak (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass inmoov_msgs::inmoov_voiceResponse
  :super ros::object
  :slots (_data ))

(defmethod inmoov_msgs::inmoov_voiceResponse
  (:init
   (&key
    ((:data __data) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float32 _data
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _data
       (sys::poke _data (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _data
     (setq _data (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass inmoov_msgs::inmoov_voice
  :super ros::object
  :slots ())

(setf (get inmoov_msgs::inmoov_voice :md5sum-) "9c774e72535a80436c5470ca70b0364d")
(setf (get inmoov_msgs::inmoov_voice :datatype-) "inmoov_msgs/inmoov_voice")
(setf (get inmoov_msgs::inmoov_voice :request) inmoov_msgs::inmoov_voiceRequest)
(setf (get inmoov_msgs::inmoov_voice :response) inmoov_msgs::inmoov_voiceResponse)

(defmethod inmoov_msgs::inmoov_voiceRequest
  (:response () (instance inmoov_msgs::inmoov_voiceResponse :init)))

(setf (get inmoov_msgs::inmoov_voiceRequest :md5sum-) "9c774e72535a80436c5470ca70b0364d")
(setf (get inmoov_msgs::inmoov_voiceRequest :datatype-) "inmoov_msgs/inmoov_voiceRequest")
(setf (get inmoov_msgs::inmoov_voiceRequest :definition-)
      "string   toSpeak
---
float32 data

")

(setf (get inmoov_msgs::inmoov_voiceResponse :md5sum-) "9c774e72535a80436c5470ca70b0364d")
(setf (get inmoov_msgs::inmoov_voiceResponse :datatype-) "inmoov_msgs/inmoov_voiceResponse")
(setf (get inmoov_msgs::inmoov_voiceResponse :definition-)
      "string   toSpeak
---
float32 data

")



(provide :inmoov_msgs/inmoov_voice "9c774e72535a80436c5470ca70b0364d")


