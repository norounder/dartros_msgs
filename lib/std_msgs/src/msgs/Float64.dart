// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Float64 extends RosMessage<Float64> {
  double data;

  static Float64 $prototype = Float64();
  Float64({ 
    double? data,
  }):
  this.data = data ?? 0.0;

  @override
  Float64 call({ 
    double? data,
  }) => Float64(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Float64
    // Serialize message field [data]
    writer.writeFloat64(data);
  }

  @override
  Float64 deserialize(ByteDataReader reader) {
    //deserializes a message object of type Float64
    final data = Float64();
    // Deserialize message field [data]
    data.data = reader.readFloat64();
    return data;
  }

  int getMessageSize() {
    return 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Float64';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'fdb28210bfa9d7c91146260178d9a584';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''float64 data
''';
  }

}

