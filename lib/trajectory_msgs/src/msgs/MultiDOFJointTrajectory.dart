// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:52 2024

// (in-package trajectory_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'MultiDOFJointTrajectoryPoint.dart';

//-----------------------------------------------------------

class MultiDOFJointTrajectory extends RosMessage<MultiDOFJointTrajectory> {
  Header header;

  List<String> joint_names;

  List<MultiDOFJointTrajectoryPoint> points;

  static MultiDOFJointTrajectory $prototype = MultiDOFJointTrajectory();
  MultiDOFJointTrajectory({ 
    Header? header,
    List<String>? joint_names,
    List<MultiDOFJointTrajectoryPoint>? points,
  }):
  this.header = header ?? Header(),
  this.joint_names = joint_names ?? [],
  this.points = points ?? [];

  @override
  MultiDOFJointTrajectory call({ 
    Header? header,
    List<String>? joint_names,
    List<MultiDOFJointTrajectoryPoint>? points,
  }) => MultiDOFJointTrajectory(
  header: header,
  joint_names: joint_names,
  points: points,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MultiDOFJointTrajectory
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
  MultiDOFJointTrajectory deserialize(ByteDataReader reader) {
    //deserializes a message object of type MultiDOFJointTrajectory
    final data = MultiDOFJointTrajectory();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [joint_names]
    data.joint_names = reader.readArray<String>(() => reader.readString(), arrayLen: null);
    // Deserialize message field [points]
    {
      // Deserialize array length for message field [points]
      final len = reader.readInt32();
      data.points = List.generate(len, (_) => MultiDOFJointTrajectoryPoint.$prototype.deserialize(reader));
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
    return 'trajectory_msgs/MultiDOFJointTrajectory';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ef145a45a5f47b77b7f5cdde4b16c942';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# The header is used to specify the coordinate frame and the reference time for the trajectory durations
Header header

# A representation of a multi-dof joint trajectory (each point is a transformation)
# Each point along the trajectory will include an array of positions/velocities/accelerations
# that has the same length as the array of joint names, and has the same order of joints as 
# the joint names array.

string[] joint_names
MultiDOFJointTrajectoryPoint[] points

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
MSG: trajectory_msgs/MultiDOFJointTrajectoryPoint
# Each multi-dof joint can specify a transform (up to 6 DOF)
geometry_msgs/Transform[] transforms

# There can be a velocity specified for the origin of the joint 
geometry_msgs/Twist[] velocities

# There can be an acceleration specified for the origin of the joint 
geometry_msgs/Twist[] accelerations

duration time_from_start

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

''';
  }

}

