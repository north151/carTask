; Auto-generated. Do not edit!


(cl:in-package autoware_msgs-msg)


;//! \htmlinclude RemoteCmd.msg.html

(cl:defclass <RemoteCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_cmd
    :reader vehicle_cmd
    :initarg :vehicle_cmd
    :type autoware_msgs-msg:VehicleCmd
    :initform (cl:make-instance 'autoware_msgs-msg:VehicleCmd))
   (control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:integer
    :initform 0))
)

(cl:defclass RemoteCmd (<RemoteCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoteCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoteCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_msgs-msg:<RemoteCmd> is deprecated: use autoware_msgs-msg:RemoteCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RemoteCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:header-val is deprecated.  Use autoware_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_cmd-val :lambda-list '(m))
(cl:defmethod vehicle_cmd-val ((m <RemoteCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:vehicle_cmd-val is deprecated.  Use autoware_msgs-msg:vehicle_cmd instead.")
  (vehicle_cmd m))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <RemoteCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:control_mode-val is deprecated.  Use autoware_msgs-msg:control_mode instead.")
  (control_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoteCmd>) ostream)
  "Serializes a message object of type '<RemoteCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_cmd) ostream)
  (cl:let* ((signed (cl:slot-value msg 'control_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoteCmd>) istream)
  "Deserializes a message object of type '<RemoteCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_cmd) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoteCmd>)))
  "Returns string type for a message object of type '<RemoteCmd>"
  "autoware_msgs/RemoteCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoteCmd)))
  "Returns string type for a message object of type 'RemoteCmd"
  "autoware_msgs/RemoteCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoteCmd>)))
  "Returns md5sum for a message object of type '<RemoteCmd>"
  "4ef8b915e5d6977285cb18a9e6793604")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoteCmd)))
  "Returns md5sum for a message object of type 'RemoteCmd"
  "4ef8b915e5d6977285cb18a9e6793604")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoteCmd>)))
  "Returns full string definition for message of type '<RemoteCmd>"
  (cl:format cl:nil "Header header
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoteCmd)))
  "Returns full string definition for message of type 'RemoteCmd"
  (cl:format cl:nil "Header header
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoteCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_cmd))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoteCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoteCmd
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_cmd (vehicle_cmd msg))
    (cl:cons ':control_mode (control_mode msg))
))