
(cl:in-package :asdf)

(defsystem "ros_hue_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "huecommand" :depends-on ("_package_huecommand"))
    (:file "_package_huecommand" :depends-on ("_package"))
  ))