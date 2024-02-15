// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'JoyFeedback.dart';

//-----------------------------------------------------------

class JoyFeedbackArray extends RosMessage<JoyFeedbackArray> {
  List<JoyFeedback> array;

  static JoyFeedbackArray $prototype = JoyFeedbackArray();
  JoyFeedbackArray({ 
    List<JoyFeedback>? array,
  }):
  this.array = array ?? [];

  @override
  JoyFeedbackArray call({ 
    List<JoyFeedback>? array,
  }) => JoyFeedbackArray(
  array: array,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type JoyFeedbackArray
    // Serialize message field [array]
    // Serialize the length for message field [array]
    writer.writeUint32(array.length);
    array.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  JoyFeedbackArray deserialize(ByteDataReader reader) {
    //deserializes a message object of type JoyFeedbackArray
    final data = JoyFeedbackArray();
    // Deserialize message field [array]
    {
      // Deserialize array length for message field [array]
      final len = reader.readInt32();
      data.array = List.generate(len, (_) => JoyFeedback.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += 6 * array.length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/JoyFeedbackArray';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'cde5730a895b1fc4dee6f91b754b213d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message publishes values for multiple feedback at once. 
JoyFeedback[] array
================================================================================
MSG: sensor_msgs/JoyFeedback
# Declare of the type of feedback
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

}

