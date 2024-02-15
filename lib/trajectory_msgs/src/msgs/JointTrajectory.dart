// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:52 2024

// (in-package trajectory_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'JointTrajectoryPoint.dart';

//-----------------------------------------------------------

class JointTrajectory extends RosMessage<JointTrajectory> {
  Header header;

  List<String> joint_names;

  List<JointTrajectoryPoint> points;

  static JointTrajectory $prototype = JointTrajectory();
  JointTrajectory({ 
    Header? header,
    List<String>? joint_names,
    List<JointTrajectoryPoint>? points,
  }):
  this.header = header ?? Header(),
  this.joint_names = joint_names ?? [],
  this.points = points ?? [];

  @override
  JointTrajectory call({ 
    Header? header,
    List<String>? joint_names,
    List<JointTrajectoryPoint>? points,
  }) => JointTrajectory(
  header: header,
  joint_names: joint_names,
  points: points,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type JointTrajectory
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [joint_names]
    writer.writeArray<String>(joint_names, (val) => writer.writeString(val), specArrayLen: null);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    writer.writeUint32(points.length);
    points.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  JointTrajectory deserialize(ByteDataReader reader) {
    //deserializes a message object of type JointTrajectory
    final data = JointTrajectory();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [joint_names]
    data.joint_names = reader.readArray<String>(() => reader.readString(), arrayLen: null);
    // Deserialize message field [points]
    {
      // Deserialize array length for message field [points]
      final len = reader.readInt32();
      data.points = List.generate(len, (_) => JointTrajectoryPoint.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    joint_names.forEach((val) {
      length += 4 + utf8.encode(val).length;
    });
    points.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'trajectory_msgs/JointTrajectory';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '65b4f94a94d1ed67169da35a02f33d3f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''Header header
string[] joint_names
JointTrajectoryPoint[] points

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
MSG: trajectory_msgs/JointTrajectoryPoint
# Each trajectory point specifies either positions[, velocities[, accelerations]]
# or positions[, effort] for the trajectory to be executed.
# All specified values are in the same order as the joint names in JointTrajectory.msg

float64[] positions
float64[] velocities
float64[] accelerations
float64[] effort
duration time_from_start

''';
  }

}

