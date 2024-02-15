// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class UInt32 extends RosMessage<UInt32> {
  int data;

  static UInt32 $prototype = UInt32();
  UInt32({ 
    int? data,
  }):
  this.data = data ?? 0;

  @override
  UInt32 call({ 
    int? data,
  }) => UInt32(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type UInt32
    // Serialize message field [data]
    writer.writeUint32(data);
  }

  @override
  UInt32 deserialize(ByteDataReader reader) {
    //deserializes a message object of type UInt32
    final data = UInt32();
    // Deserialize message field [data]
    data.data = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    return 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/UInt32';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '304a39449588c7f8ce2df6e8001c5fce';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''uint32 data
''';
  }

}

