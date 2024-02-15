// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Polygon.dart';

//-----------------------------------------------------------

class PolygonStamped extends RosMessage<PolygonStamped> {
  Header header;

  Polygon polygon;

  static PolygonStamped $prototype = PolygonStamped();
  PolygonStamped({ 
    Header? header,
    Polygon? polygon,
  }):
  this.header = header ?? Header(),
  this.polygon = polygon ?? Polygon();

  @override
  PolygonStamped call({ 
    Header? header,
    Polygon? polygon,
  }) => PolygonStamped(
  header: header,
  polygon: polygon,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PolygonStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [polygon]
    polygon.serialize(writer);
  }

  @override
  PolygonStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type PolygonStamped
    final data = PolygonStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [polygon]
    data.polygon = Polygon.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    length += polygon.getMessageSize();
    return length;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/PolygonStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c6be8f7dc3bee7fe9e8d296070f53340';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents a Polygon with reference coordinate frame and timestamp
Header header
Polygon polygon

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
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
''';
  }

}

