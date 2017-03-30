
(cl:in-package :asdf)

(defsystem "inmoov_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MotorParameter" :depends-on ("_package_MotorParameter"))
    (:file "_package_MotorParameter" :depends-on ("_package"))
  ))