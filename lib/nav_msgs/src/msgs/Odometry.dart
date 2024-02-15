// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:42 2024

// (in-package nav_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';

//-----------------------------------------------------------

class Odometry extends RosMessage<Odometry> {
  Header header;

  String child_frame_id;

  PoseWithCovariance pose;

  TwistWithCovariance twist;

  static Odometry $prototype = Odometry();
  Odometry({ 
    Header? header,
    String? child_frame_id,
    PoseWithCovariance? pose,
    TwistWithCovariance? twist,
  }):
  this.header = header ?? Header(),
  this.child_frame_id = child_frame_id ?? '',
  this.pose = pose ?? PoseWithCovariance(),
  this.twist = twist ?? TwistWithCovariance();

  @override
  Odometry call({ 
    Header? header,
    String? child_frame_id,
    PoseWithCovariance? pose,
    TwistWithCovariance? twist,
  }) => Odometry(
  header: header,
  child_frame_id: child_frame_id,
  pose: pose,
  twist: twist,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Odometry
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [child_frame_id]
    writer.writeString(child_frame_id);
    // Serialize message field [pose]
    pose.serialize(writer);
    // Serialize message field [twist]
    twist.serialize(writer);
  }

  @override
  Odometry deserialize(ByteDataReader reader) {
    //deserializes a message object of type Odometry
    final data = Odometry();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [child_frame_id]
    data.child_frame_id = reader.readString();
    // Deserialize message field [pose]
    data.pose = PoseWithCovariance.$prototype.deserialize(reader);
    // Deserialize message field [twist]
    data.twist = TwistWithCovariance.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    length += utf8.encode(child_frame_id).length;
    return length + 684;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'nav_msgs/Odometry';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'cd5e73d190d741a2f92e81eda573aca7';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
''';
  }

}

