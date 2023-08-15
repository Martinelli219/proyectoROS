;; Auto-generated. Do not edit!


(when (boundp 'pckg::move_pos_simu)
  (if (not (find-package "PCKG"))
    (make-package "PCKG"))
  (shadow 'move_pos_simu (find-package "PCKG")))
(unless (find-package "PCKG::MOVE_POS_SIMU")
  (make-package "PCKG::MOVE_POS_SIMU"))
(unless (find-package "PCKG::MOVE_POS_SIMUREQUEST")
  (make-package "PCKG::MOVE_POS_SIMUREQUEST"))
(unless (find-package "PCKG::MOVE_POS_SIMURESPONSE")
  (make-package "PCKG::MOVE_POS_SIMURESPONSE"))

(in-package "ROS")





(defclass pckg::move_pos_simuRequest
  :super ros::object
  :slots (_pos ))

(defmethod pckg::move_pos_simuRequest
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

(defclass pckg::move_pos_simuResponse
  :super ros::object
  :slots (_ret ))

(defmethod pckg::move_pos_simuResponse
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

(defclass pckg::move_pos_simu
  :super ros::object
  :slots ())

(setf (get pckg::move_pos_simu :md5sum-) "fcf1b3f28988025a9decb7235f491f13")
(setf (get pckg::move_pos_simu :datatype-) "pckg/move_pos_simu")
(setf (get pckg::move_pos_simu :request) pckg::move_pos_simuRequest)
(setf (get pckg::move_pos_simu :response) pckg::move_pos_simuResponse)

(defmethod pckg::move_pos_simuRequest
  (:response () (instance pckg::move_pos_simuResponse :init)))

(setf (get pckg::move_pos_simuRequest :md5sum-) "fcf1b3f28988025a9decb7235f491f13")
(setf (get pckg::move_pos_simuRequest :datatype-) "pckg/move_pos_simuRequest")
(setf (get pckg::move_pos_simuRequest :definition-)
      "float64[] pos
---
bool ret

")

(setf (get pckg::move_pos_simuResponse :md5sum-) "fcf1b3f28988025a9decb7235f491f13")
(setf (get pckg::move_pos_simuResponse :datatype-) "pckg/move_pos_simuResponse")
(setf (get pckg::move_pos_simuResponse :definition-)
      "float64[] pos
---
bool ret

")



(provide :pckg/move_pos_simu "fcf1b3f28988025a9decb7235f491f13")


