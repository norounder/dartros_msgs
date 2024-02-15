// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:42 2024

// (in-package nav_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'MapMetaData.dart';

//-----------------------------------------------------------

class OccupancyGrid extends RosMessage<OccupancyGrid> {
  Header header;

  MapMetaData info;

  List<int> data;

  static OccupancyGrid $prototype = OccupancyGrid();
  OccupancyGrid({ 
    Header? header,
    MapMetaData? info,
    List<int>? data,
  }):
  this.header = header ?? Header(),
  this.info = info ?? MapMetaData(),
  this.data = data ?? [];

  @override
  OccupancyGrid call({ 
    Header? header,
    MapMetaData? info,
    List<int>? data,
  }) => OccupancyGrid(
  header: header,
  info: info,
  data: data,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type OccupancyGrid
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [info]
    info.serialize(writer);
    // Serialize message field [data]
    writer.writeArray<int>(data, (val) => writer.writeInt8(val), specArrayLen: null);
  }

  @override
  OccupancyGrid deserialize(ByteDataReader reader) {
    //deserializes a message object of type OccupancyGrid
    final data = OccupancyGrid();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [info]
    data.info = MapMetaData.$prototype.deserialize(reader);
    // Deserialize message field [data]
    data.data = reader.readArray<int>(() => reader.readInt8(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += data.length;
    return length + 80;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'nav_msgs/OccupancyGrid';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '3381f2d731d4076ec5c71b0759edbe4e';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This represents a 2-D grid map, in which each cell represents the probability of
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

