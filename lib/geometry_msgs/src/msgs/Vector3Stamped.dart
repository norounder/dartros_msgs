// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Vector3.dart';

//-----------------------------------------------------------

class Vector3Stamped extends RosMessage<Vector3Stamped> {
  Header header;

  Vector3 vector;

  static Vector3Stamped $prototype = Vector3Stamped();
  Vector3Stamped({ 
    Header? header,
    Vector3? vector,
  }):
  this.header = header ?? Header(),
  this.vector = vector ?? Vector3();

  @override
  Vector3Stamped call({ 
    Header? header,
    Vector3? vector,
  }) => Vector3Stamped(
  header: header,
  vector: vector,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Vector3Stamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [vector]
    vector.serialize(writer);
  }

  @override
  Vector3Stamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type Vector3Stamped
    final data = Vector3Stamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [vector]
    data.vector = Vector3.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    return length + 24;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Vector3Stamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '7b324c7325e683bf02a9b14b01090ec7';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents a Vector3 with reference coordinate frame and timestamp
Header header
Vector3 vector

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

