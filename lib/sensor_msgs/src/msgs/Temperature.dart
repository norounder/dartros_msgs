// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Temperature extends RosMessage<Temperature> {
  Header header;

  double temperature;

  double variance;

  static Temperature $prototype = Temperature();
  Temperature({ 
    Header? header,
    double? temperature,
    double? variance,
  }):
  this.header = header ?? Header(),
  this.temperature = temperature ?? 0.0,
  this.variance = variance ?? 0.0;

  @override
  Temperature call({ 
    Header? header,
    double? temperature,
    double? variance,
  }) => Temperature(
  header: header,
  temperature: temperature,
  variance: variance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Temperature
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [temperature]
    writer.writeFloat64(temperature);
    // Serialize message field [variance]
    writer.writeFloat64(variance);
  }

  @override
  Temperature deserialize(ByteDataReader reader) {
    //deserializes a message object of type Temperature
    final data = Temperature();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [temperature]
    data.temperature = reader.readFloat64();
    // Deserialize message field [variance]
    data.variance = reader.readFloat64();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    return length + 16;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/Temperature';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ff71b307acdbe7c871a5a6d7ed359100';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return ''' # Single temperature reading.

 Header header           # timestamp is the time the temperature was measured
                         # frame_id is the location of the temperature reading

 float64 temperature     # Measurement of the Temperature in Degrees Celsius

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

