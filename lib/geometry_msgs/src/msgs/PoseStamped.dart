// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Pose.dart';

//-----------------------------------------------------------

class PoseStamped extends RosMessage<PoseStamped> {
  Header header;

  Pose pose;

  static PoseStamped $prototype = PoseStamped();
  PoseStamped({ 
    Header? header,
    Pose? pose,
  }):
  this.header = header ?? Header(),
  this.pose = pose ?? Pose();

  @override
  PoseStamped call({ 
    Header? header,
    Pose? pose,
  }) => PoseStamped(
  header: header,
  pose: pose,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PoseStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [pose]
    pose.serialize(writer);
  }

  @override
  PoseStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type PoseStamped
    final data = PoseStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [pose]
    data.pose = Pose.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    return length + 56;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/PoseStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd3812c3cbc69362b77dc0b19b345f8f5';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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

