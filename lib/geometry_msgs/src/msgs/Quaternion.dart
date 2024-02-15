// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Quaternion extends RosMessage<Quaternion> {
  double x;

  double y;

  double z;

  double w;

  static Quaternion $prototype = Quaternion();
  Quaternion({ 
    double? x,
    double? y,
    double? z,
    double? w,
  }):
  this.x = x ?? 0.0,
  this.y = y ?? 0.0,
  this.z = z ?? 0.0,
  this.w = w ?? 0.0;

  @override
  Quaternion call({ 
    double? x,
    double? y,
    double? z,
    double? w,
  }) => Quaternion(
  x: x,
  y: y,
  z: z,
  w: w,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Quaternion
    // Serialize message field [x]
    writer.writeFloat64(x);
    // Serialize message field [y]
    writer.writeFloat64(y);
    // Serialize message field [z]
    writer.writeFloat64(z);
    // Serialize message field [w]
    writer.writeFloat64(w);
  }

  @override
  Quaternion deserialize(ByteDataReader reader) {
    //deserializes a message object of type Quaternion
    final data = Quaternion();
    // Deserialize message field [x]
    data.x = reader.readFloat64();
    // Deserialize message field [y]
    data.y = reader.readFloat64();
    // Deserialize message field [z]
    data.z = reader.readFloat64();
    // Deserialize message field [w]
    data.w = reader.readFloat64();
    return data;
  }

  int getMessageSize() {
    return 32;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Quaternion';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a779879fadf0160734f906b8c19c7004';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

''';
  }

}

