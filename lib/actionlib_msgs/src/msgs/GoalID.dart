// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package actionlib_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class GoalID extends RosMessage<GoalID> {
  RosTime stamp;

  String id;

  static GoalID $prototype = GoalID();
  GoalID({ 
    RosTime? stamp,
    String? id,
  }):
  this.stamp = stamp ?? RosTime(secs: 0, nsecs: 0),
  this.id = id ?? '';

  @override
  GoalID call({ 
    RosTime? stamp,
    String? id,
  }) => GoalID(
  stamp: stamp,
  id: id,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GoalID
    // Serialize message field [stamp]
    writer.writeTime(stamp);
    // Serialize message field [id]
    writer.writeString(id);
  }

  @override
  GoalID deserialize(ByteDataReader reader) {
    //deserializes a message object of type GoalID
    final data = GoalID();
    // Deserialize message field [stamp]
    data.stamp = reader.readTime();
    // Deserialize message field [id]
    data.id = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(id).length;
    return length + 12;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'actionlib_msgs/GoalID';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '302881f31927c1df708a2dbab0e80ee8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


''';
  }

}

