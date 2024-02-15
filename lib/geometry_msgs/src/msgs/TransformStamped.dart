// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Transform.dart';

//-----------------------------------------------------------

class TransformStamped extends RosMessage<TransformStamped> {
  Header header;

  String child_frame_id;

  Transform transform;

  static TransformStamped $prototype = TransformStamped();
  TransformStamped({ 
    Header? header,
    String? child_frame_id,
    Transform? transform,
  }):
  this.header = header ?? Header(),
  this.child_frame_id = child_frame_id ?? '',
  this.transform = transform ?? Transform();

  @override
  TransformStamped call({ 
    Header? header,
    String? child_frame_id,
    Transform? transform,
  }) => TransformStamped(
  header: header,
  child_frame_id: child_frame_id,
  transform: transform,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TransformStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [child_frame_id]
    writer.writeString(child_frame_id);
    // Serialize message field [transform]
    transform.serialize(writer);
  }

  @override
  TransformStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type TransformStamped
    final data = TransformStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [child_frame_id]
    data.child_frame_id = reader.readString();
    // Deserialize message field [transform]
    data.transform = Transform.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    length += utf8.encode(child_frame_id).length;
    return length + 60;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/TransformStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'b5764a33bfeb3588febc2682852579b0';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href="http://wiki.ros.org/tf">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

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

