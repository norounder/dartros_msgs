// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Joy extends RosMessage<Joy> {
  Header header;

  List<double> axes;

  List<int> buttons;

  static Joy $prototype = Joy();
  Joy({ 
    Header? header,
    List<double>? axes,
    List<int>? buttons,
  }):
  this.header = header ?? Header(),
  this.axes = axes ?? [],
  this.buttons = buttons ?? [];

  @override
  Joy call({ 
    Header? header,
    List<double>? axes,
    List<int>? buttons,
  }) => Joy(
  header: header,
  axes: axes,
  buttons: buttons,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Joy
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [axes]
    writer.writeArray<double>(axes, (val) => writer.writeFloat32(val), specArrayLen: null);
    // Serialize message field [buttons]
    writer.writeArray<int>(buttons, (val) => writer.writeInt32(val), specArrayLen: null);
  }

  @override
  Joy deserialize(ByteDataReader reader) {
    //deserializes a message object of type Joy
    final data = Joy();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [axes]
    data.axes = reader.readArray<double>(() => reader.readFloat32(), arrayLen: null);
    // Deserialize message field [buttons]
    data.buttons = reader.readArray<int>(() => reader.readInt32(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += 4 * axes.length;
    length += 4 * buttons.length;
    return length + 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/Joy';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '5a9ea5f83505693b71e785041e67a8bb';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Reports the state of a joysticks axes and buttons.
Header header           # timestamp in the header is the time the data is received from the joystick
float32[] axes          # the axes measurements from a joystick
int32[] buttons         # the buttons measurements from a joystick 

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

''';
  }

}

