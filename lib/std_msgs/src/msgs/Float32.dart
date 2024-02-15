// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Float32 extends RosMessage<Float32> {
  double data;

  static Float32 $prototype = Float32();
  Float32({ 
    double? data,
  }):
  this.data = data ?? 0.0;

  @override
  Float32 call({ 
    double? data,
  }) => Float32(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Float32
    // Serialize message field [data]
    writer.writeFloat32(data);
  }

  @override
  Float32 deserialize(ByteDataReader reader) {
    //deserializes a message object of type Float32
    final data = Float32();
    // Deserialize message field [data]
    data.data = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    return 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Float32';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '73fcbf46b49191e672908e50842a83d4';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''float32 data
''';
  }

}

