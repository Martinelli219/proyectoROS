; Auto-generated. Do not edit!


(cl:in-package pckg-srv)


;//! \htmlinclude move_pos_simu_rand-request.msg.html

(cl:defclass <move_pos_simu_rand-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass move_pos_simu_rand-request (<move_pos_simu_rand-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move_pos_simu_rand-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move_pos_simu_rand-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pckg-srv:<move_pos_simu_rand-request> is deprecated: use pckg-srv:move_pos_simu_rand-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move_pos_simu_rand-request>) ostream)
  "Serializes a message object of type '<move_pos_simu_rand-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move_pos_simu_rand-request>) istream)
  "Deserializes a message object of type '<move_pos_simu_rand-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move_pos_simu_rand-request>)))
  "Returns string type for a service object of type '<move_pos_simu_rand-request>"
  "pckg/move_pos_simu_randRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_pos_simu_rand-request)))
  "Returns string type for a service object of type 'move_pos_simu_rand-request"
  "pckg/move_pos_simu_randRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move_pos_simu_rand-request>)))
  "Returns md5sum for a message object of type '<move_pos_simu_rand-request>"
  "e2cc9e9d8c464550830df49c160979ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move_pos_simu_rand-request)))
  "Returns md5sum for a message object of type 'move_pos_simu_rand-request"
  "e2cc9e9d8c464550830df49c160979ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move_pos_simu_rand-request>)))
  "Returns full string definition for message of type '<move_pos_simu_rand-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move_pos_simu_rand-request)))
  "Returns full string definition for message of type 'move_pos_simu_rand-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move_pos_simu_rand-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move_pos_simu_rand-request>))
  "Converts a ROS message object to a list"
  (cl:list 'move_pos_simu_rand-request
))
;//! \htmlinclude move_pos_simu_rand-response.msg.html

(cl:defclass <move_pos_simu_rand-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass move_pos_simu_rand-response (<move_pos_simu_rand-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move_pos_simu_rand-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move_pos_simu_rand-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pckg-srv:<move_pos_simu_rand-response> is deprecated: use pckg-srv:move_pos_simu_rand-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <move_pos_simu_rand-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pckg-srv:ret-val is deprecated.  Use pckg-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move_pos_simu_rand-response>) ostream)
  "Serializes a message object of type '<move_pos_simu_rand-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move_pos_simu_rand-response>) istream)
  "Deserializes a message object of type '<move_pos_simu_rand-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move_pos_simu_rand-response>)))
  "Returns string type for a service object of type '<move_pos_simu_rand-response>"
  "pckg/move_pos_simu_randResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_pos_simu_rand-response)))
  "Returns string type for a service object of type 'move_pos_simu_rand-response"
  "pckg/move_pos_simu_randResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move_pos_simu_rand-response>)))
  "Returns md5sum for a message object of type '<move_pos_simu_rand-response>"
  "e2cc9e9d8c464550830df49c160979ad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move_pos_simu_rand-response)))
  "Returns md5sum for a message object of type 'move_pos_simu_rand-response"
  "e2cc9e9d8c464550830df49c160979ad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move_pos_simu_rand-response>)))
  "Returns full string definition for message of type '<move_pos_simu_rand-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move_pos_simu_rand-response)))
  "Returns full string definition for message of type 'move_pos_simu_rand-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move_pos_simu_rand-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move_pos_simu_rand-response>))
  "Converts a ROS message object to a list"
  (cl:list 'move_pos_simu_rand-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'move_pos_simu_rand)))
  'move_pos_simu_rand-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'move_pos_simu_rand)))
  'move_pos_simu_rand-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_pos_simu_rand)))
  "Returns string type for a service object of type '<move_pos_simu_rand>"
  "pckg/move_pos_simu_rand")