; Auto-generated. Do not edit!


(cl:in-package autoware_msgs-msg)


;//! \htmlinclude CloudClusterArray.msg.html

(cl:defclass <CloudClusterArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (clusters
    :reader clusters
    :initarg :clusters
    :type (cl:vector autoware_msgs-msg:CloudCluster)
   :initform (cl:make-array 0 :element-type 'autoware_msgs-msg:CloudCluster :initial-element (cl:make-instance 'autoware_msgs-msg:CloudCluster))))
)

(cl:defclass CloudClusterArray (<CloudClusterArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CloudClusterArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CloudClusterArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name autoware_msgs-msg:<CloudClusterArray> is deprecated: use autoware_msgs-msg:CloudClusterArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CloudClusterArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:header-val is deprecated.  Use autoware_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'clusters-val :lambda-list '(m))
(cl:defmethod clusters-val ((m <CloudClusterArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader autoware_msgs-msg:clusters-val is deprecated.  Use autoware_msgs-msg:clusters instead.")
  (clusters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CloudClusterArray>) ostream)
  "Serializes a message object of type '<CloudClusterArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'clusters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'clusters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CloudClusterArray>) istream)
  "Deserializes a message object of type '<CloudClusterArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'clusters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'clusters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'autoware_msgs-msg:CloudCluster))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CloudClusterArray>)))
  "Returns string type for a message object of type '<CloudClusterArray>"
  "autoware_msgs/CloudClusterArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CloudClusterArray)))
  "Returns string type for a message object of type 'CloudClusterArray"
  "autoware_msgs/CloudClusterArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CloudClusterArray>)))
  "Returns md5sum for a message object of type '<CloudClusterArray>"
  "5bdd7c958335da845b88351aab5141d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CloudClusterArray)))
  "Returns md5sum for a message object of type 'CloudClusterArray"
  "5bdd7c958335da845b88351aab5141d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CloudClusterArray>)))
  "Returns full string definition for message of type '<CloudClusterArray>"
  (cl:format cl:nil "std_msgs/Header header
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CloudClusterArray)))
  "Returns full string definition for message of type 'CloudClusterArray"
  (cl:format cl:nil "std_msgs/Header header
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CloudClusterArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'clusters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CloudClusterArray>))
  "Converts a ROS message object to a list"
  (cl:list 'CloudClusterArray
    (cl:cons ':header (header msg))
    (cl:cons ':clusters (clusters msg))
))