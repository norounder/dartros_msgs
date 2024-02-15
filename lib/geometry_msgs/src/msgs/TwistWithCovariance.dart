// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'Twist.dart';

//-----------------------------------------------------------

class TwistWithCovariance extends RosMessage<TwistWithCovariance> {
  Twist twist;

  List<double> covariance;

  static TwistWithCovariance $prototype = TwistWithCovariance();
  TwistWithCovariance({ 
    Twist? twist,
    List<double>? covariance,
  }):
  this.twist = twist ?? Twist(),
  this.covariance = covariance ?? List.generate(36, (_) => 0);

  @override
  TwistWithCovariance call({ 
    Twist? twist,
    List<double>? covariance,
  }) => TwistWithCovariance(
  twist: twist,
  covariance: covariance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TwistWithCovariance
    // Serialize message field [twist]
    twist.serialize(writer);
    // Check that the constant length array field [covariance] has the right length
    if (covariance.length != 36) {
      throw Exception('Unable to serialize array field covariance - length must be 36');
    }
    // Serialize message field [covariance]
    writer.writeArray<double>(covariance, (val) => writer.writeFloat64(val), specArrayLen: 36);
  }

  @override
  TwistWithCovariance deserialize(ByteDataReader reader) {
    //deserializes a message object of type TwistWithCovariance
    final data = TwistWithCovariance();
    // Deserialize message field [twist]
    data.twist = Twist.$prototype.deserialize(reader);
    // Deserialize message field [covariance]
    data.covariance = reader.readArray<double>(() => reader.readFloat64(), arrayLen: 36);
    return data;
  }

  int getMessageSize() {
    return 336;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/TwistWithCovariance';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1fe8a28e6890a4cc3ae4c3ca5c7d82e6';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
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

