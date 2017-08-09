;; Auto-generated. Do not edit!


(when (boundp 'inmoov_msgs::inmoov_sound_play)
  (if (not (find-package "INMOOV_MSGS"))
    (make-package "INMOOV_MSGS"))
  (shadow 'inmoov_sound_play (find-package "INMOOV_MSGS")))
(unless (find-package "INMOOV_MSGS::INMOOV_SOUND_PLAY")
  (make-package "INMOOV_MSGS::INMOOV_SOUND_PLAY"))
(unless (find-package "INMOOV_MSGS::INMOOV_SOUND_PLAYREQUEST")
  (make-package "INMOOV_MSGS::INMOOV_SOUND_PLAYREQUEST"))
(unless (find-package "INMOOV_MSGS::INMOOV_SOUND_PLAYRESPONSE")
  (make-package "INMOOV_MSGS::INMOOV_SOUND_PLAYRESPONSE"))

(in-package "ROS")





(defclass inmoov_msgs::inmoov_sound_playRequest
  :super ros::object
  :slots (_location ))

(defmethod inmoov_msgs::inmoov_sound_playRequest
  (:init
   (&key
    ((:location __location) "")
    )
   (send-super :init)
   (setq _location (string __location))
   self)
  (:location
   (&optional __location)
   (if __location (setq _location __location)) _location)
  (:serialization-length
   ()
   (+
    ;; string _location
    4 (length _location)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _location
       (write-long (length _location) s) (princ _location s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _location
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _location (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass inmoov_msgs::inmoov_sound_playResponse
  :super ros::object
  :slots (_data ))

(defmethod inmoov_msgs::inmoov_sound_playResponse
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

(defclass inmoov_msgs::inmoov_sound_play
  :super ros::object
  :slots ())

(setf (get inmoov_msgs::inmoov_sound_play :md5sum-) "b4c96d106202669b53526a839d3e3eba")
(setf (get inmoov_msgs::inmoov_sound_play :datatype-) "inmoov_msgs/inmoov_sound_play")
(setf (get inmoov_msgs::inmoov_sound_play :request) inmoov_msgs::inmoov_sound_playRequest)
(setf (get inmoov_msgs::inmoov_sound_play :response) inmoov_msgs::inmoov_sound_playResponse)

(defmethod inmoov_msgs::inmoov_sound_playRequest
  (:response () (instance inmoov_msgs::inmoov_sound_playResponse :init)))

(setf (get inmoov_msgs::inmoov_sound_playRequest :md5sum-) "b4c96d106202669b53526a839d3e3eba")
(setf (get inmoov_msgs::inmoov_sound_playRequest :datatype-) "inmoov_msgs/inmoov_sound_playRequest")
(setf (get inmoov_msgs::inmoov_sound_playRequest :definition-)
      "string  location
---
float32 data

")

(setf (get inmoov_msgs::inmoov_sound_playResponse :md5sum-) "b4c96d106202669b53526a839d3e3eba")
(setf (get inmoov_msgs::inmoov_sound_playResponse :datatype-) "inmoov_msgs/inmoov_sound_playResponse")
(setf (get inmoov_msgs::inmoov_sound_playResponse :definition-)
      "string  location
---
float32 data

")



(provide :inmoov_msgs/inmoov_sound_play "b4c96d106202669b53526a839d3e3eba")


