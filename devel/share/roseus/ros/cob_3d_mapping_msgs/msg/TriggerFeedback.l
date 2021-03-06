;; Auto-generated. Do not edit!


(when (boundp 'cob_3d_mapping_msgs::TriggerFeedback)
  (if (not (find-package "COB_3D_MAPPING_MSGS"))
    (make-package "COB_3D_MAPPING_MSGS"))
  (shadow 'TriggerFeedback (find-package "COB_3D_MAPPING_MSGS")))
(unless (find-package "COB_3D_MAPPING_MSGS::TRIGGERFEEDBACK")
  (make-package "COB_3D_MAPPING_MSGS::TRIGGERFEEDBACK"))

(in-package "ROS")
;;//! \htmlinclude TriggerFeedback.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cob_3d_mapping_msgs::TriggerFeedback
  :super ros::object
  :slots (_currentStep ))

(defmethod cob_3d_mapping_msgs::TriggerFeedback
  (:init
   (&key
    ((:currentStep __currentStep) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _currentStep __currentStep)
   self)
  (:currentStep
   (&rest __currentStep)
   (if (keywordp (car __currentStep))
       (send* _currentStep __currentStep)
     (progn
       (if __currentStep (setq _currentStep (car __currentStep)))
       _currentStep)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _currentStep
    (send _currentStep :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _currentStep
       (send _currentStep :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _currentStep
     (send _currentStep :deserialize buf ptr-) (incf ptr- (send _currentStep :serialization-length))
   ;;
   self)
  )

(setf (get cob_3d_mapping_msgs::TriggerFeedback :md5sum-) "7c51960fbfdc31dbfce9bf929242f080")
(setf (get cob_3d_mapping_msgs::TriggerFeedback :datatype-) "cob_3d_mapping_msgs/TriggerFeedback")
(setf (get cob_3d_mapping_msgs::TriggerFeedback :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#feedback
std_msgs/String currentStep

================================================================================
MSG: std_msgs/String
string data

")



(provide :cob_3d_mapping_msgs/TriggerFeedback "7c51960fbfdc31dbfce9bf929242f080")


