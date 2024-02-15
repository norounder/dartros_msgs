// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class UInt16 extends RosMessage<UInt16> {
  int data;

  static UInt16 $prototype = UInt16();
  UInt16({ 
    int? data,
  }):
  this.data = data ?? 0;

  @override
  UInt16 call({ 
    int? data,
  }) => UInt16(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type UInt16
    // Serialize message field [data]
    writer.writeUint16(data);
  }

  @override
  UInt16 deserialize(ByteDataReader reader) {
    //deserializes a message object of type UInt16
    final data = UInt16();
    // Deserialize message field [data]
    data.data = reader.readUint16();
    return data;
  }

  int getMessageSize() {
    return 2;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/UInt16';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1df79edf208b629fe6b81923a544552d';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''uint16 data

''';
  }

}

