// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:47 2024

// (in-package nav_msgs.srv)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

import '../msgs/OccupancyGrid.dart';

//-----------------------------------------------------------

class LoadMapRequest extends RosMessage<LoadMapRequest> {
  String map_url;

  static LoadMapRequest $prototype = LoadMapRequest();
  LoadMapRequest({ 
    String? map_url,
  }):
  this.map_url = map_url ?? '';

  @override
  LoadMapRequest call({ 
    String? map_url,
  }) => LoadMapRequest(
  map_url: map_url,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LoadMapRequest
    // Serialize message field [map_url]
    writer.writeString(map_url);
  }

  @override
  LoadMapRequest deserialize(ByteDataReader reader) {
    //deserializes a message object of type LoadMapRequest
    final data = LoadMapRequest();
    // Deserialize message field [map_url]
    data.map_url = reader.readString();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(map_url).length;
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'nav_msgs/LoadMapRequest';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '3813ba1ae85fbcd4dc88c90f1426b90b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# URL of map resource
# Can be an absolute path to a file: file:///path/to/maps/floor1.yaml
# Or, relative to a ROS package: package://my_ros_package/maps/floor2.yaml
string map_url

''';
  }

}

class LoadMapResponse extends RosMessage<LoadMapResponse> {
  OccupancyGrid map;

  int result;

  static LoadMapResponse $prototype = LoadMapResponse();
  LoadMapResponse({ 
    OccupancyGrid? map,
    int? result,
  }):
  this.map = map ?? OccupancyGrid(),
  this.result = result ?? 0;

  @override
  LoadMapResponse call({ 
    OccupancyGrid? map,
    int? result,
  }) => LoadMapResponse(
  map: map,
  result: result,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type LoadMapResponse
    // Serialize message field [map]
    map.serialize(writer);
    // Serialize message field [result]
    writer.writeUint8(result);
  }

  @override
  LoadMapResponse deserialize(ByteDataReader reader) {
    //deserializes a message object of type LoadMapResponse
    final data = LoadMapResponse();
    // Deserialize message field [map]
    data.map = OccupancyGrid.$prototype.deserialize(reader);
    // Deserialize message field [result]
    data.result = reader.readUint8();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += map.getMessageSize();
    return length + 1;
  }

  @override
  String get fullType {
    // Returns string type for a service object
    return 'nav_msgs/LoadMapResponse';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '079b9c828e9f7c1918bf86932fd7267e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Result code defintions
uint8 RESULT_SUCCESS=0
uint8 RESULT_MAP_DOES_NOT_EXIST=1
uint8 RESULT_INVALID_MAP_DATA=2
uint8 RESULT_INVALID_MAP_METADATA=3
uint8 RESULT_UNDEFINED_FAILURE=255

# Returned map is only valid if result equals RESULT_SUCCESS
nav_msgs/OccupancyGrid map
uint8 result


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

// Constants for message
  static const int RESULT_SUCCESS = 0;
  static const int RESULT_MAP_DOES_NOT_EXIST = 1;
  static const int RESULT_INVALID_MAP_DATA = 2;
  static const int RESULT_INVALID_MAP_METADATA = 3;
  static const int RESULT_UNDEFINED_FAILURE = 255;

}

class LoadMap extends RosServiceMessage<LoadMapRequest, LoadMapResponse> {
  static final $prototype = LoadMap();
  @override
  LoadMapRequest get request => LoadMapRequest.$prototype;
  @override
  LoadMapResponse get response => LoadMapResponse.$prototype;
  @override
  String get md5sum => '22e647fdfbe3b23c8c9f419908afaebd';
  @override
  String get fullType => 'nav_msgs/LoadMap';
  @override
  String get messageDefinition => request.messageDefinition + "---" + response.messageDefinition;
}
