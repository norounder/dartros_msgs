// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:06:09 2024

// (in-package diagnostic_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class KeyValue extends RosMessage<KeyValue> {
  String key;

  String value;

  static KeyValue $prototype = KeyValue();
  KeyValue({ 
    String? key,
    String? value,
  }):
  this.key = key ?? '',
  this.value = value ?? '';

  @override
  KeyValue call({ 
    String? key,
    String? value,
  }) => KeyValue(
  key: key,
  value: value,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type KeyValue
    // Serialize message field [key]
    writer.writeString(key);
    // Serialize message field [value]
    writer.writeString(value);
  }

  @override
  KeyValue deserialize(ByteDataReader reader) {
    //deserializes a message object of type KeyValue
    final data = KeyValue();
    // Deserialize message field [key]
    data.key = reader.readString();
    // Deserialize message field [value]
    data.value = reader.readString();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += utf8.encode(key).length;
    length += utf8.encode(value).length;
    return length + 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'diagnostic_msgs/KeyValue';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'cf57fdc6617a881a88c16e768132149c';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''string key # what to label this value when viewing
string value # a value to track over time

''';
  }

}

