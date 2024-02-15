// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package nav_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:actionlib_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';
import 'GetMapFeedback.dart';

//-----------------------------------------------------------

class GetMapActionFeedback extends RosActionFeedback<GetMapFeedback, GetMapActionFeedback> {
  @override
  Header header;

  @override
  GoalStatus status;

  @override
  GetMapFeedback feedback;

  static GetMapActionFeedback $prototype = GetMapActionFeedback();
  GetMapActionFeedback({ 
    Header? header,
    GoalStatus? status,
    GetMapFeedback? feedback,
  }):
  this.header = header ?? Header(),
  this.status = status ?? GoalStatus(),
  this.feedback = feedback ?? GetMapFeedback();

  @override
  GetMapActionFeedback call({ 
    Header? header,
    GoalStatus? status,
    GetMapFeedback? feedback,
  }) => GetMapActionFeedback(
  header: header,
  status: status,
  feedback: feedback,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GetMapActionFeedback
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [status]
    status.serialize(writer);
    // Serialize message field [feedback]
    feedback.serialize(writer);
  }

  @override
  GetMapActionFeedback deserialize(ByteDataReader reader) {
    //deserializes a message object of type GetMapActionFeedback
    final data = GetMapActionFeedback();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [status]
    data.status = GoalStatus.$prototype.deserialize(reader);
    // Deserialize message field [feedback]
    data.feedback = GetMapFeedback.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    length += status.getMessageSize();
    return length;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'nav_msgs/GetMapActionFeedback';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'aae20e09065c3809e8a8e87c4c8953fd';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
GetMapFeedback feedback

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: actionlib_msgs/GoalStatus
GoalID goal_id
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


================================================================================
MSG: nav_msgs/GetMapFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# no feedback

''';
  }

}

