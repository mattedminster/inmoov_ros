
(cl:in-package :asdf)

(defsystem "inmoov_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LeapFrame" :depends-on ("_package_LeapFrame"))
    (:file "_package_LeapFrame" :depends-on ("_package"))
    (:file "LeapGesture" :depends-on ("_package_LeapGesture"))
    (:file "_package_LeapGesture" :depends-on ("_package"))
    (:file "LeapHand" :depends-on ("_package_LeapHand"))
    (:file "_package_LeapHand" :depends-on ("_package"))
    (:file "LeapPointable" :depends-on ("_package_LeapPointable"))
    (:file "_package_LeapPointable" :depends-on ("_package"))
    (:file "MotorCommand" :depends-on ("_package_MotorCommand"))
    (:file "_package_MotorCommand" :depends-on ("_package"))
    (:file "MotorStatus" :depends-on ("_package_MotorStatus"))
    (:file "_package_MotorStatus" :depends-on ("_package"))
    (:file "NeoPixel" :depends-on ("_package_NeoPixel"))
    (:file "_package_NeoPixel" :depends-on ("_package"))
    (:file "NeoPixel_command" :depends-on ("_package_NeoPixel_command"))
    (:file "_package_NeoPixel_command" :depends-on ("_package"))
    (:file "ServoSetup" :depends-on ("_package_ServoSetup"))
    (:file "_package_ServoSetup" :depends-on ("_package"))
    (:file "Status" :depends-on ("_package_Status"))
    (:file "_package_Status" :depends-on ("_package"))
  ))