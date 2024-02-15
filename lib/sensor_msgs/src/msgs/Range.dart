// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Range extends RosMessage<Range> {
  Header header;

  int radiation_type;

  double field_of_view;

  double min_range;

  double max_range;

  double range;

  static Range $prototype = Range();
  Range({ 
    Header? header,
    int? radiation_type,
    double? field_of_view,
    double? min_range,
    double? max_range,
    double? range,
  }):
  this.header = header ?? Header(),
  this.radiation_type = radiation_type ?? 0,
  this.field_of_view = field_of_view ?? 0.0,
  this.min_range = min_range ?? 0.0,
  this.max_range = max_range ?? 0.0,
  this.range = range ?? 0.0;

  @override
  Range call({ 
    Header? header,
    int? radiation_type,
    double? field_of_view,
    double? min_range,
    double? max_range,
    double? range,
  }) => Range(
  header: header,
  radiation_type: radiation_type,
  field_of_view: field_of_view,
  min_range: min_range,
  max_range: max_range,
  range: range,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Range
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [radiation_type]
    writer.writeUint8(radiation_type);
    // Serialize message field [field_of_view]
    writer.writeFloat32(field_of_view);
    // Serialize message field [min_range]
    writer.writeFloat32(min_range);
    // Serialize message field [max_range]
    writer.writeFloat32(max_range);
    // Serialize message field [range]
    writer.writeFloat32(range);
  }

  @override
  Range deserialize(ByteDataReader reader) {
    //deserializes a message object of type Range
    final data = Range();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [radiation_type]
    data.radiation_type = reader.readUint8();
    // Deserialize message field [field_of_view]
    data.field_of_view = reader.readFloat32();
    // Deserialize message field [min_range]
    data.min_range = reader.readFloat32();
    // Deserialize message field [max_range]
    data.max_range = reader.readFloat32();
    // Deserialize message field [range]
    data.range = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    return length + 17;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/Range';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'c005c34273dc426c67a020a87bc24148';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Single range reading from an active ranger that emits energy and reports
# one range reading that is valid along an arc at the distance measured. 
# This message is  not appropriate for laser scanners. See the LaserScan
# message if you are working with a laser scanner.

# This message also can represent a fixed-distance (binary) ranger.  This
# sensor will have min_range===max_range===distance of detection.
# These sensors follow REP 117 and will output -Inf if the object is detected
# and +Inf if the object is outside of the detection range.

Header header           # timestamp in the header is the time the ranger
                        # returned the distance reading

# Radiation type enums
# If you want a value added to this list, send an email to the ros-users list
uint8 ULTRASOUND=0
uint8 INFRARED=1

uint8 radiation_type    # the type of radiation used by the sensor
                        # (sound, IR, etc) [enum]

float32 field_of_view   # the size of the arc that the distance reading is
                        # valid for [rad]
                        # the object causing the range reading may have
                        # been anywhere within -field_of_view/2 and
                        # field_of_view/2 at the measured range. 
                        # 0 angle corresponds to the x-axis of the sensor.

float32 min_range       # minimum range value [m]
float32 max_range       # maximum range value [m]
                        # Fixed distance rangers require min_range==max_range

float32 range           # range data [m]
                        # (Note: values < range_min or > range_max
                        # should be discarded)
                        # Fixed distance rangers only output -Inf or +Inf.
                        # -Inf represents a detection within fixed distance.
                        # (Detection too close to the sensor to quantify)
                        # +Inf represents no detection within the fixed distance.
                        # (Object out of range)
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

// Constants for message
  static const int ULTRASOUND = 0;
  static const int INFRARED = 1;

}

