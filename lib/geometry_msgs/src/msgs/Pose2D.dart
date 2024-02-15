// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Pose2D extends RosMessage<Pose2D> {
  double x;

  double y;

  double theta;

  static Pose2D $prototype = Pose2D();
  Pose2D({ 
    double? x,
    double? y,
    double? theta,
  }):
  this.x = x ?? 0.0,
  this.y = y ?? 0.0,
  this.theta = theta ?? 0.0;

  @override
  Pose2D call({ 
    double? x,
    double? y,
    double? theta,
  }) => Pose2D(
  x: x,
  y: y,
  theta: theta,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Pose2D
    // Serialize message field [x]
    writer.writeFloat64(x);
    // Serialize message field [y]
    writer.writeFloat64(y);
    // Serialize message field [theta]
    writer.writeFloat64(theta);
  }

  @override
  Pose2D deserialize(ByteDataReader reader) {
    //deserializes a message object of type Pose2D
    final data = Pose2D();
    // Deserialize message field [x]
    data.x = reader.readFloat64();
    // Deserialize message field [y]
    data.y = reader.readFloat64();
    // Deserialize message field [theta]
    data.theta = reader.readFloat64();
    return data;
  }

  int getMessageSize() {
    return 24;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Pose2D';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '938fa65709584ad8e77d238529be13b8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta

''';
  }

}

