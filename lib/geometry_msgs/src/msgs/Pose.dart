// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'Point.dart';
import 'Quaternion.dart';

//-----------------------------------------------------------

class Pose extends RosMessage<Pose> {
  Point position;

  Quaternion orientation;

  static Pose $prototype = Pose();
  Pose({ 
    Point? position,
    Quaternion? orientation,
  }):
  this.position = position ?? Point(),
  this.orientation = orientation ?? Quaternion();

  @override
  Pose call({ 
    Point? position,
    Quaternion? orientation,
  }) => Pose(
  position: position,
  orientation: orientation,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Pose
    // Serialize message field [position]
    position.serialize(writer);
    // Serialize message field [orientation]
    orientation.serialize(writer);
  }

  @override
  Pose deserialize(ByteDataReader reader) {
    //deserializes a message object of type Pose
    final data = Pose();
    // Deserialize message field [position]
    data.position = Point.$prototype.deserialize(reader);
    // Deserialize message field [orientation]
    data.orientation = Quaternion.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    return 56;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/Pose';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'e45d45a5a1ce597b249e23fb30fc871f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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

