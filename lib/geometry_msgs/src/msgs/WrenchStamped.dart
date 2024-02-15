// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Wrench.dart';

//-----------------------------------------------------------

class WrenchStamped extends RosMessage<WrenchStamped> {
  Header header;

  Wrench wrench;

  static WrenchStamped $prototype = WrenchStamped();
  WrenchStamped({ 
    Header? header,
    Wrench? wrench,
  }):
  this.header = header ?? Header(),
  this.wrench = wrench ?? Wrench();

  @override
  WrenchStamped call({ 
    Header? header,
    Wrench? wrench,
  }) => WrenchStamped(
  header: header,
  wrench: wrench,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type WrenchStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [wrench]
    wrench.serialize(writer);
  }

  @override
  WrenchStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type WrenchStamped
    final data = WrenchStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [wrench]
    data.wrench = Wrench.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 48;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/WrenchStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd78d3cb249ce23087ade7e7d0c40cfa7';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# A wrench with reference coordinate frame and timestamp
Header header
Wrench wrench

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
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

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

