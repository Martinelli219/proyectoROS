;; Auto-generated. Do not edit!


(when (boundp 'yocs_msgs::DockingInteractorResult)
  (if (not (find-package "YOCS_MSGS"))
    (make-package "YOCS_MSGS"))
  (shadow 'DockingInteractorResult (find-package "YOCS_MSGS")))
(unless (find-package "YOCS_MSGS::DOCKINGINTERACTORRESULT")
  (make-package "YOCS_MSGS::DOCKINGINTERACTORRESULT"))

(in-package "ROS")
;;//! \htmlinclude DockingInteractorResult.msg.html


(defclass yocs_msgs::DockingInteractorResult
  :super ros::object
  :slots (_success _message ))

(defmethod yocs_msgs::DockingInteractorResult
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get yocs_msgs::DockingInteractorResult :md5sum-) "937c9679a518e3a18d831e57125ea522")
(setf (get yocs_msgs::DockingInteractorResult :datatype-) "yocs_msgs/DockingInteractorResult")
(setf (get yocs_msgs::DockingInteractorResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Response
bool success
string message

")



(provide :yocs_msgs/DockingInteractorResult "937c9679a518e3a18d831e57125ea522")

