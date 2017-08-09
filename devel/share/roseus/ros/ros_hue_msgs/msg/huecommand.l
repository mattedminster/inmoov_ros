;; Auto-generated. Do not edit!


(when (boundp 'ros_hue_msgs::huecommand)
  (if (not (find-package "ROS_HUE_MSGS"))
    (make-package "ROS_HUE_MSGS"))
  (shadow 'huecommand (find-package "ROS_HUE_MSGS")))
(unless (find-package "ROS_HUE_MSGS::HUECOMMAND")
  (make-package "ROS_HUE_MSGS::HUECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude huecommand.msg.html


(defclass ros_hue_msgs::huecommand
  :super ros::object
  :slots (_mode _modevalue _on _bri _hue _sat ))

(defmethod ros_hue_msgs::huecommand
  (:init
   (&key
    ((:mode __mode) "")
    ((:modevalue __modevalue) "")
    ((:on __on) nil)
    ((:bri __bri) 0)
    ((:hue __hue) 0)
    ((:sat __sat) 0)
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _modevalue (string __modevalue))
   (setq _on __on)
   (setq _bri (round __bri))
   (setq _hue (round __hue))
   (setq _sat (round __sat))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:modevalue
   (&optional __modevalue)
   (if __modevalue (setq _modevalue __modevalue)) _modevalue)
  (:on
   (&optional __on)
   (if __on (setq _on __on)) _on)
  (:bri
   (&optional __bri)
   (if __bri (setq _bri __bri)) _bri)
  (:hue
   (&optional __hue)
   (if __hue (setq _hue __hue)) _hue)
  (:sat
   (&optional __sat)
   (if __sat (setq _sat __sat)) _sat)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; string _modevalue
    4 (length _modevalue)
    ;; bool _on
    1
    ;; uint32 _bri
    4
    ;; uint32 _hue
    4
    ;; uint32 _sat
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string _modevalue
       (write-long (length _modevalue) s) (princ _modevalue s)
     ;; bool _on
       (if _on (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _bri
       (write-long _bri s)
     ;; uint32 _hue
       (write-long _hue s)
     ;; uint32 _sat
       (write-long _sat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _modevalue
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _modevalue (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _on
     (setq _on (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _bri
     (setq _bri (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _hue
     (setq _hue (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _sat
     (setq _sat (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ros_hue_msgs::huecommand :md5sum-) "9ac66e96124ba30aaff7d6cdedaa1ac6")
(setf (get ros_hue_msgs::huecommand :datatype-) "ros_hue_msgs/huecommand")
(setf (get ros_hue_msgs::huecommand :definition-)
      "string   mode                  
string   modevalue
bool on
uint32 bri
uint32 hue
uint32 sat             
	


")



(provide :ros_hue_msgs/huecommand "9ac66e96124ba30aaff7d6cdedaa1ac6")


