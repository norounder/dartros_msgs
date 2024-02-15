// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class StringMessage extends RosMessage<StringMessage> {
  String data;

  static StringMessage $prototype = StringMessage();
  StringMessage({ 
    String? data,
  }):
  this.data = data ?? '';

  @override
  StringMessage call({ 
    String? data,
  }) => StringMessage(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type StringMessage
    // Serialize message field [data]
    writer.writeString(data);
  }

  @override
  StringMessage deserialize(ByteDataReader reader) {
    //deserializes a message object of type StringMessage
    final data = StringMessage();
    // Deserialize message field [data]
    data.data = reader.readString();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += utf8.encode(data).length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/String';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '992ce8a1687cec8c8bd883ec73ca41d1';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''string data

''';
  }

}

