// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:46 2024

// (in-package nav_msgs.srv)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

import '../msgs/OccupancyGrid.dart';

//-----------------------------------------------------------

class GetMapRequest extends RosMessage<GetMapRequest> {
  static GetMapRequest $prototype = GetMapRequest();
  GetMapRequest();

  @override
  GetMapRequest call() => GetMapRequest();

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GetMapRequest
  }

  @override
  GetMapRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type GetMapRequest
    final data = GetMapRequest();
    return data;
  }

  int getMessageSize() {
    return 0;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'nav_msgs/GetMapRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Get the map as a nav_msgs/OccupancyGrid

''';
  }

}

class GetMapResponse extends RosMessage<GetMapResponse> {
  OccupancyGrid map;

  static GetMapResponse $prototype = GetMapResponse();
  GetMapResponse({ 
    OccupancyGrid? map,
  }):
  this.map = map ?? OccupancyGrid();

  @override
  GetMapResponse call({ 
    OccupancyGrid? map,
  }) => GetMapResponse(
  map: map,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GetMapResponse
    // Serialize message field [map]
    map.serialize(writer);
  }

  @override
  GetMapResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type GetMapResponse
    final data = GetMapResponse();
    // Deserialize message field [map]
    data.map = OccupancyGrid.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += map.getMessageSize();
    return length;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'nav_msgs/GetMapResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '6cdd0a18e0aff5b0a3ca2326a89b54ff';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''nav_msgs/OccupancyGrid map


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

''';
  }

}

class GetMap extends RosServiceMessage<GetMapRequest, GetMapResponse> {
  static final $prototype = GetMap();
  @override
  GetMapRequest get request => GetMapRequest.$prototype;
  @override
  GetMapResponse get response => GetMapResponse.$prototype;
  @override
  String get md5sum => '6cdd0a18e0aff5b0a3ca2326a89b54ff';
  @override
  String get fullType => 'nav_msgs/GetMap';
  @override
  String get messageDefinition => request.messageDefinition + "---" + response.messageDefinition;
}
