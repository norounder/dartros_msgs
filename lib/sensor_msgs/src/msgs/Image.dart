// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Image extends RosMessage<Image> {
  Header header;

  int height;

  int width;

  String encoding;

  int is_bigendian;

  int step;

  List<int> data;

  static Image $prototype = Image();
  Image({ 
    Header? header,
    int? height,
    int? width,
    String? encoding,
    int? is_bigendian,
    int? step,
    List<int>? data,
  }):
  this.header = header ?? Header(),
  this.height = height ?? 0,
  this.width = width ?? 0,
  this.encoding = encoding ?? '',
  this.is_bigendian = is_bigendian ?? 0,
  this.step = step ?? 0,
  this.data = data ?? [];

  @override
  Image call({ 
    Header? header,
    int? height,
    int? width,
    String? encoding,
    int? is_bigendian,
    int? step,
    List<int>? data,
  }) => Image(
  header: header,
  height: height,
  width: width,
  encoding: encoding,
  is_bigendian: is_bigendian,
  step: step,
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Image
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [height]
    writer.writeUint32(height);
    // Serialize message field [width]
    writer.writeUint32(width);
    // Serialize message field [encoding]
    writer.writeString(encoding);
    // Serialize message field [is_bigendian]
    writer.writeUint8(is_bigendian);
    // Serialize message field [step]
    writer.writeUint32(step);
    // Serialize message field [data]
    writer.writeArray<int>(data, (val) => writer.writeUint8(val), specArrayLen: null);
  }

  @override
  Image deserialize(ByteDataReader reader) {
    //deserializes a message object of type Image
    final data = Image();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [height]
    data.height = reader.readUint32();
    // Deserialize message field [width]
    data.width = reader.readUint32();
    // Deserialize message field [encoding]
    data.encoding = reader.readString();
    // Deserialize message field [is_bigendian]
    data.is_bigendian = reader.readUint8();
    // Deserialize message field [step]
    data.step = reader.readUint32();
    // Deserialize message field [data]
    data.data = reader.readArray<int>(() => reader.readUint8(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(encoding).length;
    length += data.length;
    return length + 21;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/Image';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '060021388200f6f0f447d0fcd9c64743';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message contains an uncompressed image
# (0, 0) is at top-left corner of image
#

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image
                     # If the frame_id here and the frame_id of the CameraInfo
                     # message associated with the image conflict
                     # the behavior is undefined

uint32 height         # image height, that is, number of rows
uint32 width          # image width, that is, number of columns

# The legal values for encoding are in file src/image_encodings.cpp
# If you want to standardize a new string format, join
# ros-users@lists.sourceforge.net and send an email proposing a new encoding.

string encoding       # Encoding of pixels -- channel meaning, ordering, size
                      # taken from the list of strings in include/sensor_msgs/image_encodings.h

uint8 is_bigendian    # is this data bigendian?
uint32 step           # Full row length in bytes
uint8[] data          # actual matrix data, size is (step * rows)

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

