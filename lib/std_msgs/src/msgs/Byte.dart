// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Byte extends RosMessage<Byte> {
  int data;

  static Byte $prototype = Byte();
  Byte({ 
    int? data,
  }):
  this.data = data ?? 0;

  @override
  Byte call({ 
    int? data,
  }) => Byte(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Byte
    // Serialize message field [data]
    writer.writeUint8(data);
  }

  @override
  Byte deserialize(ByteDataReader reader) {
    //deserializes a message object of type Byte
    final data = Byte();
    // Deserialize message field [data]
    data.data = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Byte';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ad736a2e8818154c487bb80fe42ce43b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''byte data

''';
  }

}

