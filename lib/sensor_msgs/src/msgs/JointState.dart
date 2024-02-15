// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class JointState extends RosMessage<JointState> {
  Header header;

  List<String> name;

  List<double> position;

  List<double> velocity;

  List<double> effort;

  static JointState $prototype = JointState();
  JointState({ 
    Header? header,
    List<String>? name,
    List<double>? position,
    List<double>? velocity,
    List<double>? effort,
  }):
  this.header = header ?? Header(),
  this.name = name ?? [],
  this.position = position ?? [],
  this.velocity = velocity ?? [],
  this.effort = effort ?? [];

  @override
  JointState call({ 
    Header? header,
    List<String>? name,
    List<double>? position,
    List<double>? velocity,
    List<double>? effort,
  }) => JointState(
  header: header,
  name: name,
  position: position,
  velocity: velocity,
  effort: effort,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type JointState
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [name]
    writer.writeArray<String>(name, (val) => writer.writeString(val), specArrayLen: null);
    // Serialize message field [position]
    writer.writeArray<double>(position, (val) => writer.writeFloat64(val), specArrayLen: null);
    // Serialize message field [velocity]
    writer.writeArray<double>(velocity, (val) => writer.writeFloat64(val), specArrayLen: null);
    // Serialize message field [effort]
    writer.writeArray<double>(effort, (val) => writer.writeFloat64(val), specArrayLen: null);
  }

  @override
  JointState deserialize(ByteDataReader reader) {
    //deserializes a message object of type JointState
    final data = JointState();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [name]
    data.name = reader.readArray<String>(() => reader.readString(), arrayLen: null);
    // Deserialize message field [position]
    data.position = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    // Deserialize message field [velocity]
    data.velocity = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    // Deserialize message field [effort]
    data.effort = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    name.forEach((val) {
      length += 4 + utf8.encode(val).length;
    });
    length += 8 * position.length;
    length += 8 * velocity.length;
    length += 8 * effort.length;
    return length + 16;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/JointState';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '3066dcd76a6cfaef579bd0f34173e9fd';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This is a message that holds data to describe the state of a set of torque controlled joints. 
#
# The state of each joint (revolute or prismatic) is defined by:
#  * the position of the joint (rad or m),
#  * the velocity of the joint (rad/s or m/s) and 
#  * the effort that is applied in the joint (Nm or N).
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# effort associated with them, you can leave the effort array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.


Header header

string[] name
float64[] position
float64[] velocity
float64[] effort

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

