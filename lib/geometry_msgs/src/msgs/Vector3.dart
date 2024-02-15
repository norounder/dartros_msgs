// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Vector3 extends RosMessage<Vector3> {
  double x;

  double y;

  double z;

  static Vector3 $prototype = Vector3();
  Vector3({ 
    double? x,
    double? y,
    double? z,
  }):
  this.x = x ?? 0.0,
  this.y = y ?? 0.0,
  this.z = z ?? 0.0;

  @override
  Vector3 call({ 
    double? x,
    double? y,
    double? z,
  }) => Vector3(
  x: x,
  y: y,
  z: z,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Vector3
    // Serialize message field [x]
    writer.writeFloat64(x);
    // Serialize message field [y]
    writer.writeFloat64(y);
    // Serialize message field [z]
    writer.writeFloat64(z);
  }

  @override
  Vector3 deserialize(ByteDataReader reader) {
    //deserializes a message object of type Vector3
    final data = Vector3();
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
    return 'geometry_msgs/Vector3';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '4a842b65f413084dc2b10fb484ea7f17';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents a vector in free space. 
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

