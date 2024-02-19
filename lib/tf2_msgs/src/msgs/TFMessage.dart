// Auto-generated. Do not edit!

// Updated: Mon Feb 19 17:02:55 2024

// (in-package tf2_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';

//-----------------------------------------------------------

class TFMessage extends RosMessage<TFMessage> {
  List<TransformStamped> transforms;

  static TFMessage $prototype = TFMessage();
  TFMessage({ 
    List<TransformStamped>? transforms,
  }):
  this.transforms = transforms ?? [];

  @override
  TFMessage call({ 
    List<TransformStamped>? transforms,
  }) => TFMessage(
  transforms: transforms,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TFMessage
    // Serialize message field [transforms]
    // Serialize the length for message field [transforms]
    writer.writeUint32(transforms.length);
    transforms.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  TFMessage deserialize(ByteDataReader reader) {
    //deserializes a message object of type TFMessage
    final data = TFMessage();
    // Deserialize message field [transforms]
    {
      // Deserialize array length for message field [transforms]
      final len = reader.readInt32();
      data.transforms = List.generate(len, (_) => TransformStamped.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    var length = 0;
    transforms.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'tf2_msgs/TFMessage';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '94810edda583a504dfda3829e70d7eec';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''geometry_msgs/TransformStamped[] transforms

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href="http://wiki.ros.org/tf">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

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

''';
  }

}

