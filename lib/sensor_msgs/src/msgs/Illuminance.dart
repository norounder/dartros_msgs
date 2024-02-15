// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Illuminance extends RosMessage<Illuminance> {
  Header header;

  double illuminance;

  double variance;

  static Illuminance $prototype = Illuminance();
  Illuminance({ 
    Header? header,
    double? illuminance,
    double? variance,
  }):
  this.header = header ?? Header(),
  this.illuminance = illuminance ?? 0.0,
  this.variance = variance ?? 0.0;

  @override
  Illuminance call({ 
    Header? header,
    double? illuminance,
    double? variance,
  }) => Illuminance(
  header: header,
  illuminance: illuminance,
  variance: variance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Illuminance
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [illuminance]
    writer.writeFloat64(illuminance);
    // Serialize message field [variance]
    writer.writeFloat64(variance);
  }

  @override
  Illuminance deserialize(ByteDataReader reader) {
    //deserializes a message object of type Illuminance
    final data = Illuminance();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [illuminance]
    data.illuminance = reader.readFloat64();
    // Deserialize message field [variance]
    data.variance = reader.readFloat64();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 16;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/Illuminance';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8cf5febb0952fca9d650c3d11a81a188';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return ''' # Single photometric illuminance measurement.  Light should be assumed to be
 # measured along the sensor's x-axis (the area of detection is the y-z plane).
 # The illuminance should have a 0 or positive value and be received with
 # the sensor's +X axis pointing toward the light source.

 # Photometric illuminance is the measure of the human eye's sensitivity of the
 # intensity of light encountering or passing through a surface.

 # All other Photometric and Radiometric measurements should
 # not use this message.
 # This message cannot represent:
 # Luminous intensity (candela/light source output)
 # Luminance (nits/light output per area)
 # Irradiance (watt/area), etc.

 Header header           # timestamp is the time the illuminance was measured
                         # frame_id is the location and direction of the reading

 float64 illuminance     # Measurement of the Photometric Illuminance in Lux.

 float64 variance        # 0 is interpreted as variance unknown
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

''';
  }

}

