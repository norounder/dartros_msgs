// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package nav_msgs.srv)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import '../msgs/OccupancyGrid.dart';

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetMapRequest extends RosMessage<SetMapRequest> {
  OccupancyGrid map;

  PoseWithCovarianceStamped initial_pose;

  static SetMapRequest $prototype = SetMapRequest();
  SetMapRequest({ 
    OccupancyGrid? map,
    PoseWithCovarianceStamped? initial_pose,
  }):
  this.map = map ?? OccupancyGrid(),
  this.initial_pose = initial_pose ?? PoseWithCovarianceStamped();

  @override
  SetMapRequest call({ 
    OccupancyGrid? map,
    PoseWithCovarianceStamped? initial_pose,
  }) => SetMapRequest(
  map: map,
  initial_pose: initial_pose,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type SetMapRequest
    // Serialize message field [map]
    map.serialize(writer);
    // Serialize message field [initial_pose]
    initial_pose.serialize(writer);
  }

  @override
  SetMapRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type SetMapRequest
    final data = SetMapRequest();
    // Deserialize message field [map]
    data.map = OccupancyGrid.$prototype.deserialize(reader);
    // Deserialize message field [initial_pose]
    data.initial_pose = PoseWithCovarianceStamped.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += map.getMessageSize();
    length += initial_pose.getMessageSize();
    return length;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'nav_msgs/SetMapRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '91149a20d7be299b87c340df8cc94fd4';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Set a new map together with an initial pose
nav_msgs/OccupancyGrid map
geometry_msgs/PoseWithCovarianceStamped initial_pose

================================================================================
MSG: nav_msgs/OccupancyGrid
# This represents a 2-D grid map, in which each cell represents the probability of
# occupancy.

Header header 

#MetaData for the map
MapMetaData info

# The map data, in row-major order, starting with (0,0).  Occupancy
# probabilities are in the range [0,100].  Unknown is -1.
int8[] data

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
MSG: nav_msgs/MapMetaData
# This hold basic information about the characterists of the OccupancyGrid

# The time at which the map was loaded
time map_load_time
# The map resolution [m/cell]
float32 resolution
# Map width [cells]
uint32 width
# Map height [cells]
uint32 height
# The origin of the map [m, m, rad].  This is the real-world pose of the
# cell (0,0) in the map.
geometry_msgs/Pose origin
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

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

''';
  }

}

class SetMapResponse extends RosMessage<SetMapResponse> {
  bool success;

  static SetMapResponse $prototype = SetMapResponse();
  SetMapResponse({ 
    bool? success,
  }):
  this.success = success ?? false;

  @override
  SetMapResponse call({ 
    bool? success,
  }) => SetMapResponse(
  success: success,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type SetMapResponse
    // Serialize message field [success]
    writer.writeUint8(success == false ? 0 : 1);
  }

  @override
  SetMapResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type SetMapResponse
    final data = SetMapResponse();
    // Deserialize message field [success]
    data.success = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    return 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'nav_msgs/SetMapResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''bool success



''';
  }

}

class SetMap extends RosServiceMessage<SetMapRequest, SetMapResponse> {
  static final $prototype = SetMap();
  @override
  SetMapRequest get request => SetMapRequest.$prototype;
  @override
  SetMapResponse get response => SetMapResponse.$prototype;
  @override
  String get md5sum => 'c36922319011e63ed7784112ad4fdd32';
  @override
  String get fullType => 'nav_msgs/SetMap';
  @override
  String get messageDefinition => request.messageDefinition + "---" + response.messageDefinition;
}
