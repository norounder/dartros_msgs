// Auto-generated. Do not edit!

// Updated: Mon Feb 19 17:02:59 2024

// (in-package tf2_msgs.msg)


// ignore_for_file: type=lint
import 'LookupTransformGoal.dart';
import 'LookupTransformFeedback.dart';
import 'LookupTransformResult.dart';
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'LookupTransformActionGoal.dart';
import 'LookupTransformActionResult.dart';
import 'LookupTransformActionFeedback.dart';

//-----------------------------------------------------------

class LookupTransformAction extends RosActionMessage<LookupTransformGoal, LookupTransformActionGoal, LookupTransformFeedback, LookupTransformActionFeedback, LookupTransformResult, LookupTransformActionResult> {
  LookupTransformActionGoal action_goal;

  LookupTransformActionResult action_result;

  LookupTransformActionFeedback action_feedback;

  static LookupTransformAction $prototype = LookupTransformAction();
  LookupTransformAction({ 
    LookupTransformActionGoal? action_goal,
    LookupTransformActionResult? action_result,
    LookupTransformActionFeedback? action_feedback,
  }):
  this.action_goal = action_goal ?? LookupTransformActionGoal(),
  this.action_result = action_result ?? LookupTransformActionResult(),
  this.action_feedback = action_feedback ?? LookupTransformActionFeedback();

  @override
  LookupTransformAction call({ 
    LookupTransformActionGoal? action_goal,
    LookupTransformActionResult? action_result,
    LookupTransformActionFeedback? action_feedback,
  }) => LookupTransformAction(
  action_goal: action_goal,
  action_result: action_result,
  action_feedback: action_feedback,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LookupTransformAction
    // Serialize message field [action_goal]
    action_goal.serialize(writer);
    // Serialize message field [action_result]
    action_result.serialize(writer);
    // Serialize message field [action_feedback]
    action_feedback.serialize(writer);
  }

  @override
  LookupTransformAction deserialize(ByteDataReader reader) {
    //deserializes a message object of type LookupTransformAction
    final data = LookupTransformAction();
    // Deserialize message field [action_goal]
    data.action_goal = LookupTransformActionGoal.$prototype.deserialize(reader);
    // Deserialize message field [action_result]
    data.action_result = LookupTransformActionResult.$prototype.deserialize(reader);
    // Deserialize message field [action_feedback]
    data.action_feedback = LookupTransformActionFeedback.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += action_goal.getMessageSize();
    length += action_result.getMessageSize();
    length += action_feedback.getMessageSize();
    return length;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'tf2_msgs/LookupTransformAction';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '7ee01ba91a56c2245c610992dbaa3c37';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

LookupTransformActionGoal action_goal
LookupTransformActionResult action_result
LookupTransformActionFeedback action_feedback

================================================================================
MSG: tf2_msgs/LookupTransformActionGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
LookupTransformGoal goal

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
MSG: tf2_msgs/LookupTransformGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#Simple API
string target_frame
string source_frame
time source_time
duration timeout

#Advanced API
time target_time
string fixed_frame

#Whether or not to use the advanced API
bool advanced


================================================================================
MSG: tf2_msgs/LookupTransformActionResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
LookupTransformResult result

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
MSG: tf2_msgs/LookupTransformResult
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
geometry_msgs/TransformStamped transform
tf2_msgs/TF2Error error

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href="http://wiki.ros.org/tf">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: tf2_msgs/TF2Error
uint8 NO_ERROR = 0
uint8 LOOKUP_ERROR = 1
uint8 CONNECTIVITY_ERROR = 2
uint8 EXTRAPOLATION_ERROR = 3
uint8 INVALID_ARGUMENT_ERROR = 4
uint8 TIMEOUT_ERROR = 5
uint8 TRANSFORM_ERROR = 6

uint8 error
string error_string

================================================================================
MSG: tf2_msgs/LookupTransformActionFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalStatus status
LookupTransformFeedback feedback

================================================================================
MSG: tf2_msgs/LookupTransformFeedback
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======


''';
  }

  @override
  LookupTransformGoal get goal => LookupTransformGoal.$prototype;

  @override
  LookupTransformActionGoal get actionGoal => LookupTransformActionGoal.$prototype;

  @override
  LookupTransformFeedback get feedback => LookupTransformFeedback.$prototype;

  @override
  LookupTransformActionFeedback get actionFeedback => LookupTransformActionFeedback.$prototype;

  @override
  LookupTransformResult get result => LookupTransformResult.$prototype;

  @override
  LookupTransformActionResult get actionResult => LookupTransformActionResult.$prototype;

}
