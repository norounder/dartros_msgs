// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class FluidPressure extends RosMessage<FluidPressure> {
  Header header;

  double fluid_pressure;

  double variance;

  static FluidPressure $prototype = FluidPressure();
  FluidPressure({ 
    Header? header,
    double? fluid_pressure,
    double? variance,
  }):
  this.header = header ?? Header(),
  this.fluid_pressure = fluid_pressure ?? 0.0,
  this.variance = variance ?? 0.0;

  @override
  FluidPressure call({ 
    Header? header,
    double? fluid_pressure,
    double? variance,
  }) => FluidPressure(
  header: header,
  fluid_pressure: fluid_pressure,
  variance: variance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type FluidPressure
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [fluid_pressure]
    writer.writeFloat64(fluid_pressure);
    // Serialize message field [variance]
    writer.writeFloat64(variance);
  }

  @override
  FluidPressure deserialize(ByteDataReader reader) {
    //deserializes a message object of type FluidPressure
    final data = FluidPressure();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [fluid_pressure]
    data.fluid_pressure = reader.readFloat64();
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
    return 'sensor_msgs/FluidPressure';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '804dc5cea1c5306d6a2eb80b9833befe';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return ''' # Single pressure reading.  This message is appropriate for measuring the
 # pressure inside of a fluid (air, water, etc).  This also includes
 # atmospheric or barometric pressure.

 # This message is not appropriate for force/pressure contact sensors.

 Header header           # timestamp of the measurement
                         # frame_id is the location of the pressure sensor

 float64 fluid_pressure  # Absolute pressure reading in Pascals.

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

