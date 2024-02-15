// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:52 2024

// (in-package trajectory_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class JointTrajectoryPoint extends RosMessage<JointTrajectoryPoint> {
  List<double> positions;

  List<double> velocities;

  List<double> accelerations;

  List<double> effort;

  RosTime time_from_start;

  static JointTrajectoryPoint $prototype = JointTrajectoryPoint();
  JointTrajectoryPoint({ 
    List<double>? positions,
    List<double>? velocities,
    List<double>? accelerations,
    List<double>? effort,
    RosTime? time_from_start,
  }):
  this.positions = positions ?? [],
  this.velocities = velocities ?? [],
  this.accelerations = accelerations ?? [],
  this.effort = effort ?? [],
  this.time_from_start = time_from_start ?? RosTime(secs: 0, nsecs: 0);

  @override
  JointTrajectoryPoint call({ 
    List<double>? positions,
    List<double>? velocities,
    List<double>? accelerations,
    List<double>? effort,
    RosTime? time_from_start,
  }) => JointTrajectoryPoint(
  positions: positions,
  velocities: velocities,
  accelerations: accelerations,
  effort: effort,
  time_from_start: time_from_start,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type JointTrajectoryPoint
    // Serialize message field [positions]
    writer.writeArray<double>(positions, (val) => writer.writeFloat64(val), specArrayLen: null);
    // Serialize message field [velocities]
    writer.writeArray<double>(velocities, (val) => writer.writeFloat64(val), specArrayLen: null);
    // Serialize message field [accelerations]
    writer.writeArray<double>(accelerations, (val) => writer.writeFloat64(val), specArrayLen: null);
    // Serialize message field [effort]
    writer.writeArray<double>(effort, (val) => writer.writeFloat64(val), specArrayLen: null);
    // Serialize message field [time_from_start]
    writer.writeTime(time_from_start);
  }

  @override
  JointTrajectoryPoint deserialize(ByteDataReader reader) {
    //deserializes a message object of type JointTrajectoryPoint
    final data = JointTrajectoryPoint();
    // Deserialize message field [positions]
    data.positions = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    // Deserialize message field [velocities]
    data.velocities = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    // Deserialize message field [accelerations]
    data.accelerations = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    // Deserialize message field [effort]
    data.effort = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    // Deserialize message field [time_from_start]
    data.time_from_start = reader.readTime();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += 8 * positions.length;
    length += 8 * velocities.length;
    length += 8 * accelerations.length;
    length += 8 * effort.length;
    return length + 24;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'trajectory_msgs/JointTrajectoryPoint';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'f3cd1e1c4d320c79d6985c904ae5dcd3';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Each trajectory point specifies either positions[, velocities[, accelerations]]
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

