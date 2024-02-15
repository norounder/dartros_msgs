// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class RelativeHumidity extends RosMessage<RelativeHumidity> {
  Header header;

  double relative_humidity;

  double variance;

  static RelativeHumidity $prototype = RelativeHumidity();
  RelativeHumidity({ 
    Header? header,
    double? relative_humidity,
    double? variance,
  }):
  this.header = header ?? Header(),
  this.relative_humidity = relative_humidity ?? 0.0,
  this.variance = variance ?? 0.0;

  @override
  RelativeHumidity call({ 
    Header? header,
    double? relative_humidity,
    double? variance,
  }) => RelativeHumidity(
  header: header,
  relative_humidity: relative_humidity,
  variance: variance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type RelativeHumidity
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [relative_humidity]
    writer.writeFloat64(relative_humidity);
    // Serialize message field [variance]
    writer.writeFloat64(variance);
  }

  @override
  RelativeHumidity deserialize(ByteDataReader reader) {
    //deserializes a message object of type RelativeHumidity
    final data = RelativeHumidity();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [relative_humidity]
    data.relative_humidity = reader.readFloat64();
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
    return 'sensor_msgs/RelativeHumidity';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8730015b05955b7e992ce29a2678d90f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return ''' # Single reading from a relative humidity sensor.  Defines the ratio of partial
 # pressure of water vapor to the saturated vapor pressure at a temperature.

 Header header             # timestamp of the measurement
                           # frame_id is the location of the humidity sensor

 float64 relative_humidity # Expression of the relative humidity
                           # from 0.0 to 1.0.
                           # 0.0 is no partial pressure of water vapor
                           # 1.0 represents partial pressure of saturation

 float64 variance          # 0 is interpreted as variance unknown
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

