// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'Vector3.dart';

//-----------------------------------------------------------

class Wrench extends RosMessage<Wrench> {
  Vector3 force;

  Vector3 torque;

  static Wrench $prototype = Wrench();
  Wrench({ 
    Vector3? force,
    Vector3? torque,
  }):
  this.force = force ?? Vector3(),
  this.torque = torque ?? Vector3();

  @override
  Wrench call({ 
    Vector3? force,
    Vector3? torque,
  }) => Wrench(
  force: force,
  torque: torque,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Wrench
    // Serialize message field [force]
    force.serialize(writer);
    // Serialize message field [torque]
    torque.serialize(writer);
  }

  @override
  Wrench deserialize(ByteDataReader reader) {
    //deserializes a message object of type Wrench
    final data = Wrench();
    // Deserialize message field [force]
    data.force = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [torque]
    data.torque = Vector3.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    return 48;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Wrench';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '4f539cf138b23283b520fd271b567936';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents force in free space, separated into
# its linear and angular parts.
Vector3  force
Vector3  torque

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
''';
  }

}

