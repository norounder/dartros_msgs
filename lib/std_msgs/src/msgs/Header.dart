// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Header extends RosMessage<Header> {
  int seq;

  RosTime stamp;

  String frame_id;

  static Header $prototype = Header();
  Header({ 
    int? seq,
    RosTime? stamp,
    String? frame_id,
  }):
  this.seq = seq ?? 0,
  this.stamp = stamp ?? RosTime(secs: 0, nsecs: 0),
  this.frame_id = frame_id ?? '';

  @override
  Header call({ 
    int? seq,
    RosTime? stamp,
    String? frame_id,
  }) => Header(
  seq: seq,
  stamp: stamp,
  frame_id: frame_id,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Header
    // Serialize message field [seq]
    writer.writeUint32(seq);
    // Serialize message field [stamp]
    writer.writeTime(stamp);
    // Serialize message field [frame_id]
    writer.writeString(frame_id);
  }

  @override
  Header deserialize(ByteDataReader reader) {
    //deserializes a message object of type Header
    final data = Header();
    // Deserialize message field [seq]
    data.seq = reader.readUint32();
    // Deserialize message field [stamp]
    data.stamp = reader.readTime();
    // Deserialize message field [frame_id]
    data.frame_id = reader.readString();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += utf8.encode(frame_id).length;
    return length + 16;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Header';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '2176decaecbce78abc3b96ef049fabed';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Standard metadata for higher-level stamped data types.
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

