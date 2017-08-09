
(cl:in-package :asdf)

(defsystem "inmoov_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MotorParameter" :depends-on ("_package_MotorParameter"))
    (:file "_package_MotorParameter" :depends-on ("_package"))
    (:file "NeoPixelSetBrightness" :depends-on ("_package_NeoPixelSetBrightness"))
    (:file "_package_NeoPixelSetBrightness" :depends-on ("_package"))
    (:file "RPS" :depends-on ("_package_RPS"))
    (:file "_package_RPS" :depends-on ("_package"))
    (:file "RequestStatus" :depends-on ("_package_RequestStatus"))
    (:file "_package_RequestStatus" :depends-on ("_package"))
    (:file "inmoov_sound_play" :depends-on ("_package_inmoov_sound_play"))
    (:file "_package_inmoov_sound_play" :depends-on ("_package"))
    (:file "inmoov_voice" :depends-on ("_package_inmoov_voice"))
    (:file "_package_inmoov_voice" :depends-on ("_package"))
  ))