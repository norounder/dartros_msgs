// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:41 2024

// (in-package nav_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';

//-----------------------------------------------------------

class MapMetaData extends RosMessage<MapMetaData> {
  RosTime map_load_time;

  double resolution;

  int width;

  int height;

  Pose origin;

  static MapMetaData $prototype = MapMetaData();
  MapMetaData({ 
    RosTime? map_load_time,
    double? resolution,
    int? width,
    int? height,
    Pose? origin,
  }):
  this.map_load_time = map_load_time ?? RosTime(secs: 0, nsecs: 0),
  this.resolution = resolution ?? 0.0,
  this.width = width ?? 0,
  this.height = height ?? 0,
  this.origin = origin ?? Pose();

  @override
  MapMetaData call({ 
    RosTime? map_load_time,
    double? resolution,
    int? width,
    int? height,
    Pose? origin,
  }) => MapMetaData(
  map_load_time: map_load_time,
  resolution: resolution,
  width: width,
  height: height,
  origin: origin,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type MapMetaData
    // Serialize message field [map_load_time]
    writer.writeTime(map_load_time);
    // Serialize message field [resolution]
    writer.writeFloat32(resolution);
    // Serialize message field [width]
    writer.writeUint32(width);
    // Serialize message field [height]
    writer.writeUint32(height);
    // Serialize message field [origin]
    origin.serialize(writer);
  }

  @override
  MapMetaData deserialize(ByteDataReader reader) {
    //deserializes a message object of type MapMetaData
    final data = MapMetaData();
    // Deserialize message field [map_load_time]
    data.map_load_time = reader.readTime();
    // Deserialize message field [resolution]
    data.resolution = reader.readFloat32();
    // Deserialize message field [width]
    data.width = reader.readUint32();
    // Deserialize message field [height]
    data.height = reader.readUint32();
    // Deserialize message field [origin]
    data.origin = Pose.$prototype.deserialize(reader);
    return data;
  }

  int getMessageSize() {
    return 76;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'nav_msgs/MapMetaData';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '10cfc8a2818024d3248802c00c95f11b';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This hold basic information about the characterists of the OccupancyGrid

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

