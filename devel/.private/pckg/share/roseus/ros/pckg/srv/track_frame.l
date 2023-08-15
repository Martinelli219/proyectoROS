;; Auto-generated. Do not edit!


(when (boundp 'pckg::track_frame)
  (if (not (find-package "PCKG"))
    (make-package "PCKG"))
  (shadow 'track_frame (find-package "PCKG")))
(unless (find-package "PCKG::TRACK_FRAME")
  (make-package "PCKG::TRACK_FRAME"))
(unless (find-package "PCKG::TRACK_FRAMEREQUEST")
  (make-package "PCKG::TRACK_FRAMEREQUEST"))
(unless (find-package "PCKG::TRACK_FRAMERESPONSE")
  (make-package "PCKG::TRACK_FRAMERESPONSE"))

(in-package "ROS")





(defclass pckg::track_frameRequest
  :super ros::object
  :slots (_frame ))

(defmethod pckg::track_frameRequest
  (:init
   (&key
    ((:frame __frame) "")
    )
   (send-super :init)
   (setq _frame (string __frame))
   self)
  (:frame
   (&optional __frame)
   (if __frame (setq _frame __frame)) _frame)
  (:serialization-length
   ()
   (+
    ;; string _frame
    4 (length _frame)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _frame
       (write-long (length _frame) s) (princ _frame s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _frame
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _frame (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pckg::track_frameResponse
  :super ros::object
  :slots (_ret ))

(defmethod pckg::track_frameResponse
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

(defclass pckg::track_frame
  :super ros::object
  :slots ())

(setf (get pckg::track_frame :md5sum-) "94287391629a6739a22a5918862fa5b1")
(setf (get pckg::track_frame :datatype-) "pckg/track_frame")
(setf (get pckg::track_frame :request) pckg::track_frameRequest)
(setf (get pckg::track_frame :response) pckg::track_frameResponse)

(defmethod pckg::track_frameRequest
  (:response () (instance pckg::track_frameResponse :init)))

(setf (get pckg::track_frameRequest :md5sum-) "94287391629a6739a22a5918862fa5b1")
(setf (get pckg::track_frameRequest :datatype-) "pckg/track_frameRequest")
(setf (get pckg::track_frameRequest :definition-)
      "string frame
---
bool ret
")

(setf (get pckg::track_frameResponse :md5sum-) "94287391629a6739a22a5918862fa5b1")
(setf (get pckg::track_frameResponse :datatype-) "pckg/track_frameResponse")
(setf (get pckg::track_frameResponse :definition-)
      "string frame
---
bool ret
")



(provide :pckg/track_frame "94287391629a6739a22a5918862fa5b1")


