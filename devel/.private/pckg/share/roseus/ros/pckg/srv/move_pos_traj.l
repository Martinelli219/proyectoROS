;; Auto-generated. Do not edit!


(when (boundp 'pckg::move_pos_traj)
  (if (not (find-package "PCKG"))
    (make-package "PCKG"))
  (shadow 'move_pos_traj (find-package "PCKG")))
(unless (find-package "PCKG::MOVE_POS_TRAJ")
  (make-package "PCKG::MOVE_POS_TRAJ"))
(unless (find-package "PCKG::MOVE_POS_TRAJREQUEST")
  (make-package "PCKG::MOVE_POS_TRAJREQUEST"))
(unless (find-package "PCKG::MOVE_POS_TRAJRESPONSE")
  (make-package "PCKG::MOVE_POS_TRAJRESPONSE"))

(in-package "ROS")





(defclass pckg::move_pos_trajRequest
  :super ros::object
  :slots (_pos _vel ))

(defmethod pckg::move_pos_trajRequest
  (:init
   (&key
    ((:pos __pos) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:vel __vel) 0.0)
    )
   (send-super :init)
   (setq _pos __pos)
   (setq _vel (float __vel))
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:vel
   (&optional __vel)
   (if __vel (setq _vel __vel)) _vel)
  (:serialization-length
   ()
   (+
    ;; float64[] _pos
    (* 8    (length _pos)) 4
    ;; float64 _vel
    8
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
     ;; float64 _vel
       (sys::poke _vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _vel
     (setq _vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pckg::move_pos_trajResponse
  :super ros::object
  :slots (_ret ))

(defmethod pckg::move_pos_trajResponse
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

(defclass pckg::move_pos_traj
  :super ros::object
  :slots ())

(setf (get pckg::move_pos_traj :md5sum-) "49e8e74c01da16a8f0f7f7669e48bf05")
(setf (get pckg::move_pos_traj :datatype-) "pckg/move_pos_traj")
(setf (get pckg::move_pos_traj :request) pckg::move_pos_trajRequest)
(setf (get pckg::move_pos_traj :response) pckg::move_pos_trajResponse)

(defmethod pckg::move_pos_trajRequest
  (:response () (instance pckg::move_pos_trajResponse :init)))

(setf (get pckg::move_pos_trajRequest :md5sum-) "49e8e74c01da16a8f0f7f7669e48bf05")
(setf (get pckg::move_pos_trajRequest :datatype-) "pckg/move_pos_trajRequest")
(setf (get pckg::move_pos_trajRequest :definition-)
      "float64[] pos
float64 vel
---
bool ret

")

(setf (get pckg::move_pos_trajResponse :md5sum-) "49e8e74c01da16a8f0f7f7669e48bf05")
(setf (get pckg::move_pos_trajResponse :datatype-) "pckg/move_pos_trajResponse")
(setf (get pckg::move_pos_trajResponse :definition-)
      "float64[] pos
float64 vel
---
bool ret

")



(provide :pckg/move_pos_traj "49e8e74c01da16a8f0f7f7669e48bf05")


