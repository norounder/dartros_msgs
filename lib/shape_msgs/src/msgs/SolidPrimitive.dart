// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:47 2024

// (in-package shape_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class SolidPrimitive extends RosMessage<SolidPrimitive> {
  int type;

  List<double> dimensions;

  static SolidPrimitive $prototype = SolidPrimitive();
  SolidPrimitive({ 
    int? type,
    List<double>? dimensions,
  }):
  this.type = type ?? 0,
  this.dimensions = dimensions ?? [];

  @override
  SolidPrimitive call({ 
    int? type,
    List<double>? dimensions,
  }) => SolidPrimitive(
  type: type,
  dimensions: dimensions,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type SolidPrimitive
    // Serialize message field [type]
    writer.writeUint8(type);
    // Serialize message field [dimensions]
    writer.writeArray<double>(dimensions, (val) => writer.writeFloat64(val), specArrayLen: null);
  }

  @override
  SolidPrimitive deserialize(ByteDataReader reader) {
    //deserializes a message object of type SolidPrimitive
    final data = SolidPrimitive();
    // Deserialize message field [type]
    data.type = reader.readUint8();
    // Deserialize message field [dimensions]
    data.dimensions = reader.readArray<double>(() => reader.readFloat64(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += 8 * dimensions.length;
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'shape_msgs/SolidPrimitive';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd8f8cbc74c5ff283fca29569ccefb45d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Define box, sphere, cylinder, cone 
# All shapes are defined to have their bounding boxes centered around 0,0,0.

uint8 BOX=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 CONE=4

# The type of the shape
uint8 type


# The dimensions of the shape
float64[] dimensions

# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array

# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
# sides of the box.
uint8 BOX_X=0
uint8 BOX_Y=1
uint8 BOX_Z=2


# For the SPHERE type, only one component is used, and it gives the radius of
# the sphere.
uint8 SPHERE_RADIUS=0


# For the CYLINDER and CONE types, the center line is oriented along
# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
# of dimensions gives the height of the cylinder (cone).  The
# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
# radius of the base of the cylinder (cone).  Cone and cylinder
# primitives are defined to be circular. The tip of the cone is
# pointing up, along +Z axis.

uint8 CYLINDER_HEIGHT=0
uint8 CYLINDER_RADIUS=1

uint8 CONE_HEIGHT=0
uint8 CONE_RADIUS=1

''';
  }

// Constants for message
  static const int BOX = 1;
  static const int SPHERE = 2;
  static const int CYLINDER = 3;
  static const int CONE = 4;
  static const int BOX_X = 0;
  static const int BOX_Y = 1;
  static const int BOX_Z = 2;
  static const int SPHERE_RADIUS = 0;
  static const int CYLINDER_HEIGHT = 0;
  static const int CYLINDER_RADIUS = 1;
  static const int CONE_HEIGHT = 0;
  static const int CONE_RADIUS = 1;

}

