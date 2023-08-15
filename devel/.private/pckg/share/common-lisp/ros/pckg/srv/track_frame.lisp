; Auto-generated. Do not edit!


(cl:in-package pckg-srv)


;//! \htmlinclude track_frame-request.msg.html

(cl:defclass <track_frame-request> (roslisp-msg-protocol:ros-message)
  ((frame
    :reader frame
    :initarg :frame
    :type cl:string
    :initform ""))
)

(cl:defclass track_frame-request (<track_frame-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <track_frame-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'track_frame-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pckg-srv:<track_frame-request> is deprecated: use pckg-srv:track_frame-request instead.")))

(cl:ensure-generic-function 'frame-val :lambda-list '(m))
(cl:defmethod frame-val ((m <track_frame-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pckg-srv:frame-val is deprecated.  Use pckg-srv:frame instead.")
  (frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <track_frame-request>) ostream)
  "Serializes a message object of type '<track_frame-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <track_frame-request>) istream)
  "Deserializes a message object of type '<track_frame-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<track_frame-request>)))
  "Returns string type for a service object of type '<track_frame-request>"
  "pckg/track_frameRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'track_frame-request)))
  "Returns string type for a service object of type 'track_frame-request"
  "pckg/track_frameRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<track_frame-request>)))
  "Returns md5sum for a message object of type '<track_frame-request>"
  "94287391629a6739a22a5918862fa5b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'track_frame-request)))
  "Returns md5sum for a message object of type 'track_frame-request"
  "94287391629a6739a22a5918862fa5b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<track_frame-request>)))
  "Returns full string definition for message of type '<track_frame-request>"
  (cl:format cl:nil "string frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'track_frame-request)))
  "Returns full string definition for message of type 'track_frame-request"
  (cl:format cl:nil "string frame~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <track_frame-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <track_frame-request>))
  "Converts a ROS message object to a list"
  (cl:list 'track_frame-request
    (cl:cons ':frame (frame msg))
))
;//! \htmlinclude track_frame-response.msg.html

(cl:defclass <track_frame-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass track_frame-response (<track_frame-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <track_frame-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'track_frame-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pckg-srv:<track_frame-response> is deprecated: use pckg-srv:track_frame-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <track_frame-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pckg-srv:ret-val is deprecated.  Use pckg-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <track_frame-response>) ostream)
  "Serializes a message object of type '<track_frame-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <track_frame-response>) istream)
  "Deserializes a message object of type '<track_frame-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<track_frame-response>)))
  "Returns string type for a service object of type '<track_frame-response>"
  "pckg/track_frameResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'track_frame-response)))
  "Returns string type for a service object of type 'track_frame-response"
  "pckg/track_frameResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<track_frame-response>)))
  "Returns md5sum for a message object of type '<track_frame-response>"
  "94287391629a6739a22a5918862fa5b1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'track_frame-response)))
  "Returns md5sum for a message object of type 'track_frame-response"
  "94287391629a6739a22a5918862fa5b1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<track_frame-response>)))
  "Returns full string definition for message of type '<track_frame-response>"
  (cl:format cl:nil "bool ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'track_frame-response)))
  "Returns full string definition for message of type 'track_frame-response"
  (cl:format cl:nil "bool ret~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <track_frame-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <track_frame-response>))
  "Converts a ROS message object to a list"
  (cl:list 'track_frame-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'track_frame)))
  'track_frame-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'track_frame)))
  'track_frame-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'track_frame)))
  "Returns string type for a service object of type '<track_frame>"
  "pckg/track_frame")