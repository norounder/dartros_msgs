// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'LaserEcho.dart';

//-----------------------------------------------------------

class MultiEchoLaserScan extends RosMessage<MultiEchoLaserScan> {
  Header header;

  double angle_min;

  double angle_max;

  double angle_increment;

  double time_increment;

  double scan_time;

  double range_min;

  double range_max;

  List<LaserEcho> ranges;

  List<LaserEcho> intensities;

  static MultiEchoLaserScan $prototype = MultiEchoLaserScan();
  MultiEchoLaserScan({ 
    Header? header,
    double? angle_min,
    double? angle_max,
    double? angle_increment,
    double? time_increment,
    double? scan_time,
    double? range_min,
    double? range_max,
    List<LaserEcho>? ranges,
    List<LaserEcho>? intensities,
  }):
  this.header = header ?? Header(),
  this.angle_min = angle_min ?? 0.0,
  this.angle_max = angle_max ?? 0.0,
  this.angle_increment = angle_increment ?? 0.0,
  this.time_increment = time_increment ?? 0.0,
  this.scan_time = scan_time ?? 0.0,
  this.range_min = range_min ?? 0.0,
  this.range_max = range_max ?? 0.0,
  this.ranges = ranges ?? [],
  this.intensities = intensities ?? [];

  @override
  MultiEchoLaserScan call({ 
    Header? header,
    double? angle_min,
    double? angle_max,
    double? angle_increment,
    double? time_increment,
    double? scan_time,
    double? range_min,
    double? range_max,
    List<LaserEcho>? ranges,
    List<LaserEcho>? intensities,
  }) => MultiEchoLaserScan(
  header: header,
  angle_min: angle_min,
  angle_max: angle_max,
  angle_increment: angle_increment,
  time_increment: time_increment,
  scan_time: scan_time,
  range_min: range_min,
  range_max: range_max,
  ranges: ranges,
  intensities: intensities,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MultiEchoLaserScan
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [angle_min]
    writer.writeFloat32(angle_min);
    // Serialize message field [angle_max]
    writer.writeFloat32(angle_max);
    // Serialize message field [angle_increment]
    writer.writeFloat32(angle_increment);
    // Serialize message field [time_increment]
    writer.writeFloat32(time_increment);
    // Serialize message field [scan_time]
    writer.writeFloat32(scan_time);
    // Serialize message field [range_min]
    writer.writeFloat32(range_min);
    // Serialize message field [range_max]
    writer.writeFloat32(range_max);
    // Serialize message field [ranges]
    // Serialize the length for message field [ranges]
    writer.writeUint32(ranges.length);
    ranges.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [intensities]
    // Serialize the length for message field [intensities]
    writer.writeUint32(intensities.length);
    intensities.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  MultiEchoLaserScan deserialize(ByteDataReader reader) {
    //deserializes a message object of type MultiEchoLaserScan
    final data = MultiEchoLaserScan();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [angle_min]
    data.angle_min = reader.readFloat32();
    // Deserialize message field [angle_max]
    data.angle_max = reader.readFloat32();
    // Deserialize message field [angle_increment]
    data.angle_increment = reader.readFloat32();
    // Deserialize message field [time_increment]
    data.time_increment = reader.readFloat32();
    // Deserialize message field [scan_time]
    data.scan_time = reader.readFloat32();
    // Deserialize message field [range_min]
    data.range_min = reader.readFloat32();
    // Deserialize message field [range_max]
    data.range_max = reader.readFloat32();
    // Deserialize message field [ranges]
    {
      // Deserialize array length for message field [ranges]
      final len = reader.readInt32();
      data.ranges = List.generate(len, (_) => LaserEcho.$prototype.deserialize(reader));
    }
    // Deserialize message field [intensities]
    {
      // Deserialize array length for message field [intensities]
      final len = reader.readInt32();
      data.intensities = List.generate(len, (_) => LaserEcho.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    ranges.forEach((val) {
      length += val.getMessageSize();
    });
    intensities.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 36;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/MultiEchoLaserScan';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '6fefb0c6da89d7c8abe4b339f5c2f8fb';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Single scan from a multi-echo planar laser range-finder
#
# If you have another ranging device with different behavior (e.g. a sonar
# array), please find or create a different message, since applications
# will make fairly laser-specific assumptions about this data

Header header            # timestamp in the header is the acquisition time of 
                         # the first ray in the scan.
                         #
                         # in frame frame_id, angles are measured around 
                         # the positive Z axis (counterclockwise, if Z is up)
                         # with zero angle being forward along the x axis
                         
float32 angle_min        # start angle of the scan [rad]
float32 angle_max        # end angle of the scan [rad]
float32 angle_increment  # angular distance between measurements [rad]

float32 time_increment   # time between measurements [seconds] - if your scanner
                         # is moving, this will be used in interpolating position
                         # of 3d points
float32 scan_time        # time between scans [seconds]

float32 range_min        # minimum range value [m]
float32 range_max        # maximum range value [m]

LaserEcho[] ranges       # range data [m] (Note: NaNs, values < range_min or > range_max should be discarded)
                         # +Inf measurements are out of range
                         # -Inf measurements are too close to determine exact distance.
LaserEcho[] intensities  # intensity data [device-specific units].  If your
                         # device does not provide intensities, please leave
                         # the array empty.
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
MSG: sensor_msgs/LaserEcho
# This message is a submessage of MultiEchoLaserScan and is not intended
# to be used separately.

float32[] echoes  # Multiple values of ranges or intensities.
                  # Each array represents data from the same angle increment.
''';
  }

}

