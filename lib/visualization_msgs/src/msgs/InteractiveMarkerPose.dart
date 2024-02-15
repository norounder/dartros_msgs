// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:00 2024

// (in-package visualization_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class InteractiveMarkerPose extends RosMessage<InteractiveMarkerPose> {
  Header header;

  Pose pose;

  String name;

  static InteractiveMarkerPose $prototype = InteractiveMarkerPose();
  InteractiveMarkerPose({ 
    Header? header,
    Pose? pose,
    String? name,
  }):
  this.header = header ?? Header(),
  this.pose = pose ?? Pose(),
  this.name = name ?? '';

  @override
  InteractiveMarkerPose call({ 
    Header? header,
    Pose? pose,
    String? name,
  }) => InteractiveMarkerPose(
  header: header,
  pose: pose,
  name: name,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type InteractiveMarkerPose
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [pose]
    pose.serialize(writer);
    // Serialize message field [name]
    writer.writeString(name);
  }

  @override
  InteractiveMarkerPose deserialize(ByteDataReader reader) {
    //deserializes a message object of type InteractiveMarkerPose
    final data = InteractiveMarkerPose();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [pose]
    data.pose = Pose.$prototype.deserialize(reader);
    // Deserialize message field [name]
    data.name = reader.readString();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    length += utf8.encode(name).length;
    return length + 60;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'visualization_msgs/InteractiveMarkerPose';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a6e6833209a196a38d798dadb02c81f8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Time/frame info.
Header header

# Initial pose. Also, defines the pivot point for rotations.
geometry_msgs/Pose pose

# Identifying string. Must be globally unique in
# the topic that this message is sent through.
string name

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

