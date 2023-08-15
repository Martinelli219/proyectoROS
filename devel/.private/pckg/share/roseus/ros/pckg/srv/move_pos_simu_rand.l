;; Auto-generated. Do not edit!


(when (boundp 'pckg::move_pos_simu_rand)
  (if (not (find-package "PCKG"))
    (make-package "PCKG"))
  (shadow 'move_pos_simu_rand (find-package "PCKG")))
(unless (find-package "PCKG::MOVE_POS_SIMU_RAND")
  (make-package "PCKG::MOVE_POS_SIMU_RAND"))
(unless (find-package "PCKG::MOVE_POS_SIMU_RANDREQUEST")
  (make-package "PCKG::MOVE_POS_SIMU_RANDREQUEST"))
(unless (find-package "PCKG::MOVE_POS_SIMU_RANDRESPONSE")
  (make-package "PCKG::MOVE_POS_SIMU_RANDRESPONSE"))

(in-package "ROS")





(defclass pckg::move_pos_simu_randRequest
  :super ros::object
  :slots ())

(defmethod pckg::move_pos_simu_randRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pckg::move_pos_simu_randResponse
  :super ros::object
  :slots (_ret ))

(defmethod pckg::move_pos_simu_randResponse
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

(defclass pckg::move_pos_simu_rand
  :super ros::object
  :slots ())

(setf (get pckg::move_pos_simu_rand :md5sum-) "e2cc9e9d8c464550830df49c160979ad")
(setf (get pckg::move_pos_simu_rand :datatype-) "pckg/move_pos_simu_rand")
(setf (get pckg::move_pos_simu_rand :request) pckg::move_pos_simu_randRequest)
(setf (get pckg::move_pos_simu_rand :response) pckg::move_pos_simu_randResponse)

(defmethod pckg::move_pos_simu_randRequest
  (:response () (instance pckg::move_pos_simu_randResponse :init)))

(setf (get pckg::move_pos_simu_randRequest :md5sum-) "e2cc9e9d8c464550830df49c160979ad")
(setf (get pckg::move_pos_simu_randRequest :datatype-) "pckg/move_pos_simu_randRequest")
(setf (get pckg::move_pos_simu_randRequest :definition-)
      "---
bool ret

")

(setf (get pckg::move_pos_simu_randResponse :md5sum-) "e2cc9e9d8c464550830df49c160979ad")
(setf (get pckg::move_pos_simu_randResponse :datatype-) "pckg/move_pos_simu_randResponse")
(setf (get pckg::move_pos_simu_randResponse :definition-)
      "---
bool ret

")



(provide :pckg/move_pos_simu_rand "e2cc9e9d8c464550830df49c160979ad")


