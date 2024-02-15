// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Int32 extends RosMessage<Int32> {
  int data;

  static Int32 $prototype = Int32();
  Int32({ 
    int? data,
  }):
  this.data = data ?? 0;

  @override
  Int32 call({ 
    int? data,
  }) => Int32(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Int32
    // Serialize message field [data]
    writer.writeInt32(data);
  }

  @override
  Int32 deserialize(ByteDataReader reader) {
    //deserializes a message object of type Int32
    final data = Int32();
    // Deserialize message field [data]
    data.data = reader.readInt32();
    return data;
  }

  int getMessageSize() {
    return 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Int32';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'da5909fbe378aeaf85e547e830cc1bb7';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''int32 data
''';
  }

}

