// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'TwistWithCovariance.dart';

//-----------------------------------------------------------

class TwistWithCovarianceStamped extends RosMessage<TwistWithCovarianceStamped> {
  Header header;

  TwistWithCovariance twist;

  static TwistWithCovarianceStamped $prototype = TwistWithCovarianceStamped();
  TwistWithCovarianceStamped({ 
    Header? header,
    TwistWithCovariance? twist,
  }):
  this.header = header ?? Header(),
  this.twist = twist ?? TwistWithCovariance();

  @override
  TwistWithCovarianceStamped call({ 
    Header? header,
    TwistWithCovariance? twist,
  }) => TwistWithCovarianceStamped(
  header: header,
  twist: twist,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TwistWithCovarianceStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [twist]
    twist.serialize(writer);
  }

  @override
  TwistWithCovarianceStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type TwistWithCovarianceStamped
    final data = TwistWithCovarianceStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [twist]
    data.twist = TwistWithCovariance.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    return length + 336;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/TwistWithCovarianceStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8927a1a12fb2607ceea095b2dc440a96';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents an estimated twist with reference coordinate frame and timestamp.
Header header
TwistWithCovariance twist

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

