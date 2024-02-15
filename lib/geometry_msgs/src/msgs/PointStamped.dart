// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Point.dart';

//-----------------------------------------------------------

class PointStamped extends RosMessage<PointStamped> {
  Header header;

  Point point;

  static PointStamped $prototype = PointStamped();
  PointStamped({ 
    Header? header,
    Point? point,
  }):
  this.header = header ?? Header(),
  this.point = point ?? Point();

  @override
  PointStamped call({ 
    Header? header,
    Point? point,
  }) => PointStamped(
  header: header,
  point: point,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PointStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [point]
    point.serialize(writer);
  }

  @override
  PointStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type PointStamped
    final data = PointStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [point]
    data.point = Point.$prototype.deserialize(reader);
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
    return 'geometry_msgs/PointStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c63aecb41bfdfd6b7e1fac37c7cbe7bf';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents a Point with reference coordinate frame and timestamp
Header header
Point point

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

''';
  }

}

