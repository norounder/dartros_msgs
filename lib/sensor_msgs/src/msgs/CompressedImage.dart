// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class CompressedImage extends RosMessage<CompressedImage> {
  Header header;

  String format;

  List<int> data;

  static CompressedImage $prototype = CompressedImage();
  CompressedImage({ 
    Header? header,
    String? format,
    List<int>? data,
  }):
  this.header = header ?? Header(),
  this.format = format ?? '',
  this.data = data ?? [];

  @override
  CompressedImage call({ 
    Header? header,
    String? format,
    List<int>? data,
  }) => CompressedImage(
  header: header,
  format: format,
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type CompressedImage
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [format]
    writer.writeString(format);
    // Serialize message field [data]
    writer.writeArray<int>(data, (val) => writer.writeUint8(val), specArrayLen: null);
  }

  @override
  CompressedImage deserialize(ByteDataReader reader) {
    //deserializes a message object of type CompressedImage
    final data = CompressedImage();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [format]
    data.format = reader.readString();
    // Deserialize message field [data]
    data.data = reader.readArray<int>(() => reader.readUint8(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(format).length;
    length += data.length;
    return length + 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/CompressedImage';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8f7a12909da2c9d3332d540a0977563f';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

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

