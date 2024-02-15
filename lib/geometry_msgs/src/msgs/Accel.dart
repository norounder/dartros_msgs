// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'Vector3.dart';

//-----------------------------------------------------------

class Accel extends RosMessage<Accel> {
  Vector3 linear;

  Vector3 angular;

  static Accel $prototype = Accel();
  Accel({ 
    Vector3? linear,
    Vector3? angular,
  }):
  this.linear = linear ?? Vector3(),
  this.angular = angular ?? Vector3();

  @override
  Accel call({ 
    Vector3? linear,
    Vector3? angular,
  }) => Accel(
  linear: linear,
  angular: angular,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Accel
    // Serialize message field [linear]
    linear.serialize(writer);
    // Serialize message field [angular]
    angular.serialize(writer);
  }

  @override
  Accel deserialize(ByteDataReader reader) {
    //deserializes a message object of type Accel
    final data = Accel();
    // Deserialize message field [linear]
    data.linear = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [angular]
    data.angular = Vector3.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    return 48;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Accel';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '9f195f881246fdfa2798d1d3eebca84a';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

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

