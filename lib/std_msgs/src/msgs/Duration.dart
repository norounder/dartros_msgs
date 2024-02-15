// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Duration extends RosMessage<Duration> {
  RosTime data;

  static Duration $prototype = Duration();
  Duration({ 
    RosTime? data,
  }):
  this.data = data ?? RosTime(secs: 0, nsecs: 0);

  @override
  Duration call({ 
    RosTime? data,
  }) => Duration(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Duration
    // Serialize message field [data]
    writer.writeTime(data);
  }

  @override
  Duration deserialize(ByteDataReader reader) {
    //deserializes a message object of type Duration
    final data = Duration();
    // Deserialize message field [data]
    data.data = reader.readTime();
    return data;
  }

  int getMessageSize() {
    return 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Duration';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '3e286caf4241d664e55f3ad380e2ae46';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''duration data

''';
  }

}

