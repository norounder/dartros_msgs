// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package actionlib_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'GoalID.dart';

//-----------------------------------------------------------

class GoalStatus extends RosMessage<GoalStatus> {
  GoalID goal_id;

  int status;

  String text;

  static GoalStatus $prototype = GoalStatus();
  GoalStatus({ 
    GoalID? goal_id,
    int? status,
    String? text,
  }):
  this.goal_id = goal_id ?? GoalID(),
  this.status = status ?? 0,
  this.text = text ?? '';

  @override
  GoalStatus call({ 
    GoalID? goal_id,
    int? status,
    String? text,
  }) => GoalStatus(
  goal_id: goal_id,
  status: status,
  text: text,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GoalStatus
    // Serialize message field [goal_id]
    goal_id.serialize(writer);
    // Serialize message field [status]
    writer.writeUint8(status);
    // Serialize message field [text]
    writer.writeString(text);
  }

  @override
  GoalStatus deserialize(ByteDataReader reader) {
    //deserializes a message object of type GoalStatus
    final data = GoalStatus();
    // Deserialize message field [goal_id]
    data.goal_id = GoalID.$prototype.deserialize(reader);
    // Deserialize message field [status]
    data.status = reader.readUint8();
    // Deserialize message field [text]
    data.text = reader.readString();
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += goal_id.getMessageSize();
    length += utf8.encode(text).length;
    return length + 5;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'actionlib_msgs/GoalStatus';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd388f9b87b3c471f784434d671988d4a';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''GoalID goal_id
uint8 status
uint8 PENDING         = 0   # The goal has yet to be processed by the action server
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                            #   and has since completed its execution (Terminal State)
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                            #    to some failure (Terminal State)
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                            #    because the goal was unattainable or invalid (Terminal State)
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                            #    and has not yet completed execution
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                            #    but the action server has not yet confirmed that the goal is canceled
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                            #    and was successfully cancelled (Terminal State)
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                            #    sent over the wire by an action server

#Allow for the user to associate a string with GoalStatus for debugging
string text


================================================================================
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


''';
  }

// Constants for message
  static const int PENDING = 0;
  static const int ACTIVE = 1;
  static const int PREEMPTED = 2;
  static const int SUCCEEDED = 3;
  static const int ABORTED = 4;
  static const int REJECTED = 5;
  static const int PREEMPTING = 6;
  static const int RECALLING = 7;
  static const int RECALLED = 8;
  static const int LOST = 9;

}

