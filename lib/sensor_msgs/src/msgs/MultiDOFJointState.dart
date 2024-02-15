// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class MultiDOFJointState extends RosMessage<MultiDOFJointState> {
  Header header;

  List<String> joint_names;

  List<Transform> transforms;

  List<Twist> twist;

  List<Wrench> wrench;

  static MultiDOFJointState $prototype = MultiDOFJointState();
  MultiDOFJointState({ 
    Header? header,
    List<String>? joint_names,
    List<Transform>? transforms,
    List<Twist>? twist,
    List<Wrench>? wrench,
  }):
  this.header = header ?? Header(),
  this.joint_names = joint_names ?? [],
  this.transforms = transforms ?? [],
  this.twist = twist ?? [],
  this.wrench = wrench ?? [];

  @override
  MultiDOFJointState call({ 
    Header? header,
    List<String>? joint_names,
    List<Transform>? transforms,
    List<Twist>? twist,
    List<Wrench>? wrench,
  }) => MultiDOFJointState(
  header: header,
  joint_names: joint_names,
  transforms: transforms,
  twist: twist,
  wrench: wrench,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MultiDOFJointState
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [joint_names]
    writer.writeArray<String>(joint_names, (val) => writer.writeString(val), specArrayLen: null);
    // Serialize message field [transforms]
    // Serialize the length for message field [transforms]
    writer.writeUint32(transforms.length);
    transforms.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [twist]
    // Serialize the length for message field [twist]
    writer.writeUint32(twist.length);
    twist.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [wrench]
    // Serialize the length for message field [wrench]
    writer.writeUint32(wrench.length);
    wrench.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  MultiDOFJointState deserialize(ByteDataReader reader) {
    //deserializes a message object of type MultiDOFJointState
    final data = MultiDOFJointState();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [joint_names]
    data.joint_names = reader.readArray<String>(() => reader.readString(), arrayLen: null);
    // Deserialize message field [transforms]
    {
      // Deserialize array length for message field [transforms]
      final len = reader.readInt32();
      data.transforms = List.generate(len, (_) => Transform.$prototype.deserialize(reader));
    }
    // Deserialize message field [twist]
    {
      // Deserialize array length for message field [twist]
      final len = reader.readInt32();
      data.twist = List.generate(len, (_) => Twist.$prototype.deserialize(reader));
    }
    // Deserialize message field [wrench]
    {
      // Deserialize array length for message field [wrench]
      final len = reader.readInt32();
      data.wrench = List.generate(len, (_) => Wrench.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    joint_names.forEach((val) {
      length += 4 + utf8.encode(val).length;
    });
    length += 56 * transforms.length;
    length += 48 * twist.length;
    length += 48 * wrench.length;
    return length + 16;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/MultiDOFJointState';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '690f272f0640d2631c305eeb8301e59d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Representation of state for joints with multiple degrees of freedom, 
# following the structure of JointState.
#
# It is assumed that a joint in a system corresponds to a transform that gets applied 
# along the kinematic chain. For example, a planar joint (as in URDF) is 3DOF (x, y, yaw)
# and those 3DOF can be expressed as a transformation matrix, and that transformation
# matrix can be converted back to (x, y, yaw)
#
# Each joint is uniquely identified by its name
# The header specifies the time at which the joint states were recorded. All the joint states
# in one message have to be recorded at the same time.
#
# This message consists of a multiple arrays, one for each part of the joint state. 
# The goal is to make each of the fields optional. When e.g. your joints have no
# wrench associated with them, you can leave the wrench array empty. 
#
# All arrays in this message should have the same size, or be empty.
# This is the only way to uniquely associate the joint name with the correct
# states.

Header header

string[] joint_names
geometry_msgs/Transform[] transforms
geometry_msgs/Twist[] twist
geometry_msgs/Wrench[] wrench

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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

''';
  }

}

