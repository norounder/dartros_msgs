// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Twist.dart';

//-----------------------------------------------------------

class TwistStamped extends RosMessage<TwistStamped> {
  Header header;

  Twist twist;

  static TwistStamped $prototype = TwistStamped();
  TwistStamped({ 
    Header? header,
    Twist? twist,
  }):
  this.header = header ?? Header(),
  this.twist = twist ?? Twist();

  @override
  TwistStamped call({ 
    Header? header,
    Twist? twist,
  }) => TwistStamped(
  header: header,
  twist: twist,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TwistStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [twist]
    twist.serialize(writer);
  }

  @override
  TwistStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type TwistStamped
    final data = TwistStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [twist]
    data.twist = Twist.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    return length + 48;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/TwistStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '98d34b0043a2093cf9d9345ab6eef12e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# A twist with reference coordinate frame and timestamp
Header header
Twist twist

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

