// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:43 2024

// (in-package nav_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:dartros_msgs/geometry_msgs/msgs.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Path extends RosMessage<Path> {
  Header header;

  List<PoseStamped> poses;

  static Path $prototype = Path();
  Path({ 
    Header? header,
    List<PoseStamped>? poses,
  }):
  this.header = header ?? Header(),
  this.poses = poses ?? [];

  @override
  Path call({ 
    Header? header,
    List<PoseStamped>? poses,
  }) => Path(
  header: header,
  poses: poses,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Path
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [poses]
    // Serialize the length for message field [poses]
    writer.writeUint32(poses.length);
    poses.forEach((val) {
      val.serialize(writer);
    });
  }

  @override
  Path deserialize(ByteDataReader reader) {
    //deserializes a message object of type Path
    final data = Path();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [poses]
    {
      // Deserialize array length for message field [poses]
      final len = reader.readInt32();
      data.poses = List.generate(len, (_) => PoseStamped.$prototype.deserialize(reader));
    }
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    poses.forEach((val) {
      length += val.getMessageSize();
    });
    return length + 4;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'nav_msgs/Path';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '6227e2b7e9cce15051f669a5e197bbf7';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''#An array of poses that represents a Path for a robot to follow
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

