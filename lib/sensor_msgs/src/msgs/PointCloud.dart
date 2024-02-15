// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';
import 'ChannelFloat32.dart';

//-----------------------------------------------------------

class PointCloud extends RosMessage<PointCloud> {
  Header header;

  List<Point32> points;

  List<ChannelFloat32> channels;

  static PointCloud $prototype = PointCloud();
  PointCloud({ 
    Header? header,
    List<Point32>? points,
    List<ChannelFloat32>? channels,
  }):
  this.header = header ?? Header(),
  this.points = points ?? [],
  this.channels = channels ?? [];

  @override
  PointCloud call({ 
    Header? header,
    List<Point32>? points,
    List<ChannelFloat32>? channels,
  }) => PointCloud(
  header: header,
  points: points,
  channels: channels,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PointCloud
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    writer.writeUint32(points.length);
    points.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [channels]
    // Serialize the length for message field [channels]
    writer.writeUint32(channels.length);
    channels.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  PointCloud deserialize(ByteDataReader reader) {
    //deserializes a message object of type PointCloud
    final data = PointCloud();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [points]
    {
      // Deserialize array length for message field [points]
      final len = reader.readInt32();
      data.points = List.generate(len, (_) => Point32.$prototype.deserialize(reader));
    }
    // Deserialize message field [channels]
    {
      // Deserialize array length for message field [channels]
      final len = reader.readInt32();
      data.channels = List.generate(len, (_) => ChannelFloat32.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += 12 * points.length;
    channels.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/PointCloud';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd8e9c3f5afbdd8a130fd1d2763945fca';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message holds a collection of 3d points, plus optional additional
# information about each point.

# Time of sensor data acquisition, coordinate frame ID.
Header header

# Array of 3d points. Each Point32 should be interpreted as a 3d point
# in the frame given in the header.
geometry_msgs/Point32[] points

# Each channel should have the same number of elements as points array,
# and the data in each channel should correspond 1:1 with each point.
# Channel names in common practice are listed in ChannelFloat32.msg.
ChannelFloat32[] channels

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
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: sensor_msgs/ChannelFloat32
# This message is used by the PointCloud message to hold optional data
# associated with each point in the cloud. The length of the values
# array should be the same as the length of the points array in the
# PointCloud, and each value should be associated with the corresponding
# point.

# Channel names in existing practice include:
#   "u", "v" - row and column (respectively) in the left stereo image.
#              This is opposite to usual conventions but remains for
#              historical reasons. The newer PointCloud2 message has no
#              such problem.
#   "rgb" - For point clouds produced by color stereo cameras. uint8
#           (R,G,B) values packed into the least significant 24 bits,
#           in order.
#   "intensity" - laser or pixel intensity.
#   "distance"

# The channel name should give semantics of the channel (e.g.
# "intensity" instead of "value").
string name

# The values array should be 1-1 with the elements of the associated
# PointCloud.
float32[] values

''';
  }

}

