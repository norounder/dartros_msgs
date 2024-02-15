// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class ChannelFloat32 extends RosMessage<ChannelFloat32> {
  String name;

  List<double> values;

  static ChannelFloat32 $prototype = ChannelFloat32();
  ChannelFloat32({ 
    String? name,
    List<double>? values,
  }):
  this.name = name ?? '',
  this.values = values ?? [];

  @override
  ChannelFloat32 call({ 
    String? name,
    List<double>? values,
  }) => ChannelFloat32(
  name: name,
  values: values,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ChannelFloat32
    // Serialize message field [name]
    writer.writeString(name);
    // Serialize message field [values]
    writer.writeArray<double>(values, (val) => writer.writeFloat32(val), specArrayLen: null);
  }

  @override
  ChannelFloat32 deserialize(ByteDataReader reader) {
    //deserializes a message object of type ChannelFloat32
    final data = ChannelFloat32();
    // Deserialize message field [name]
    data.name = reader.readString();
    // Deserialize message field [values]
    data.values = reader.readArray<double>(() => reader.readFloat32(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(name).length;
    length += 4 * values.length;
    return length + 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/ChannelFloat32';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '3d40139cdd33dfedcb71ffeeeb42ae7f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message is used by the PointCloud message to hold optional data
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

