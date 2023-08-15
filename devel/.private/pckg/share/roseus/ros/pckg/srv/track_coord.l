;; Auto-generated. Do not edit!


(when (boundp 'pckg::track_coord)
  (if (not (find-package "PCKG"))
    (make-package "PCKG"))
  (shadow 'track_coord (find-package "PCKG")))
(unless (find-package "PCKG::TRACK_COORD")
  (make-package "PCKG::TRACK_COORD"))
(unless (find-package "PCKG::TRACK_COORDREQUEST")
  (make-package "PCKG::TRACK_COORDREQUEST"))
(unless (find-package "PCKG::TRACK_COORDRESPONSE")
  (make-package "PCKG::TRACK_COORDRESPONSE"))

(in-package "ROS")





(defclass pckg::track_coordRequest
  :super ros::object
  :slots (_pos ))

(defmethod pckg::track_coordRequest
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

(defclass pckg::track_coordResponse
  :super ros::object
  :slots (_ret ))

(defmethod pckg::track_coordResponse
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

(defclass pckg::track_coord
  :super ros::object
  :slots ())

(setf (get pckg::track_coord :md5sum-) "fcf1b3f28988025a9decb7235f491f13")
(setf (get pckg::track_coord :datatype-) "pckg/track_coord")
(setf (get pckg::track_coord :request) pckg::track_coordRequest)
(setf (get pckg::track_coord :response) pckg::track_coordResponse)

(defmethod pckg::track_coordRequest
  (:response () (instance pckg::track_coordResponse :init)))

(setf (get pckg::track_coordRequest :md5sum-) "fcf1b3f28988025a9decb7235f491f13")
(setf (get pckg::track_coordRequest :datatype-) "pckg/track_coordRequest")
(setf (get pckg::track_coordRequest :definition-)
      "float64[] pos
---
bool ret
")

(setf (get pckg::track_coordResponse :md5sum-) "fcf1b3f28988025a9decb7235f491f13")
(setf (get pckg::track_coordResponse :datatype-) "pckg/track_coordResponse")
(setf (get pckg::track_coordResponse :definition-)
      "float64[] pos
---
bool ret
")



(provide :pckg/track_coord "fcf1b3f28988025a9decb7235f491f13")


