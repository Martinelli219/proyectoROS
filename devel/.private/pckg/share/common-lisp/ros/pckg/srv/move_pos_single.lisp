; Auto-generated. Do not edit!


(cl:in-package pckg-srv)


;//! \htmlinclude move_pos_single-request.msg.html

(cl:defclass <move_pos_single-request> (roslisp-msg-protocol:ros-message)
  ((name_motor
    :reader name_motor
    :initarg :name_motor
    :type cl:string
    :initform "")
   (pos
    :reader pos
    :initarg :pos
    :type cl:float
    :initform 0.0))
)

(cl:defclass move_pos_single-request (<move_pos_single-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move_pos_single-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move_pos_single-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pckg-srv:<move_pos_single-request> is deprecated: use pckg-srv:move_pos_single-request instead.")))

(cl:ensure-generic-function 'name_motor-val :lambda-list '(m))
(cl:defmethod name_motor-val ((m <move_pos_single-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pckg-srv:name_motor-val is deprecated.  Use pckg-srv:name_motor instead.")
  (name_motor m))

(cl:ensure-generic-function 'pos-val :lambda-list '(m))
(cl:defmethod pos-val ((m <move_pos_single-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pckg-srv:pos-val is deprecated.  Use pckg-srv:pos instead.")
  (pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move_pos_single-request>) ostream)
  "Serializes a message object of type '<move_pos_single-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name_motor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name_motor))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move_pos_single-request>) istream)
  "Deserializes a message object of type '<move_pos_single-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name_motor) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name_motor) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pos) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move_pos_single-request>)))
  "Returns string type for a service object of type '<move_pos_single-request>"
  "pckg/move_pos_singleRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_pos_single-request)))
  "Returns string type for a service object of type 'move_pos_single-request"
  "pckg/move_pos_singleRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move_pos_single-request>)))
  "Returns md5sum for a message object of type '<move_pos_single-request>"
  "0c0bf682ee407d9ffa1c8714b3dcfa29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move_pos_single-request)))
  "Returns md5sum for a message object of type 'move_pos_single-request"
  "0c0bf682ee407d9ffa1c8714b3dcfa29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move_pos_single-request>)))
  "Returns full string definition for message of type '<move_pos_single-request>"
  (cl:format cl:nil "string name_motor~%float32 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move_pos_single-request)))
  "Returns full string definition for message of type 'move_pos_single-request"
  (cl:format cl:nil "string name_motor~%float32 pos~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move_pos_single-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name_motor))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move_pos_single-request>))
  "Converts a ROS message object to a list"
  (cl:list 'move_pos_single-request
    (cl:cons ':name_motor (name_motor msg))
    (cl:cons ':pos (pos msg))
))
;//! \htmlinclude move_pos_single-response.msg.html

(cl:defclass <move_pos_single-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass move_pos_single-response (<move_pos_single-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <move_pos_single-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'move_pos_single-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pckg-srv:<move_pos_single-response> is deprecated: use pckg-srv:move_pos_single-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <move_pos_single-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pckg-srv:ret-val is deprecated.  Use pckg-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <move_pos_single-response>) ostream)
  "Serializes a message object of type '<move_pos_single-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <move_pos_single-response>) istream)
  "Deserializes a message object of type '<move_pos_single-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<move_pos_single-response>)))
  "Returns string type for a service object of type '<move_pos_single-response>"
  "pckg/move_pos_singleResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_pos_single-response)))
  "Returns string type for a service object of type 'move_pos_single-response"
  "pckg/move_pos_singleResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<move_pos_single-response>)))
  "Returns md5sum for a message object of type '<move_pos_single-response>"
  "0c0bf682ee407d9ffa1c8714b3dcfa29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'move_pos_single-response)))
  "Returns md5sum for a message object of type 'move_pos_single-response"
  "0c0bf682ee407d9ffa1c8714b3dcfa29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<move_pos_single-response>)))
  "Returns full string definition for message of type '<move_pos_single-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'move_pos_single-response)))
  "Returns full string definition for message of type 'move_pos_single-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <move_pos_single-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <move_pos_single-response>))
  "Converts a ROS message object to a list"
  (cl:list 'move_pos_single-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'move_pos_single)))
  'move_pos_single-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'move_pos_single)))
  'move_pos_single-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'move_pos_single)))
  "Returns string type for a service object of type '<move_pos_single>"
  "pckg/move_pos_single")