// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package std_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class Time extends RosMessage<Time> {
  RosTime data;

  static Time $prototype = Time();
  Time({ 
    RosTime? data,
  }):
  this.data = data ?? RosTime(secs: 0, nsecs: 0);

  @override
  Time call({ 
    RosTime? data,
  }) => Time(
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Time
    // Serialize message field [data]
    writer.writeTime(data);
  }

  @override
  Time deserialize(ByteDataReader reader) {
    //deserializes a message object of type Time
    final data = Time();
    // Deserialize message field [data]
    data.data = reader.readTime();
    return data;
  }

  int getMessageSize() {
    return 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'std_msgs/Time';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'cd7166c74c552c311fbcc2fe5a7bc289';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''time data

''';
  }

}

