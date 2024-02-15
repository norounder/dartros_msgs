// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'Accel.dart';

//-----------------------------------------------------------

class AccelWithCovariance extends RosMessage<AccelWithCovariance> {
  Accel accel;

  List<double> covariance;

  static AccelWithCovariance $prototype = AccelWithCovariance();
  AccelWithCovariance({ 
    Accel? accel,
    List<double>? covariance,
  }):
  this.accel = accel ?? Accel(),
  this.covariance = covariance ?? List.generate(36, (_) => 0);

  @override
  AccelWithCovariance call({ 
    Accel? accel,
    List<double>? covariance,
  }) => AccelWithCovariance(
  accel: accel,
  covariance: covariance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type AccelWithCovariance
    // Serialize message field [accel]
    accel.serialize(writer);
    // Check that the constant length array field [covariance] has the right length
    if (covariance.length != 36) {
      throw Exception('Unable to serialize array field covariance - length must be 36');
    }
    // Serialize message field [covariance]
    writer.writeArray<double>(covariance, (val) => writer.writeFloat64(val), specArrayLen: 36);
  }

  @override
  AccelWithCovariance deserialize(ByteDataReader reader) {
    //deserializes a message object of type AccelWithCovariance
    final data = AccelWithCovariance();
    // Deserialize message field [accel]
    data.accel = Accel.$prototype.deserialize(reader);
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
    return 'geometry_msgs/AccelWithCovariance';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ad5a718d699c6be72a02b8d6a139f334';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
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

