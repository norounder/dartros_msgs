// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:41 2024

// (in-package nav_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class GridCells extends RosMessage<GridCells> {
  Header header;

  double cell_width;

  double cell_height;

  List<Point> cells;

  static GridCells $prototype = GridCells();
  GridCells({ 
    Header? header,
    double? cell_width,
    double? cell_height,
    List<Point>? cells,
  }):
  this.header = header ?? Header(),
  this.cell_width = cell_width ?? 0.0,
  this.cell_height = cell_height ?? 0.0,
  this.cells = cells ?? [];

  @override
  GridCells call({ 
    Header? header,
    double? cell_width,
    double? cell_height,
    List<Point>? cells,
  }) => GridCells(
  header: header,
  cell_width: cell_width,
  cell_height: cell_height,
  cells: cells,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type GridCells
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [cell_width]
    writer.writeFloat32(cell_width);
    // Serialize message field [cell_height]
    writer.writeFloat32(cell_height);
    // Serialize message field [cells]
    // Serialize the length for message field [cells]
    writer.writeUint32(cells.length);
    cells.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  GridCells deserialize(ByteDataReader reader) {
    //deserializes a message object of type GridCells
    final data = GridCells();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [cell_width]
    data.cell_width = reader.readFloat32();
    // Deserialize message field [cell_height]
    data.cell_height = reader.readFloat32();
    // Deserialize message field [cells]
    {
      // Deserialize array length for message field [cells]
      final len = reader.readInt32();
      data.cells = List.generate(len, (_) => Point.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    length += 24 * cells.length;
    return length + 12;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'nav_msgs/GridCells';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'b9e4f5df6d28e272ebde00a3994830f5';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''#an array of cells in a 2D grid
Header header
float32 cell_width
float32 cell_height
geometry_msgs/Point[] cells

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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

''';
  }

}

