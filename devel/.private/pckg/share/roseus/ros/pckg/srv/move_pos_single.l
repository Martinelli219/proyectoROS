;; Auto-generated. Do not edit!


(when (boundp 'pckg::move_pos_single)
  (if (not (find-package "PCKG"))
    (make-package "PCKG"))
  (shadow 'move_pos_single (find-package "PCKG")))
(unless (find-package "PCKG::MOVE_POS_SINGLE")
  (make-package "PCKG::MOVE_POS_SINGLE"))
(unless (find-package "PCKG::MOVE_POS_SINGLEREQUEST")
  (make-package "PCKG::MOVE_POS_SINGLEREQUEST"))
(unless (find-package "PCKG::MOVE_POS_SINGLERESPONSE")
  (make-package "PCKG::MOVE_POS_SINGLERESPONSE"))

(in-package "ROS")





(defclass pckg::move_pos_singleRequest
  :super ros::object
  :slots (_name_motor _pos ))

(defmethod pckg::move_pos_singleRequest
  (:init
   (&key
    ((:name_motor __name_motor) "")
    ((:pos __pos) 0.0)
    )
   (send-super :init)
   (setq _name_motor (string __name_motor))
   (setq _pos (float __pos))
   self)
  (:name_motor
   (&optional __name_motor)
   (if __name_motor (setq _name_motor __name_motor)) _name_motor)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; string _name_motor
    4 (length _name_motor)
    ;; float32 _pos
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name_motor
       (write-long (length _name_motor) s) (princ _name_motor s)
     ;; float32 _pos
       (sys::poke _pos (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name_motor
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name_motor (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _pos
     (setq _pos (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pckg::move_pos_singleResponse
  :super ros::object
  :slots (_ret ))

(defmethod pckg::move_pos_singleResponse
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

(defclass pckg::move_pos_single
  :super ros::object
  :slots ())

(setf (get pckg::move_pos_single :md5sum-) "0c0bf682ee407d9ffa1c8714b3dcfa29")
(setf (get pckg::move_pos_single :datatype-) "pckg/move_pos_single")
(setf (get pckg::move_pos_single :request) pckg::move_pos_singleRequest)
(setf (get pckg::move_pos_single :response) pckg::move_pos_singleResponse)

(defmethod pckg::move_pos_singleRequest
  (:response () (instance pckg::move_pos_singleResponse :init)))

(setf (get pckg::move_pos_singleRequest :md5sum-) "0c0bf682ee407d9ffa1c8714b3dcfa29")
(setf (get pckg::move_pos_singleRequest :datatype-) "pckg/move_pos_singleRequest")
(setf (get pckg::move_pos_singleRequest :definition-)
      "string name_motor
float32 pos
---
bool ret

")

(setf (get pckg::move_pos_singleResponse :md5sum-) "0c0bf682ee407d9ffa1c8714b3dcfa29")
(setf (get pckg::move_pos_singleResponse :datatype-) "pckg/move_pos_singleResponse")
(setf (get pckg::move_pos_singleResponse :definition-)
      "string name_motor
float32 pos
---
bool ret

")



(provide :pckg/move_pos_single "0c0bf682ee407d9ffa1c8714b3dcfa29")


