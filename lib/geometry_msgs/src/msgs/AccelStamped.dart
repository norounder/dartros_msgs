// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Accel.dart';

//-----------------------------------------------------------

class AccelStamped extends RosMessage<AccelStamped> {
  Header header;

  Accel accel;

  static AccelStamped $prototype = AccelStamped();
  AccelStamped({ 
    Header? header,
    Accel? accel,
  }):
  this.header = header ?? Header(),
  this.accel = accel ?? Accel();

  @override
  AccelStamped call({ 
    Header? header,
    Accel? accel,
  }) => AccelStamped(
  header: header,
  accel: accel,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type AccelStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [accel]
    accel.serialize(writer);
  }

  @override
  AccelStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type AccelStamped
    final data = AccelStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [accel]
    data.accel = Accel.$prototype.deserialize(reader);
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
    return 'geometry_msgs/AccelStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd8a98a5d81351b6eb0578c78557e7659';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# An accel with reference coordinate frame and timestamp
Header header
Accel accel

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
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
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

