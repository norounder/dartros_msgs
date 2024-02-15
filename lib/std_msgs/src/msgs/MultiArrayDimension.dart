// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class MultiArrayDimension extends RosMessage<MultiArrayDimension> {
  String label;

  int size;

  int stride;

  static MultiArrayDimension $prototype = MultiArrayDimension();
  MultiArrayDimension({ 
    String? label,
    int? size,
    int? stride,
  }):
  this.label = label ?? '',
  this.size = size ?? 0,
  this.stride = stride ?? 0;

  @override
  MultiArrayDimension call({ 
    String? label,
    int? size,
    int? stride,
  }) => MultiArrayDimension(
  label: label,
  size: size,
  stride: stride,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MultiArrayDimension
    // Serialize message field [label]
    writer.writeString(label);
    // Serialize message field [size]
    writer.writeUint32(size);
    // Serialize message field [stride]
    writer.writeUint32(stride);
  }

  @override
  MultiArrayDimension deserialize(ByteDataReader reader) {
    //deserializes a message object of type MultiArrayDimension
    final data = MultiArrayDimension();
    // Deserialize message field [label]
    data.label = reader.readString();
    // Deserialize message field [size]
    data.size = reader.readUint32();
    // Deserialize message field [stride]
    data.stride = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += utf8.encode(label).length;
    return length + 12;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/MultiArrayDimension';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '4cd0c83a8683deae40ecdac60e53bfa8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension
''';
  }

}

