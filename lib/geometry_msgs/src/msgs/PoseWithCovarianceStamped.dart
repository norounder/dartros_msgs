// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'PoseWithCovariance.dart';

//-----------------------------------------------------------

class PoseWithCovarianceStamped extends RosMessage<PoseWithCovarianceStamped> {
  Header header;

  PoseWithCovariance pose;

  static PoseWithCovarianceStamped $prototype = PoseWithCovarianceStamped();
  PoseWithCovarianceStamped({ 
    Header? header,
    PoseWithCovariance? pose,
  }):
  this.header = header ?? Header(),
  this.pose = pose ?? PoseWithCovariance();

  @override
  PoseWithCovarianceStamped call({ 
    Header? header,
    PoseWithCovariance? pose,
  }) => PoseWithCovarianceStamped(
  header: header,
  pose: pose,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PoseWithCovarianceStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [pose]
    pose.serialize(writer);
  }

  @override
  PoseWithCovarianceStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type PoseWithCovarianceStamped
    final data = PoseWithCovarianceStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [pose]
    data.pose = PoseWithCovariance.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    return length + 344;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/PoseWithCovarianceStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '953b798c0f514ff060a53a3498ce6246';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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

''';
  }

}

