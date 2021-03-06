
(cl:in-package :asdf)

(defsystem "image_recognition_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "Annotation" :depends-on ("_package_Annotation"))
    (:file "_package_Annotation" :depends-on ("_package"))
    (:file "BodypartDetection" :depends-on ("_package_BodypartDetection"))
    (:file "_package_BodypartDetection" :depends-on ("_package"))
    (:file "CategoricalDistribution" :depends-on ("_package_CategoricalDistribution"))
    (:file "_package_CategoricalDistribution" :depends-on ("_package"))
    (:file "CategoryProbability" :depends-on ("_package_CategoryProbability"))
    (:file "_package_CategoryProbability" :depends-on ("_package"))
    (:file "FaceProperties" :depends-on ("_package_FaceProperties"))
    (:file "_package_FaceProperties" :depends-on ("_package"))
    (:file "PersonDetection" :depends-on ("_package_PersonDetection"))
    (:file "_package_PersonDetection" :depends-on ("_package"))
    (:file "Recognition" :depends-on ("_package_Recognition"))
    (:file "_package_Recognition" :depends-on ("_package"))
  ))