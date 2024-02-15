// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';
import 'package:std_msgs/msgs.dart';
import 'PointField.dart';

//-----------------------------------------------------------

class PointCloud2 extends RosMessage<PointCloud2> {
  Header header;

  int height;

  int width;

  List<PointField> fields;

  bool is_bigendian;

  int point_step;

  int row_step;

  List<int> data;

  bool is_dense;

  static PointCloud2 $prototype = PointCloud2();
  PointCloud2({ 
    Header? header,
    int? height,
    int? width,
    List<PointField>? fields,
    bool? is_bigendian,
    int? point_step,
    int? row_step,
    List<int>? data,
    bool? is_dense,
  }):
  this.header = header ?? Header(),
  this.height = height ?? 0,
  this.width = width ?? 0,
  this.fields = fields ?? [],
  this.is_bigendian = is_bigendian ?? false,
  this.point_step = point_step ?? 0,
  this.row_step = row_step ?? 0,
  this.data = data ?? [],
  this.is_dense = is_dense ?? false;

  @override
  PointCloud2 call({ 
    Header? header,
    int? height,
    int? width,
    List<PointField>? fields,
    bool? is_bigendian,
    int? point_step,
    int? row_step,
    List<int>? data,
    bool? is_dense,
  }) => PointCloud2(
  header: header,
  height: height,
  width: width,
  fields: fields,
  is_bigendian: is_bigendian,
  point_step: point_step,
  row_step: row_step,
  data: data,
  is_dense: is_dense,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PointCloud2
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [height]
    writer.writeUint32(height);
    // Serialize message field [width]
    writer.writeUint32(width);
    // Serialize message field [fields]
    // Serialize the length for message field [fields]
    writer.writeUint32(fields.length);
    fields.forEach((val) {
      val.serialize(writer);
    });
    // Serialize message field [is_bigendian]
    writer.writeUint8(is_bigendian == false ? 0 : 1);
    // Serialize message field [point_step]
    writer.writeUint32(point_step);
    // Serialize message field [row_step]
    writer.writeUint32(row_step);
    // Serialize message field [data]
    writer.writeArray<int>(data, (val) => writer.writeUint8(val), specArrayLen: null);
    // Serialize message field [is_dense]
    writer.writeUint8(is_dense == false ? 0 : 1);
  }

  @override
  PointCloud2 deserialize(ByteDataReader reader) {
    //deserializes a message object of type PointCloud2
    final data = PointCloud2();
    // Deserialize message field [header]
    data.header = Header.$prototype.deserialize(reader);
    // Deserialize message field [height]
    data.height = reader.readUint32();
    // Deserialize message field [width]
    data.width = reader.readUint32();
    // Deserialize message field [fields]
    {
      // Deserialize array length for message field [fields]
      final len = reader.readInt32();
      data.fields = List.generate(len, (_) => PointField.$prototype.deserialize(reader));
    }
    // Deserialize message field [is_bigendian]
    data.is_bigendian = reader.readUint8() != 0;
    // Deserialize message field [point_step]
    data.point_step = reader.readUint32();
    // Deserialize message field [row_step]
    data.row_step = reader.readUint32();
    // Deserialize message field [data]
    data.data = reader.readArray<int>(() => reader.readUint8(), arrayLen: null);
    // Deserialize message field [is_dense]
    data.is_dense = reader.readUint8() != 0;
    return data;
  }

  int getMessageSize() {
    int length = 0;
    length += header.getMessageSize();
    fields.forEach((val) {
      length += val.getMessageSize();
    });
    length += data.length;
    return length + 26;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/PointCloud2';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '1158d486dd51d683ce2f1be655c3c181';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the "fields" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

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
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

''';
  }

}

