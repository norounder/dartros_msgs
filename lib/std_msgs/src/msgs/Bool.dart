// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Bool extends RosMessage<Bool> {
  bool data;

  static Bool $prototype = Bool();
  Bool({ 
    bool? data,
  }):
  this.data = data ?? false;

  @override
  Bool call({ 
    bool? data,
  }) => Bool(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Bool
    // Serialize message field [data]
    writer.writeUint8(data == false ? 0 : 1);
  }

  @override
  Bool deserialize(ByteDataReader reader) {
    //deserializes a message object of type Bool
    final data = Bool();
    // Deserialize message field [data]
    data.data = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Bool';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '8b94c1b53db61fb6aed406028ad6332a';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool data
''';
  }

}

