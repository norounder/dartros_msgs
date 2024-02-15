// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:46 2024

// (in-package nav_msgs.srv)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';

//-----------------------------------------------------------

import '../msgs/Path.dart';

//-----------------------------------------------------------

class GetPlanRequest extends RosMessage<GetPlanRequest> {
  PoseStamped start;

  PoseStamped goal;

  double tolerance;

  static GetPlanRequest $prototype = GetPlanRequest();
  GetPlanRequest({ 
    PoseStamped? start,
    PoseStamped? goal,
    double? tolerance,
  }):
  this.start = start ?? PoseStamped(),
  this.goal = goal ?? PoseStamped(),
  this.tolerance = tolerance ?? 0.0;

  @override
  GetPlanRequest call({ 
    PoseStamped? start,
    PoseStamped? goal,
    double? tolerance,
  }) => GetPlanRequest(
  start: start,
  goal: goal,
  tolerance: tolerance,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GetPlanRequest
    // Serialize message field [start]
    start.serialize(writer);
    // Serialize message field [goal]
    goal.serialize(writer);
    // Serialize message field [tolerance]
    writer.writeFloat32(tolerance);
  }

  @override
  GetPlanRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type GetPlanRequest
    final data = GetPlanRequest();
    // Deserialize message field [start]
    data.start = PoseStamped.$prototype.deserialize(reader);
    // Deserialize message field [goal]
    data.goal = PoseStamped.$prototype.deserialize(reader);
    // Deserialize message field [tolerance]
    data.tolerance = reader.readFloat32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += start.getMessageSize();
    length += goal.getMessageSize();
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'nav_msgs/GetPlanRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'e25a43e0752bcca599a8c2eef8282df8';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Get a plan from the current position to the goal Pose 

# The start pose for the plan
geometry_msgs/PoseStamped start

# The final pose of the goal position
geometry_msgs/PoseStamped goal

# If the goal is obstructed, how many meters the planner can 
# relax the constraint in x and y before failing. 
float32 tolerance

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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

''';
  }

}

class GetPlanResponse extends RosMessage<GetPlanResponse> {
  Path plan;

  static GetPlanResponse $prototype = GetPlanResponse();
  GetPlanResponse({ 
    Path? plan,
  }):
  this.plan = plan ?? Path();

  @override
  GetPlanResponse call({ 
    Path? plan,
  }) => GetPlanResponse(
  plan: plan,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GetPlanResponse
    // Serialize message field [plan]
    plan.serialize(writer);
  }

  @override
  GetPlanResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type GetPlanResponse
    final data = GetPlanResponse();
    // Deserialize message field [plan]
    data.plan = Path.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += plan.getMessageSize();
    return length;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'nav_msgs/GetPlanResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '0002bc113c0259d71f6cf8cbc9430e18';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''nav_msgs/Path plan


================================================================================
MSG: nav_msgs/Path
#An array of poses that represents a Path for a robot to follow
Header header
geometry_msgs/PoseStamped[] poses

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
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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

''';
  }

}

class GetPlan extends RosServiceMessage<GetPlanRequest, GetPlanResponse> {
  static final $prototype = GetPlan();
  @override
  GetPlanRequest get request => GetPlanRequest.$prototype;
  @override
  GetPlanResponse get response => GetPlanResponse.$prototype;
  @override
  String get md5sum => '421c8ea4d21c6c9db7054b4bbdf1e024';
  @override
  String get fullType => 'nav_msgs/GetPlan';
  @override
  String get messageDefinition => request.messageDefinition + "---" + response.messageDefinition;
}
