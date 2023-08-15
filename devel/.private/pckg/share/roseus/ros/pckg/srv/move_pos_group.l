;; Auto-generated. Do not edit!


(when (boundp 'pckg::move_pos_group)
  (if (not (find-package "PCKG"))
    (make-package "PCKG"))
  (shadow 'move_pos_group (find-package "PCKG")))
(unless (find-package "PCKG::MOVE_POS_GROUP")
  (make-package "PCKG::MOVE_POS_GROUP"))
(unless (find-package "PCKG::MOVE_POS_GROUPREQUEST")
  (make-package "PCKG::MOVE_POS_GROUPREQUEST"))
(unless (find-package "PCKG::MOVE_POS_GROUPRESPONSE")
  (make-package "PCKG::MOVE_POS_GROUPRESPONSE"))

(in-package "ROS")





(defclass pckg::move_pos_groupRequest
  :super ros::object
  :slots (_pos ))

(defmethod pckg::move_pos_groupRequest
  (:init
   (&key
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pos __pos)
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; float64[] _pos
    (* 8    (length _pos)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _pos
     (write-long (length _pos) s)
     (dotimes (i (length _pos))
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _pos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pos (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pos i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass pckg::move_pos_groupResponse
  :super ros::object
  :slots (_ret ))

(defmethod pckg::move_pos_groupResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional (__ret :null))
   (if (not (eq __ret :null)) (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pckg::move_pos_group
  :super ros::object
  :slots ())

(setf (get pckg::move_pos_group :md5sum-) "fcf1b3f28988025a9decb7235f491f13")
(setf (get pckg::move_pos_group :datatype-) "pckg/move_pos_group")
(setf (get pckg::move_pos_group :request) pckg::move_pos_groupRequest)
(setf (get pckg::move_pos_group :response) pckg::move_pos_groupResponse)

(defmethod pckg::move_pos_groupRequest
  (:response () (instance pckg::move_pos_groupResponse :init)))

(setf (get pckg::move_pos_groupRequest :md5sum-) "fcf1b3f28988025a9decb7235f491f13")
(setf (get pckg::move_pos_groupRequest :datatype-) "pckg/move_pos_groupRequest")
(setf (get pckg::move_pos_groupRequest :definition-)
      "float64[] pos
---
bool ret

")

(setf (get pckg::move_pos_groupResponse :md5sum-) "fcf1b3f28988025a9decb7235f491f13")
(setf (get pckg::move_pos_groupResponse :datatype-) "pckg/move_pos_groupResponse")
(setf (get pckg::move_pos_groupResponse :definition-)
      "float64[] pos
---
bool ret

")



(provide :pckg/move_pos_group "fcf1b3f28988025a9decb7235f491f13")


