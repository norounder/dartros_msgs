// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class UInt8 extends RosMessage<UInt8> {
  int data;

  static UInt8 $prototype = UInt8();
  UInt8({ 
    int? data,
  }):
  this.data = data ?? 0;

  @override
  UInt8 call({ 
    int? data,
  }) => UInt8(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type UInt8
    // Serialize message field [data]
    writer.writeUint8(data);
  }

  @override
  UInt8 deserialize(ByteDataReader reader) {
    //deserializes a message object of type UInt8
    final data = UInt8();
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
    return 'std_msgs/UInt8';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '7c8164229e7d2c17eb95e9231617fdee';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''uint8 data

''';
  }

}

