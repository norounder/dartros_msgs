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

class InteractiveMarkerFeedback extends RosMessage<InteractiveMarkerFeedback> {
  Header header;

  String client_id;

  String marker_name;

  String control_name;

  int event_type;

  Pose pose;

  int menu_entry_id;

  Point mouse_point;

  bool mouse_point_valid;

  static InteractiveMarkerFeedback $prototype = InteractiveMarkerFeedback();
  InteractiveMarkerFeedback({ 
    Header? header,
    String? client_id,
    String? marker_name,
    String? control_name,
    int? event_type,
    Pose? pose,
    int? menu_entry_id,
    Point? mouse_point,
    bool? mouse_point_valid,
  }):
  this.header = header ?? Header(),
  this.client_id = client_id ?? '',
  this.marker_name = marker_name ?? '',
  this.control_name = control_name ?? '',
  this.event_type = event_type ?? 0,
  this.pose = pose ?? Pose(),
  this.menu_entry_id = menu_entry_id ?? 0,
  this.mouse_point = mouse_point ?? Point(),
  this.mouse_point_valid = mouse_point_valid ?? false;

  @override
  InteractiveMarkerFeedback call({ 
    Header? header,
    String? client_id,
    String? marker_name,
    String? control_name,
    int? event_type,
    Pose? pose,
    int? menu_entry_id,
    Point? mouse_point,
    bool? mouse_point_valid,
  }) => InteractiveMarkerFeedback(
  header: header,
  client_id: client_id,
  marker_name: marker_name,
  control_name: control_name,
  event_type: event_type,
  pose: pose,
  menu_entry_id: menu_entry_id,
  mouse_point: mouse_point,
  mouse_point_valid: mouse_point_valid,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type InteractiveMarkerFeedback
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [client_id]
    writer.writeString(client_id);
    // Serialize message field [marker_name]
    writer.writeString(marker_name);
    // Serialize message field [control_name]
    writer.writeString(control_name);
    // Serialize message field [event_type]
    writer.writeUint8(event_type);
    // Serialize message field [pose]
    pose.serialize(writer);
    // Serialize message field [menu_entry_id]
    writer.writeUint32(menu_entry_id);
    // Serialize message field [mouse_point]
    mouse_point.serialize(writer);
    // Serialize message field [mouse_point_valid]
    writer.writeUint8(mouse_point_valid == false ? 0 : 1);
  }

  @override
  InteractiveMarkerFeedback deserialize(ByteDataReader reader) {
    //deserializes a message object of type InteractiveMarkerFeedback
    final data = InteractiveMarkerFeedback();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [client_id]
    data.client_id = reader.readString();
    // Deserialize message field [marker_name]
    data.marker_name = reader.readString();
    // Deserialize message field [control_name]
    data.control_name = reader.readString();
    // Deserialize message field [event_type]
    data.event_type = reader.readUint8();
    // Deserialize message field [pose]
    data.pose = Pose.$prototype.deserialize(reader);
    // Deserialize message field [menu_entry_id]
    data.menu_entry_id = reader.readUint32();
    // Deserialize message field [mouse_point]
    data.mouse_point = Point.$prototype.deserialize(reader);
    // Deserialize message field [mouse_point_valid]
    data.mouse_point_valid = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    length += utf8.encode(client_id).length;
    length += utf8.encode(marker_name).length;
    length += utf8.encode(control_name).length;
    return length + 98;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'visualization_msgs/InteractiveMarkerFeedback';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'ab0f1eee058667e28c19ff3ffc3f4b78';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# Time/frame info.
Header header

# Identifying string. Must be unique in the topic namespace.
string client_id

# Feedback message sent back from the GUI, e.g.
# when the status of an interactive marker was modified by the user.

# Specifies which interactive marker and control this message refers to
string marker_name
string control_name

# Type of the event
# KEEP_ALIVE: sent while dragging to keep up control of the marker
# MENU_SELECT: a menu entry has been selected
# BUTTON_CLICK: a button control has been clicked
# POSE_UPDATE: the pose has been changed using one of the controls
uint8 KEEP_ALIVE = 0
uint8 POSE_UPDATE = 1
uint8 MENU_SELECT = 2
uint8 BUTTON_CLICK = 3

uint8 MOUSE_DOWN = 4
uint8 MOUSE_UP = 5

uint8 event_type

# Current pose of the marker
# Note: Has to be valid for all feedback types.
geometry_msgs/Pose pose

# Contains the ID of the selected menu entry
# Only valid for MENU_SELECT events.
uint32 menu_entry_id

# If event_type is BUTTON_CLICK, MOUSE_DOWN, or MOUSE_UP, mouse_point
# may contain the 3 dimensional position of the event on the
# control.  If it does, mouse_point_valid will be true.  mouse_point
# will be relative to the frame listed in the header.
geometry_msgs/Point mouse_point
bool mouse_point_valid

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

// Constants for message
  static const int KEEP_ALIVE = 0;
  static const int POSE_UPDATE = 1;
  static const int MENU_SELECT = 2;
  static const int BUTTON_CLICK = 3;
  static const int MOUSE_DOWN = 4;
  static const int MOUSE_UP = 5;

}

