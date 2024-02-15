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

class Marker extends RosMessage<Marker> {
  Header header;

  String ns;

  int id;

  int type;

  int action;

  Pose pose;

  Vector3 scale;

  ColorRGBA color;

  RosTime lifetime;

  bool frame_locked;

  List<Point> points;

  List<ColorRGBA> colors;

  String text;

  String mesh_resource;

  bool mesh_use_embedded_materials;

  static Marker $prototype = Marker();
  Marker({ 
    Header? header,
    String? ns,
    int? id,
    int? type,
    int? action,
    Pose? pose,
    Vector3? scale,
    ColorRGBA? color,
    RosTime? lifetime,
    bool? frame_locked,
    List<Point>? points,
    List<ColorRGBA>? colors,
    String? text,
    String? mesh_resource,
    bool? mesh_use_embedded_materials,
  }):
  this.header = header ?? Header(),
  this.ns = ns ?? '',
  this.id = id ?? 0,
  this.type = type ?? 0,
  this.action = action ?? 0,
  this.pose = pose ?? Pose(),
  this.scale = scale ?? Vector3(),
  this.color = color ?? ColorRGBA(),
  this.lifetime = lifetime ?? RosTime(secs: 0, nsecs: 0),
  this.frame_locked = frame_locked ?? false,
  this.points = points ?? [],
  this.colors = colors ?? [],
  this.text = text ?? '',
  this.mesh_resource = mesh_resource ?? '',
  this.mesh_use_embedded_materials = mesh_use_embedded_materials ?? false;

  @override
  Marker call({ 
    Header? header,
    String? ns,
    int? id,
    int? type,
    int? action,
    Pose? pose,
    Vector3? scale,
    ColorRGBA? color,
    RosTime? lifetime,
    bool? frame_locked,
    List<Point>? points,
    List<ColorRGBA>? colors,
    String? text,
    String? mesh_resource,
    bool? mesh_use_embedded_materials,
  }) => Marker(
  header: header,
  ns: ns,
  id: id,
  type: type,
  action: action,
  pose: pose,
  scale: scale,
  color: color,
  lifetime: lifetime,
  frame_locked: frame_locked,
  points: points,
  colors: colors,
  text: text,
  mesh_resource: mesh_resource,
  mesh_use_embedded_materials: mesh_use_embedded_materials,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Marker
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
    // Serialize message field [pose]
    pose.serialize(writer);
    // Serialize message field [scale]
    scale.serialize(writer);
    // Serialize message field [color]
    color.serialize(writer);
    // Serialize message field [lifetime]
    writer.writeTime(lifetime);
    // Serialize message field [frame_locked]
    writer.writeUint8(frame_locked == false ? 0 : 1);
    // Serialize message field [points]
    // Serialize the length for message field [points]
    writer.writeUint32(points.length);
    points.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [colors]
    // Serialize the length for message field [colors]
    writer.writeUint32(colors.length);
    colors.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [text]
    writer.writeString(text);
    // Serialize message field [mesh_resource]
    writer.writeString(mesh_resource);
    // Serialize message field [mesh_use_embedded_materials]
    writer.writeUint8(mesh_use_embedded_materials == false ? 0 : 1);
  }

  @override
  Marker deserialize(ByteDataReader reader) {
    //deserializes a message object of type Marker
    final data = Marker();
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
    // Deserialize message field [pose]
    data.pose = Pose.$prototype.deserialize(reader);
    // Deserialize message field [scale]
    data.scale = Vector3.$prototype.deserialize(reader);
    // Deserialize message field [color]
    data.color = ColorRGBA.$prototype.deserialize(reader);
    // Deserialize message field [lifetime]
    data.lifetime = reader.readTime();
    // Deserialize message field [frame_locked]
    data.frame_locked = reader.readUint8() != 0;
    // Deserialize message field [points]
    {
      // Deserialize array length for message field [points]
      final len = reader.readInt32();
      data.points = List.generate(len, (_) => Point.$prototype.deserialize(reader));
    }
    // Deserialize message field [colors]
    {
      // Deserialize array length for message field [colors]
      final len = reader.readInt32();
      data.colors = List.generate(len, (_) => ColorRGBA.$prototype.deserialize(reader));
    }
    // Deserialize message field [text]
    data.text = reader.readString();
    // Deserialize message field [mesh_resource]
    data.mesh_resource = reader.readString();
    // Deserialize message field [mesh_use_embedded_materials]
    data.mesh_use_embedded_materials = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(ns).length;
    length += 24 * points.length;
    length += 16 * colors.length;
    length += utf8.encode(text).length;
    length += utf8.encode(mesh_resource).length;
    return length + 138;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'visualization_msgs/Marker';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '4048c9de2a16f4ae8e0538085ebf1b97';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# See http://www.ros.org/wiki/rviz/DisplayTypes/Marker and http://www.ros.org/wiki/rviz/Tutorials/Markers%3A%20Basic%20Shapes for more information on using this message with rviz

uint8 ARROW=0
uint8 CUBE=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 LINE_STRIP=4
uint8 LINE_LIST=5
uint8 CUBE_LIST=6
uint8 SPHERE_LIST=7
uint8 POINTS=8
uint8 TEXT_VIEW_FACING=9
uint8 MESH_RESOURCE=10
uint8 TRIANGLE_LIST=11

uint8 ADD=0
uint8 MODIFY=0
uint8 DELETE=2
uint8 DELETEALL=3

Header header                        # header for time/frame information
string ns                            # Namespace to place this object in... used in conjunction with id to create a unique name for the object
int32 id 		                         # object ID useful in conjunction with the namespace for manipulating and deleting the object later
int32 type 		                       # Type of object
int32 action 	                       # 0 add/modify an object, 1 (deprecated), 2 deletes an object, 3 deletes all objects
geometry_msgs/Pose pose                 # Pose of the object
geometry_msgs/Vector3 scale             # Scale of the object 1,1,1 means default (usually 1 meter square)
std_msgs/ColorRGBA color             # Color [0.0-1.0]
duration lifetime                    # How long the object should last before being automatically deleted.  0 means forever
bool frame_locked                    # If this marker should be frame-locked, i.e. retransformed into its frame every timestep

#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
geometry_msgs/Point[] points
#Only used if the type specified has some use for them (eg. POINTS, LINE_STRIP, ...)
#number of colors must either be 0 or equal to the number of points
#NOTE: alpha is not yet used
std_msgs/ColorRGBA[] colors

# NOTE: only used for text markers
string text

# NOTE: only used for MESH_RESOURCE markers
string mesh_resource
bool mesh_use_embedded_materials

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
MSG: std_msgs/ColorRGBA
float32 r
float32 g
float32 b
float32 a

''';
  }

// Constants for message
  static const int ARROW = 0;
  static const int CUBE = 1;
  static const int SPHERE = 2;
  static const int CYLINDER = 3;
  static const int LINE_STRIP = 4;
  static const int LINE_LIST = 5;
  static const int CUBE_LIST = 6;
  static const int SPHERE_LIST = 7;
  static const int POINTS = 8;
  static const int TEXT_VIEW_FACING = 9;
  static const int MESH_RESOURCE = 10;
  static const int TRIANGLE_LIST = 11;
  static const int ADD = 0;
  static const int MODIFY = 0;
  static const int DELETE = 2;
  static const int DELETEALL = 3;

}

