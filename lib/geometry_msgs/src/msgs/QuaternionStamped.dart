// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Quaternion.dart';

//-----------------------------------------------------------

class QuaternionStamped extends RosMessage<QuaternionStamped> {
  Header header;

  Quaternion quaternion;

  static QuaternionStamped $prototype = QuaternionStamped();
  QuaternionStamped({ 
    Header? header,
    Quaternion? quaternion,
  }):
  this.header = header ?? Header(),
  this.quaternion = quaternion ?? Quaternion();

  @override
  QuaternionStamped call({ 
    Header? header,
    Quaternion? quaternion,
  }) => QuaternionStamped(
  header: header,
  quaternion: quaternion,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type QuaternionStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [quaternion]
    quaternion.serialize(writer);
  }

  @override
  QuaternionStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type QuaternionStamped
    final data = QuaternionStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [quaternion]
    data.quaternion = Quaternion.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 32;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/QuaternionStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'e57f1e547e0e1fd13504588ffc8334e2';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents an orientation with reference coordinate frame and timestamp.

Header header
Quaternion quaternion

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
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

''';
  }

}

