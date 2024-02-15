// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class ColorRGBA extends RosMessage<ColorRGBA> {
  double r;

  double g;

  double b;

  double a;

  static ColorRGBA $prototype = ColorRGBA();
  ColorRGBA({ 
    double? r,
    double? g,
    double? b,
    double? a,
  }):
  this.r = r ?? 0.0,
  this.g = g ?? 0.0,
  this.b = b ?? 0.0,
  this.a = a ?? 0.0;

  @override
  ColorRGBA call({ 
    double? r,
    double? g,
    double? b,
    double? a,
  }) => ColorRGBA(
  r: r,
  g: g,
  b: b,
  a: a,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ColorRGBA
    // Serialize message field [r]
    writer.writeFloat32(r);
    // Serialize message field [g]
    writer.writeFloat32(g);
    // Serialize message field [b]
    writer.writeFloat32(b);
    // Serialize message field [a]
    writer.writeFloat32(a);
  }

  @override
  ColorRGBA deserialize(ByteDataReader reader) {
    //deserializes a message object of type ColorRGBA
    final data = ColorRGBA();
    // Deserialize message field [r]
    data.r = reader.readFloat32();
    // Deserialize message field [g]
    data.g = reader.readFloat32();
    // Deserialize message field [b]
    data.b = reader.readFloat32();
    // Deserialize message field [a]
    data.a = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    return 16;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/ColorRGBA';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a29a96539573343b1310c73607334b00';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''float32 r
float32 g
float32 b
float32 a

''';
  }

}

