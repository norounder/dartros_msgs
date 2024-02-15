// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:36 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class JoyFeedback extends RosMessage<JoyFeedback> {
  int type;

  int id;

  double intensity;

  static JoyFeedback $prototype = JoyFeedback();
  JoyFeedback({ 
    int? type,
    int? id,
    double? intensity,
  }):
  this.type = type ?? 0,
  this.id = id ?? 0,
  this.intensity = intensity ?? 0.0;

  @override
  JoyFeedback call({ 
    int? type,
    int? id,
    double? intensity,
  }) => JoyFeedback(
  type: type,
  id: id,
  intensity: intensity,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type JoyFeedback
    // Serialize message field [type]
    writer.writeUint8(type);
    // Serialize message field [id]
    writer.writeUint8(id);
    // Serialize message field [intensity]
    writer.writeFloat32(intensity);
  }

  @override
  JoyFeedback deserialize(ByteDataReader reader) {
    //deserializes a message object of type JoyFeedback
    final data = JoyFeedback();
    // Deserialize message field [type]
    data.type = reader.readUint8();
    // Deserialize message field [id]
    data.id = reader.readUint8();
    // Deserialize message field [intensity]
    data.intensity = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    return 6;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/JoyFeedback';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'f4dcd73460360d98f36e55ee7f2e46f1';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Declare of the type of feedback
uint8 TYPE_LED    = 0
uint8 TYPE_RUMBLE = 1
uint8 TYPE_BUZZER = 2

uint8 type

# This will hold an id number for each type of each feedback.
# Example, the first led would be id=0, the second would be id=1
uint8 id

# Intensity of the feedback, from 0.0 to 1.0, inclusive.  If device is
# actually binary, driver should treat 0<=x<0.5 as off, 0.5<=x<=1 as on.
float32 intensity


''';
  }

// Constants for message
  static const int TYPE_LED = 0;
  static const int TYPE_RUMBLE = 1;
  static const int TYPE_BUZZER = 2;

}

