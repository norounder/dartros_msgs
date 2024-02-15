// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Point32 extends RosMessage<Point32> {
  double x;

  double y;

  double z;

  static Point32 $prototype = Point32();
  Point32({ 
    double? x,
    double? y,
    double? z,
  }):
  this.x = x ?? 0.0,
  this.y = y ?? 0.0,
  this.z = z ?? 0.0;

  @override
  Point32 call({ 
    double? x,
    double? y,
    double? z,
  }) => Point32(
  x: x,
  y: y,
  z: z,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Point32
    // Serialize message field [x]
    writer.writeFloat32(x);
    // Serialize message field [y]
    writer.writeFloat32(y);
    // Serialize message field [z]
    writer.writeFloat32(z);
  }

  @override
  Point32 deserialize(ByteDataReader reader) {
    //deserializes a message object of type Point32
    final data = Point32();
    // Deserialize message field [x]
    data.x = reader.readFloat32();
    // Deserialize message field [y]
    data.y = reader.readFloat32();
    // Deserialize message field [z]
    data.z = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    return 12;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Point32';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'cc153912f1453b708d221682bc23d9ac';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This contains the position of a point in free space(with 32 bits of precision).
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

