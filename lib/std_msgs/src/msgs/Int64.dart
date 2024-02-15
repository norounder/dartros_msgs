// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Int64 extends RosMessage<Int64> {
  int data;

  static Int64 $prototype = Int64();
  Int64({ 
    int? data,
  }):
  this.data = data ?? 0;

  @override
  Int64 call({ 
    int? data,
  }) => Int64(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Int64
    // Serialize message field [data]
    writer.writeInt64(data);
  }

  @override
  Int64 deserialize(ByteDataReader reader) {
    //deserializes a message object of type Int64
    final data = Int64();
    // Deserialize message field [data]
    data.data = reader.readInt64();
    return data;
  }

  int getMessageSize() {
    return 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Int64';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '34add168574510e6e17f5d23ecc077ef';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''int64 data
''';
  }

}

