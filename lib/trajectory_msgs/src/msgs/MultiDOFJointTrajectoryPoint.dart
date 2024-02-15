// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:52 2024

// (in-package trajectory_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';

//-----------------------------------------------------------

class MultiDOFJointTrajectoryPoint extends RosMessage<MultiDOFJointTrajectoryPoint> {
  List<Transform> transforms;

  List<Twist> velocities;

  List<Twist> accelerations;

  RosTime time_from_start;

  static MultiDOFJointTrajectoryPoint $prototype = MultiDOFJointTrajectoryPoint();
  MultiDOFJointTrajectoryPoint({ 
    List<Transform>? transforms,
    List<Twist>? velocities,
    List<Twist>? accelerations,
    RosTime? time_from_start,
  }):
  this.transforms = transforms ?? [],
  this.velocities = velocities ?? [],
  this.accelerations = accelerations ?? [],
  this.time_from_start = time_from_start ?? RosTime(secs: 0, nsecs: 0);

  @override
  MultiDOFJointTrajectoryPoint call({ 
    List<Transform>? transforms,
    List<Twist>? velocities,
    List<Twist>? accelerations,
    RosTime? time_from_start,
  }) => MultiDOFJointTrajectoryPoint(
  transforms: transforms,
  velocities: velocities,
  accelerations: accelerations,
  time_from_start: time_from_start,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MultiDOFJointTrajectoryPoint
    // Serialize message field [transforms]
    // Serialize the length for message field [transforms]
    writer.writeUint32(transforms.length);
    transforms.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [velocities]
    // Serialize the length for message field [velocities]
    writer.writeUint32(velocities.length);
    velocities.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [accelerations]
    // Serialize the length for message field [accelerations]
    writer.writeUint32(accelerations.length);
    accelerations.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [time_from_start]
    writer.writeTime(time_from_start);
  }

  @override
  MultiDOFJointTrajectoryPoint deserialize(ByteDataReader reader) {
    //deserializes a message object of type MultiDOFJointTrajectoryPoint
    final data = MultiDOFJointTrajectoryPoint();
    // Deserialize message field [transforms]
    {
      // Deserialize array length for message field [transforms]
      final len = reader.readInt32();
      data.transforms = List.generate(len, (_) => Transform.$prototype.deserialize(reader));
    }
    // Deserialize message field [velocities]
    {
      // Deserialize array length for message field [velocities]
      final len = reader.readInt32();
      data.velocities = List.generate(len, (_) => Twist.$prototype.deserialize(reader));
    }
    // Deserialize message field [accelerations]
    {
      // Deserialize array length for message field [accelerations]
      final len = reader.readInt32();
      data.accelerations = List.generate(len, (_) => Twist.$prototype.deserialize(reader));
    }
    // Deserialize message field [time_from_start]
    data.time_from_start = reader.readTime();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += 56 * transforms.length;
    length += 48 * velocities.length;
    length += 48 * accelerations.length;
    return length + 20;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'trajectory_msgs/MultiDOFJointTrajectoryPoint';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '3ebe08d1abd5b65862d50e09430db776';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Each multi-dof joint can specify a transform (up to 6 DOF)
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

