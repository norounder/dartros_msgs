// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'Vector3.dart';

//-----------------------------------------------------------

class Inertia extends RosMessage<Inertia> {
  double m;

  Vector3 com;

  double ixx;

  double ixy;

  double ixz;

  double iyy;

  double iyz;

  double izz;

  static Inertia $prototype = Inertia();
  Inertia({ 
    double? m,
    Vector3? com,
    double? ixx,
    double? ixy,
    double? ixz,
    double? iyy,
    double? iyz,
    double? izz,
  }):
  this.m = m ?? 0.0,
  this.com = com ?? Vector3(),
  this.ixx = ixx ?? 0.0,
  this.ixy = ixy ?? 0.0,
  this.ixz = ixz ?? 0.0,
  this.iyy = iyy ?? 0.0,
  this.iyz = iyz ?? 0.0,
  this.izz = izz ?? 0.0;

  @override
  Inertia call({ 
    double? m,
    Vector3? com,
    double? ixx,
    double? ixy,
    double? ixz,
    double? iyy,
    double? iyz,
    double? izz,
  }) => Inertia(
  m: m,
  com: com,
  ixx: ixx,
  ixy: ixy,
  ixz: ixz,
  iyy: iyy,
  iyz: iyz,
  izz: izz,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Inertia
    // Serialize message field [m]
    writer.writeFloat64(m);
    // Serialize message field [com]
    com.serialize(writer);
    // Serialize message field [ixx]
    writer.writeFloat64(ixx);
    // Serialize message field [ixy]
    writer.writeFloat64(ixy);
    // Serialize message field [ixz]
    writer.writeFloat64(ixz);
    // Serialize message field [iyy]
    writer.writeFloat64(iyy);
    // Serialize message field [iyz]
    writer.writeFloat64(iyz);
    // Serialize message field [izz]
    writer.writeFloat64(izz);
  }

  @override
  Inertia deserialize(ByteDataReader reader) {
    //deserializes a message object of type Inertia
    final data = Inertia();
    // Deserialize message field [m]
    data.m = reader.readFloat64();
    // Deserialize message field [com]
    data.com = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [ixx]
    data.ixx = reader.readFloat64();
    // Deserialize message field [ixy]
    data.ixy = reader.readFloat64();
    // Deserialize message field [ixz]
    data.ixz = reader.readFloat64();
    // Deserialize message field [iyy]
    data.iyy = reader.readFloat64();
    // Deserialize message field [iyz]
    data.iyz = reader.readFloat64();
    // Deserialize message field [izz]
    data.izz = reader.readFloat64();
    return data;
  }

  int getMessageSize() {
    return 80;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Inertia';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1d26e4bb6c83ff141c5cf0d883c2b0fe';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Mass [kg]
float64 m

# Center of mass [m]
geometry_msgs/Vector3 com

# Inertia Tensor [kg-m^2]
#     | ixx ixy ixz |
# I = | ixy iyy iyz |
#     | ixz iyz izz |
float64 ixx
float64 ixy
float64 ixz
float64 iyy
float64 iyz
float64 izz

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

