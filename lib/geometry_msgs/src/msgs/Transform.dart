// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'Vector3.dart';
import 'Quaternion.dart';

//-----------------------------------------------------------

class Transform extends RosMessage<Transform> {
  Vector3 translation;

  Quaternion rotation;

  static Transform $prototype = Transform();
  Transform({ 
    Vector3? translation,
    Quaternion? rotation,
  }):
  this.translation = translation ?? Vector3(),
  this.rotation = rotation ?? Quaternion();

  @override
  Transform call({ 
    Vector3? translation,
    Quaternion? rotation,
  }) => Transform(
  translation: translation,
  rotation: rotation,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Transform
    // Serialize message field [translation]
    translation.serialize(writer);
    // Serialize message field [rotation]
    rotation.serialize(writer);
  }

  @override
  Transform deserialize(ByteDataReader reader) {
    //deserializes a message object of type Transform
    final data = Transform();
    // Deserialize message field [translation]
    data.translation = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [rotation]
    data.rotation = Quaternion.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    return 56;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Transform';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ac9eff44abf714214112b05d54a3cf9b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents the transform between two coordinate frames in free space.

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

''';
  }

}

