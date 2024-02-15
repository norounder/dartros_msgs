// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package geometry_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'Inertia.dart';

//-----------------------------------------------------------

class InertiaStamped extends RosMessage<InertiaStamped> {
  Header header;

  Inertia inertia;

  static InertiaStamped $prototype = InertiaStamped();
  InertiaStamped({ 
    Header? header,
    Inertia? inertia,
  }):
  this.header = header ?? Header(),
  this.inertia = inertia ?? Inertia();

  @override
  InertiaStamped call({ 
    Header? header,
    Inertia? inertia,
  }) => InertiaStamped(
  header: header,
  inertia: inertia,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type InertiaStamped
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [inertia]
    inertia.serialize(writer);
  }

  @override
  InertiaStamped deserialize(ByteDataReader reader) {
    //deserializes a message object of type InertiaStamped
    final data = InertiaStamped();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [inertia]
    data.inertia = Inertia.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 80;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'geometry_msgs/InertiaStamped';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ddee48caeab5a966c5e8d166654a9ac7';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''Header header
Inertia inertia

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
MSG: geometry_msgs/Inertia
# Mass [kg]
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

