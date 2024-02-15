// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'Pose.dart';

//-----------------------------------------------------------

class PoseWithCovariance extends RosMessage<PoseWithCovariance> {
  Pose pose;

  List<double> covariance;

  static PoseWithCovariance $prototype = PoseWithCovariance();
  PoseWithCovariance({ 
    Pose? pose,
    List<double>? covariance,
  }):
  this.pose = pose ?? Pose(),
  this.covariance = covariance ?? List.generate(36, (_) => 0);

  @override
  PoseWithCovariance call({ 
    Pose? pose,
    List<double>? covariance,
  }) => PoseWithCovariance(
  pose: pose,
  covariance: covariance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PoseWithCovariance
    // Serialize message field [pose]
    pose.serialize(writer);
    // Check that the constant length array field [covariance] has the right length
    if (covariance.length != 36) {
      throw Exception('Unable to serialize array field covariance - length must be 36');
    }
    // Serialize message field [covariance]
    writer.writeArray<double>(covariance, (val) => writer.writeFloat64(val), specArrayLen: 36);
  }

  @override
  PoseWithCovariance deserialize(ByteDataReader reader) {
    //deserializes a message object of type PoseWithCovariance
    final data = PoseWithCovariance();
    // Deserialize message field [pose]
    data.pose = Pose.$prototype.deserialize(reader);
    // Deserialize message field [covariance]
    data.covariance = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 36);
    return data;
  }

  int getMessageSize() {
    return 344;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/PoseWithCovariance';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c23e848cf1b7533a8d7c259073a97e6f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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

''';
  }

}

