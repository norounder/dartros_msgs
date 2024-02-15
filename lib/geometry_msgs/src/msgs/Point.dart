// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Point extends RosMessage<Point> {
  double x;

  double y;

  double z;

  static Point $prototype = Point();
  Point({ 
    double? x,
    double? y,
    double? z,
  }):
  this.x = x ?? 0.0,
  this.y = y ?? 0.0,
  this.z = z ?? 0.0;

  @override
  Point call({ 
    double? x,
    double? y,
    double? z,
  }) => Point(
  x: x,
  y: y,
  z: z,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Point
    // Serialize message field [x]
    writer.writeFloat64(x);
    // Serialize message field [y]
    writer.writeFloat64(y);
    // Serialize message field [z]
    writer.writeFloat64(z);
  }

  @override
  Point deserialize(ByteDataReader reader) {
    //deserializes a message object of type Point
    final data = Point();
    // Deserialize message field [x]
    data.x = reader.readFloat64();
    // Deserialize message field [y]
    data.y = reader.readFloat64();
    // Deserialize message field [z]
    data.z = reader.readFloat64();
    return data;
  }

  int getMessageSize() {
    return 24;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Point';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '4a842b65f413084dc2b10fb484ea7f17';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This contains the position of a point in free space
float64 x
float64 y
float64 z

''';
  }

}

