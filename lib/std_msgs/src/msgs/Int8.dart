// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Int8 extends RosMessage<Int8> {
  int data;

  static Int8 $prototype = Int8();
  Int8({ 
    int? data,
  }):
  this.data = data ?? 0;

  @override
  Int8 call({ 
    int? data,
  }) => Int8(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Int8
    // Serialize message field [data]
    writer.writeInt8(data);
  }

  @override
  Int8 deserialize(ByteDataReader reader) {
    //deserializes a message object of type Int8
    final data = Int8();
    // Deserialize message field [data]
    data.data = reader.readInt8();
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Int8';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '27ffa0c9c4b8fb8492252bcad9e5c57b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''int8 data

''';
  }

}

