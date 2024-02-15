// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:00 2024

// (in-package visualization_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class ImageMarker extends RosMessage<ImageMarker> {
  Header header;

  String ns;

  int id;

  int type;

  int action;

  Point position;

  double scale;

  ColorRGBA outline_color;

  int filled;

  ColorRGBA fill_color;

  RosTime lifetime;

  List<Point> points;

  List<ColorRGBA> outline_colors;

  static ImageMarker $prototype = ImageMarker();
  ImageMarker({ 
    Header? header,
    String? ns,
    int? id,
    int? type,
    int? action,
    Point? position,
    double? scale,
    ColorRGBA? outline_color,
    int? filled,
    ColorRGBA? fill_color,
    RosTime? lifetime,
    List<Point>? points,
    List<ColorRGBA>? outline_colors,
  }):
  this.header = header ?? Header(),
  this.ns = ns ?? '',
  this.id = id ?? 0,
  this.type = type ?? 0,
  this.action = action ?? 0,
  this.position = position ?? Point(),
  this.scale = scale ?? 0.0,
  this.outline_color = outline_color ?? ColorRGBA(),
  this.filled = filled ?? 0,
  this.fill_color = fill_color ?? ColorRGBA(),
  this.lifetime = lifetime ?? RosTime(secs: 0, nsecs: 0),
  this.points = points ?? [],
  this.outline_colors = outline_colors ?? [];

  @override
  ImageMarker call({ 
    Header? header,
    String? ns,
    int? id,
    int? type,
    int? action,
    Point? position,
    double? scale,
    ColorRGBA? outline_color,
    int? filled,
    ColorRGBA? fill_color,
    RosTime? lifetime,
    List<Point>? points,
    List<ColorRGBA>? outline_colors,
  }) => ImageMarker(
  header: header,
  ns: ns,
  id: id,
  type: type,
  action: action,
  position: position,
  scale: scale,
  outline_color: outline_color,
  filled: filled,
  fill_color: fill_color,
  lifetime: lifetime,
  points: points,
  outline_colors: outline_colors,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type ImageMarker
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [ns]
    writer.writeString(ns);
    // Serialize message field [id]
    writer.writeInt32(id);
    // Serialize message field [type]
    writer.writeInt32(type);
    // Serialize message field [action]
    writer.writeInt32(action);
    // Serialize message field [position]
    position.serialize(writer);
    // Serialize message field [scale]
    writer.writeFloat32(scale);
    // Serialize message field [outline_color]
    outline_color.serialize(writer);
    // Serialize message field [filled]
    writer.writeUint8(filled);
    // Serialize message field [fill_color]
    fill_color.serialize(writer);
    // Serialize message field [lifetime]
    writer.writeTime(lifetime);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    writer.writeUint32(points.length);
    points.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [outline_colors]
    // Serialize the length for message field [outline_colors]
    writer.writeUint32(outline_colors.length);
    outline_colors.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  ImageMarker deserialize(ByteDataReader reader) {
    //deserializes a message object of type ImageMarker
    final data = ImageMarker();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [ns]
    data.ns = reader.readString();
    // Deserialize message field [id]
    data.id = reader.readInt32();
    // Deserialize message field [type]
    data.type = reader.readInt32();
    // Deserialize message field [action]
    data.action = reader.readInt32();
    // Deserialize message field [position]
    data.position = Point.$prototype.deserialize(reader);
    // Deserialize message field [scale]
    data.scale = reader.readFloat32();
    // Deserialize message field [outline_color]
    data.outline_color = ColorRGBA.$prototype.deserialize(reader);
    // Deserialize message field [filled]
    data.filled = reader.readUint8();
    // Deserialize message field [fill_color]
    data.fill_color = ColorRGBA.$prototype.deserialize(reader);
    // Deserialize message field [lifetime]
    data.lifetime = reader.readTime();
    // Deserialize message field [points]
    {
      // Deserialize array length for message field [points]
      final len = reader.readInt32();
      data.points = List.generate(len, (_) => Point.$prototype.deserialize(reader));
    }
    // Deserialize message field [outline_colors]
    {
      // Deserialize array length for message field [outline_colors]
      final len = reader.readInt32();
      data.outline_colors = List.generate(len, (_) => ColorRGBA.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    length += utf8.encode(ns).length;
    length += 24 * points.length;
    length += 16 * outline_colors.length;
    return length + 93;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'visualization_msgs/ImageMarker';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1de93c67ec8858b831025a08fbf1b35c';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''uint8 CIRCLE=0
uint8 LINE_STRIP=1
uint8 LINE_LIST=2
uint8 POLYGON=3
uint8 POINTS=4

uint8 ADD=0
uint8 REMOVE=1

Header header
string ns		# namespace, used with id to form a unique id
int32 id          	# unique id within the namespace
int32 type        	# CIRCLE/LINE_STRIP/etc.
int32 action      	# ADD/REMOVE
geometry_msgs/Point position # 2D, in pixel-coords
float32 scale	 	# the diameter for a circle, etc.
std_msgs/ColorRGBA outline_color
uint8 filled		# whether to fill in the shape with color
std_msgs/ColorRGBA fill_color # color [0.0-1.0]
duration lifetime       # How long the object should last before being automatically deleted.  0 means forever


geometry_msgs/Point[] points # used for LINE_STRIP/LINE_LIST/POINTS/etc., 2D in pixel coords
std_msgs/ColorRGBA[] outline_colors # a color for each line, point, etc.
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

================================================================================
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

''';
  }

// Constants for message
  static const int CIRCLE = 0;
  static const int LINE_STRIP = 1;
  static const int LINE_LIST = 2;
  static const int POLYGON = 3;
  static const int POINTS = 4;
  static const int ADD = 0;
  static const int REMOVE = 1;

}

