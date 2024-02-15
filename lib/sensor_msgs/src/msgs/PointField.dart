// Auto-generated. Do not edit!

// Updated: Thu Feb 15 10:07:37 2024

// (in-package sensor_msgs.msg)


// ignore_for_file: type=lint
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class PointField extends RosMessage<PointField> {
  String name;

  int offset;

  int datatype;

  int count;

  static PointField $prototype = PointField();
  PointField({ 
    String? name,
    int? offset,
    int? datatype,
    int? count,
  }):
  this.name = name ?? '',
  this.offset = offset ?? 0,
  this.datatype = datatype ?? 0,
  this.count = count ?? 0;

  @override
  PointField call({ 
    String? name,
    int? offset,
    int? datatype,
    int? count,
  }) => PointField(
  name: name,
  offset: offset,
  datatype: datatype,
  count: count,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type PointField
    // Serialize message field [name]
    writer.writeString(name);
    // Serialize message field [offset]
    writer.writeUint32(offset);
    // Serialize message field [datatype]
    writer.writeUint8(datatype);
    // Serialize message field [count]
    writer.writeUint32(count);
  }

  @override
  PointField deserialize(ByteDataReader reader) {
    //deserializes a message object of type PointField
    final data = PointField();
    // Deserialize message field [name]
    data.name = reader.readString();
    // Deserialize message field [offset]
    data.offset = reader.readUint32();
    // Deserialize message field [datatype]
    data.datatype = reader.readUint8();
    // Deserialize message field [count]
    data.count = reader.readUint32();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(name).length;
    return length + 13;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'sensor_msgs/PointField';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '268eacb2962780ceac86cbd17e328150';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# This message holds the description of one point entry in the
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

// Constants for message
  static const int INT8 = 1;
  static const int UINT8 = 2;
  static const int INT16 = 3;
  static const int UINT16 = 4;
  static const int INT32 = 5;
  static const int UINT32 = 6;
  static const int FLOAT32 = 7;
  static const int FLOAT64 = 8;

}

